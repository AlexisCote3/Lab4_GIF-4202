
--------------------------------------------------------------------------------
-- PROJET : LE MUR
-- MODULE : DSP
-- CARTE  : Zybo Z7-20 (Zynq-7000)
--------------------------------------------------------------------------------
--
-- DESCRIPTION GENERALE
--
-- Ce module analyse les images provenant d'une camera HDMI afin de
-- determiner si un joueur peut passer a travers un mur virtuel.
--
-- L'ecran est divise en une grille configurable :
--
--     GRID_COLS = 16 colonnes
--     GRID_ROWS = 8 lignes
--
-- La configuration par defaut produit donc :
--
--     16 x 8 = 128 zones
--
-- Chaque zone est representee par un bit dans deux vecteurs :
--
--     wall_mask(i)   : 1 = mur, 0 = trou
--     player_mask(i) : 1 = joueur detecte, 0 = zone libre
--
-- Le joueur reussit si :
--
--     1. Il est detecte dans au moins une zone
--     2. Aucune zone occupee par le joueur ne contient de mur
--
--------------------------------------------------------------------------------
--
-- PRINCIPE DE DETECTION
--
-- Pour chaque pixel valide de la camera :
--
--     1. Recuperer ses coordonnees X et Y
--     2. Effectuer un echantillonnage spatial
--     3. Calculer sa luminosite a partir de R, G et B
--     4. Determiner si le pixel est suffisamment sombre
--     5. Trouver la zone du quadrillage contenant le pixel
--     6. Incrementer le compteur de cette zone
--
-- A la fin de l'image :
--
--     1. Examiner les compteurs des zones
--     2. Generer le vecteur player_mask
--     3. Verifier la presence du joueur
--     4. Comparer player_mask avec wall_mask
--     5. Mettre a jour q_pass
--     6. Remettre les compteurs a zero pour l'image suivante
--
--------------------------------------------------------------------------------
--
-- HYPOTHESES ET LIMITATIONS
--
-- 1. Le fond reel de la camera doit etre suffisamment clair.
--    Les pixels sombres sont consideres comme appartenant au joueur.
--
-- 2. Les coordonnees X/Y commencent a zero dans la zone active.
--
-- 3. Les signaux RGB, X, Y et VDE sont synchronises sur pixel_clk.
--
-- 4. Un front montant de vsync_in indique une nouvelle image.
--    Cette hypothese doit etre verifiee avec le bloc dvi2rgb.
--
-- 5. wall_mask doit rester stable pendant la comparaison.
--    Le generateur de mur devrait modifier le masque uniquement
--    lorsque le jeu change de niveau.
--
-- 6. Le module travaille dans le domaine de pixel_clk.
--    Si la FSM utilise une autre horloge, une synchronisation
--    entre domaines d'horloge sera necessaire.
--
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


--------------------------------------------------------------------------------
-- ENTITY : DSP
--
-- Cette section definit :
--     - Les parametres configurables du module (generic)
--     - Les entrees provenant des autres modules
--     - Les sorties utilisees par la FSM et le compositeur
--------------------------------------------------------------------------------

entity DSP is

    generic (

        ------------------------------------------------------------------------
        -- RESOLUTION DE L'IMAGE
        --
        -- Nombre de pixels dans la zone active de l'image.
        -- Ces valeurs doivent correspondre a la resolution de la camera.
        ------------------------------------------------------------------------

        IMG_WIDTH  : positive := 1600;
        IMG_HEIGHT : positive := 900;


        ------------------------------------------------------------------------
        -- DIMENSIONS DU QUADRILLAGE
        --
        -- Configuration par defaut : 16 x 8 = 128 zones.
        --
        -- Pour modifier la grille, il suffit de modifier ces parametres.
        -- La largeur de wall_mask et player_mask s'ajuste automatiquement.
        --
        -- IMPORTANT :
        -- Le generateur de mur doit utiliser les memes dimensions.
        ------------------------------------------------------------------------

        GRID_COLS : positive := 16;
        GRID_ROWS : positive := 8;


        ------------------------------------------------------------------------
        -- ECHANTILLONNAGE SPATIAL
        --
        -- SAMPLE_STEP = 8 :
        --
        -- On examine les pixels dont :
        --
        --     X est un multiple de 8
        --     Y est un multiple de 8
        --
        -- On traite donc environ 1 pixel sur 64.
        --
        -- Cela reduit le nombre de pixels analyses tout en conservant
        -- une representation approximative de la silhouette du joueur.
        --
        -- SAMPLE_STEP = 1 :
        -- Tous les pixels sont analyses.
        ------------------------------------------------------------------------

        SAMPLE_STEP : positive := 8;


        ------------------------------------------------------------------------
        -- SEUIL DE LUMINOSITE
        --
        -- Chaque composante RGB est codee sur 8 bits (0 a 255).
        --
        -- On calcule :
        --
        --     luminosite = R + G + B
        --
        -- Le pixel est considere sombre lorsque :
        --
        --     luminosite < 3 * DARK_THRESH
        --
        -- Exemple avec DARK_THRESH = 100 :
        --
        --     R + G + B < 300
        --
        -- Un pixel noir (0,0,0) sera detecte.
        -- Un pixel blanc (255,255,255) ne le sera pas.
        --
        -- Ce seuil pourra etre ajuste experimentalement.
        ------------------------------------------------------------------------

        DARK_THRESH : natural := 100;


        ------------------------------------------------------------------------
        -- SEUIL DE PRESENCE DANS UNE ZONE
        --
        -- Une zone est consideree occupee lorsqu'au moins MIN_PIXELS
        -- pixels sombres echantillonnes ont ete detectes.
        --
        -- Exemple :
        --
        --     MIN_PIXELS = 12
        --
        -- Une zone avec 11 pixels sombres reste a 0.
        -- Une zone avec 12 pixels sombres passe a 1.
        --
        -- Cette methode reduit l'effet des pixels isoles.
        ------------------------------------------------------------------------

        MIN_PIXELS : positive := 12;


        ------------------------------------------------------------------------
        -- NOMBRE DE BITS PAR COMPTEUR
        --
        -- ACC_BITS = 4 :
        --
        -- Chaque compteur peut representer les valeurs 0 a 15.
        --
        -- Avec MIN_PIXELS = 12, quatre bits sont suffisants.
        --
        -- Pour 128 zones :
        --
        --     128 x 4 = 512 bits de stockage
        --
        -- Les compteurs sont saturants : ils ne depassent jamais
        -- MIN_PIXELS.
        ------------------------------------------------------------------------

        ACC_BITS : positive := 4

    );

    port (

        ------------------------------------------------------------------------
        -- HORLOGE ET RESET
        --
        -- pixel_clk :
        -- Horloge associee au flux video entrant.
        --
        -- reset :
        -- Reset synchrone actif a 1.
        ------------------------------------------------------------------------

        pixel_clk : in STD_LOGIC;
        reset     : in STD_LOGIC;


        ------------------------------------------------------------------------
        -- IMAGE PROVENANT DE LA CAMERA
        --
        -- rgb_in[23:16] = rouge
        -- rgb_in[15:8]  = vert
        -- rgb_in[7:0]   = bleu
        --
        -- vde_in :
        -- Indique qu'un pixel RGB est valide et appartient
        -- a la zone active de l'image.
        --
        -- vsync_in :
        -- Signal de synchronisation verticale.
        ------------------------------------------------------------------------

        rgb_in   : in STD_LOGIC_VECTOR(23 downto 0);
        vde_in   : in STD_LOGIC;
        vsync_in : in STD_LOGIC;


        ------------------------------------------------------------------------
        -- COORDONNEES DU PIXEL ACTUEL
        --
        -- Ces signaux proviennent du module COMPTEUR XY.
        --
        -- Exemple pour une image de 1600 x 900 :
        --
        --     pixel_x = 0 a 1599
        --     pixel_y = 0 a 899
        --
        -- Les valeurs sont codees sur 12 bits.
        ------------------------------------------------------------------------

        pixel_x : in STD_LOGIC_VECTOR(11 downto 0);
        pixel_y : in STD_LOGIC_VECTOR(11 downto 0);


        ------------------------------------------------------------------------
        -- MASQUE DU MUR
        --
        -- Vecteur provenant du GENERATEUR DE MUR.
        --
        -- Chaque bit correspond a une zone du quadrillage.
        --
        --     1 = mur
        --     0 = trou
        --
        -- Convention d'indexation :
        --
        --     index = ligne * GRID_COLS + colonne
        --
        -- Le bit 0 correspond au coin superieur gauche.
        ------------------------------------------------------------------------

        wall_mask : in STD_LOGIC_VECTOR(
            GRID_COLS*GRID_ROWS-1 downto 0
        );


        ------------------------------------------------------------------------
        -- MASQUE DU JOUEUR
        --
        -- Vecteur produit par le DSP.
        --
        --     1 = presence detectee
        --     0 = absence detectee
        --
        -- Le masque est mis a jour une fois par image complete.
        ------------------------------------------------------------------------

        player_mask : out STD_LOGIC_VECTOR(
            GRID_COLS*GRID_ROWS-1 downto 0
        );


        ------------------------------------------------------------------------
        -- PRESENCE DU JOUEUR
        --
        -- 1 = au moins une zone contient le joueur
        -- 0 = aucune zone ne contient le joueur
        ------------------------------------------------------------------------

        player_present : out STD_LOGIC;


        ------------------------------------------------------------------------
        -- RESULTAT DE LA COMPARAISON
        --
        -- q_pass = 1 :
        -- Le joueur est present et ne touche aucune zone du mur.
        --
        -- q_pass = 0 :
        -- Le joueur est absent OU touche le mur.
        ------------------------------------------------------------------------

        q_pass : out STD_LOGIC;


        ------------------------------------------------------------------------
        -- VALIDITE DU RESULTAT
        --
        -- result_valid produit une impulsion d'un cycle pixel_clk
        -- lorsqu'une nouvelle image vient d'etre analysee.
        --
        -- La FSM peut utiliser cette impulsion pour savoir
        -- qu'un nouveau resultat est disponible.
        --
        -- q_pass et player_mask restent stables entre deux
        -- impulsions result_valid.
        ------------------------------------------------------------------------

        result_valid : out STD_LOGIC

    );

end DSP;


--------------------------------------------------------------------------------
-- ARCHITECTURE : Behavioral
--
-- Contient :
--     - Les constantes internes
--     - Les compteurs de zones
--     - Les registres de sortie
--     - Le processus de traitement video
--------------------------------------------------------------------------------

architecture Behavioral of DSP is


    ----------------------------------------------------------------------------
    -- CONSTANTE : N_ZONES
    --
    -- Nombre total de zones dans le quadrillage.
    --
    -- Par defaut :
    --
    --     N_ZONES = 16 * 8 = 128
    ----------------------------------------------------------------------------

    constant N_ZONES : positive := GRID_COLS * GRID_ROWS;


    ----------------------------------------------------------------------------
    -- TYPE : count_t
    --
    -- Definit le format d'un compteur.
    --
    -- Un compteur est un entier non signe sur ACC_BITS bits.
    --
    -- Avec ACC_BITS = 4 :
    --
    --     count_t = unsigned(3 downto 0)
    ----------------------------------------------------------------------------

    subtype count_t is unsigned(ACC_BITS-1 downto 0);


    ----------------------------------------------------------------------------
    -- TYPE : count_array_t
    --
    -- Tableau contenant un compteur par zone.
    --
    -- Avec N_ZONES = 128 :
    --
    --     zone_counts(0)   = compteur de la zone 0
    --     zone_counts(1)   = compteur de la zone 1
    --     ...
    --     zone_counts(127) = compteur de la zone 127
    ----------------------------------------------------------------------------

    type count_array_t is array (0 to N_ZONES-1) of count_t;


    ----------------------------------------------------------------------------
    -- SIGNAL : zone_counts
    --
    -- Tableau des compteurs de pixels sombres.
    --
    -- Tous les compteurs commencent a zero.
    --
    -- Les compteurs sont remis a zero a chaque nouvelle image.
    ----------------------------------------------------------------------------

    signal zone_counts : count_array_t :=
        (others => (others => '0'));


    ----------------------------------------------------------------------------
    -- SIGNAL : vsync_prev
    --
    -- Memorise la valeur precedente de vsync_in.
    --
    -- Permet de detecter un front montant :
    --
    --     vsync_prev = 0
    --     vsync_in   = 1
    --
    -- Cette condition indique le debut d'une nouvelle image.
    ----------------------------------------------------------------------------

    signal vsync_prev : STD_LOGIC := '0';


    ----------------------------------------------------------------------------
    -- SIGNAL : frame_seen
    --
    -- Indique si un premier front VSYNC a deja ete observe.
    --
    -- Apres un reset, la premiere image peut etre incomplete.
    --
    -- On attend donc un premier front VSYNC avant de commencer
    -- a accumuler les pixels, puis un second front pour publier
    -- un premier resultat.
    ----------------------------------------------------------------------------

    signal frame_seen : STD_LOGIC := '0';


    ----------------------------------------------------------------------------
    -- REGISTRES DE SORTIE
    --
    -- Ces registres conservent les resultats de la derniere
    -- image analysee.
    ----------------------------------------------------------------------------

    signal mask_reg : STD_LOGIC_VECTOR(N_ZONES-1 downto 0)
        := (others => '0');

    signal present_reg : STD_LOGIC := '0';
    signal pass_reg    : STD_LOGIC := '0';
    signal valid_reg   : STD_LOGIC := '0';


begin


    ----------------------------------------------------------------------------
    -- VERIFICATIONS DES PARAMETRES
    --
    -- Ces assertions permettent de detecter des configurations
    -- incompatibles pendant la simulation ou l'elaboration.
    ----------------------------------------------------------------------------

    assert IMG_WIDTH <= 4096 and IMG_HEIGHT <= 4096
        report "DSP : les coordonnees X/Y depassent 12 bits"
        severity failure;

    assert GRID_COLS <= IMG_WIDTH and GRID_ROWS <= IMG_HEIGHT
        report "DSP : la grille depasse la resolution de l'image"
        severity failure;

    assert DARK_THRESH <= 255
        report "DSP : DARK_THRESH doit etre entre 0 et 255"
        severity failure;

    assert MIN_PIXELS <= 2**ACC_BITS-1
        report "DSP : ACC_BITS est insuffisant pour MIN_PIXELS"
        severity failure;


    ----------------------------------------------------------------------------
    -- CONNEXION DES REGISTRES AUX SORTIES
    --
    -- Les sorties refletent les registres internes.
    --
    -- Ces assignations sont concurrentes : elles sont actives
    -- en permanence et ne dependent pas du processus principal.
    ----------------------------------------------------------------------------

    player_mask    <= mask_reg;
    player_present <= present_reg;
    q_pass         <= pass_reg;
    result_valid   <= valid_reg;


    ----------------------------------------------------------------------------
    -- PROCESSUS PRINCIPAL : TRAITEMENT VIDEO
    --
    -- Ce processus est synchrone sur le front montant de pixel_clk.
    --
    -- Il effectue deux operations principales :
    --
    -- A. Pendant une image :
    --      Compter les pixels sombres dans chaque zone.
    --
    -- B. Au debut de l'image suivante :
    --      Construire player_mask et calculer q_pass.
    --
    -- Les deux operations sont separees par VSYNC.
    ----------------------------------------------------------------------------

    process(pixel_clk)

        ------------------------------------------------------------------------
        -- Variables de position
        --
        -- x, y :
        -- Coordonnees du pixel actuel.
        --
        -- col, row :
        -- Colonne et ligne de la zone contenant ce pixel.
        --
        -- zone_idx :
        -- Indice du compteur associe a cette zone.
        ------------------------------------------------------------------------

        variable x        : integer;
        variable y        : integer;
        variable col      : integer;
        variable row      : integer;
        variable zone_idx : integer;


        ------------------------------------------------------------------------
        -- Variable de luminosite
        --
        -- Somme des composantes R, G et B.
        --
        -- Valeurs possibles :
        --
        --     Minimum = 0
        --     Maximum = 765
        ------------------------------------------------------------------------

        variable luminosity : integer;


        ------------------------------------------------------------------------
        -- Variables temporaires de comparaison
        --
        -- next_mask :
        -- Vecteur construit a partir des compteurs.
        --
        -- found_player :
        -- Indique si au moins une zone contient le joueur.
        --
        -- collision :
        -- Indique si au moins une zone du joueur touche le mur.
        --
        -- Les variables permettent de calculer toutes les conditions
        -- pendant le meme cycle de validation de l'image.
        ------------------------------------------------------------------------

        variable next_mask : STD_LOGIC_VECTOR(
            N_ZONES-1 downto 0
        );

        variable found_player : STD_LOGIC;
        variable collision    : STD_LOGIC;

    begin

        -- Toutes les operations se produisent au front montant
        -- de l'horloge video.
        if rising_edge(pixel_clk) then


            --------------------------------------------------------------------
            -- ETAPE 0 : RESET
            --
            -- Lorsque reset = 1 :
            --
            --     - Tous les compteurs sont remis a zero
            --     - Le masque du joueur est efface
            --     - La presence du joueur est remise a zero
            --     - q_pass est remis a zero
            --     - Le resultat est invalide
            --
            -- Le module attend ensuite une nouvelle image.
            --------------------------------------------------------------------

            if reset = '1' then

                zone_counts <= (others => (others => '0'));

                vsync_prev <= '0';
                frame_seen <= '0';

                mask_reg    <= (others => '0');
                present_reg <= '0';
                pass_reg    <= '0';
                valid_reg   <= '0';


            else


                ----------------------------------------------------------------
                -- ETAPE 1 : MEMORISER VSYNC
                --
                -- La valeur precedente de VSYNC sera utilisee
                -- au prochain cycle pour detecter un front montant.
                ----------------------------------------------------------------

                vsync_prev <= vsync_in;


                ----------------------------------------------------------------
                -- ETAPE 2 : VALEUR PAR DEFAUT DE result_valid
                --
                -- On force result_valid a zero a chaque cycle.
                --
                -- Il sera mis a 1 uniquement lorsque le resultat
                -- d'une nouvelle image complete est disponible.
                ----------------------------------------------------------------

                valid_reg <= '0';


                ----------------------------------------------------------------
                -- ETAPE 3 : DETECTION D'UNE NOUVELLE IMAGE
                --
                -- Un front montant de VSYNC est detecte lorsque :
                --
                --     vsync_in   = 1
                --     vsync_prev = 0
                --
                -- Ce front marque la fin de l'accumulation des pixels
                -- de l'image precedente et le debut de la suivante.
                ----------------------------------------------------------------

                if vsync_in = '1' and vsync_prev = '0' then


                    ------------------------------------------------------------
                    -- 3.1 : INITIALISATION DES VARIABLES TEMPORAIRES
                    --
                    -- On commence avec :
                    --
                    --     - Un masque du joueur vide
                    --     - Aucune presence detectee
                    --     - Aucune collision detectee
                    ------------------------------------------------------------

                    next_mask    := (others => '0');
                    found_player := '0';
                    collision    := '0';


                    ------------------------------------------------------------
                    -- 3.2 : ANALYSE DES COMPTEURS
                    --
                    -- On examine les N_ZONES compteurs.
                    --
                    -- Si un compteur a atteint MIN_PIXELS :
                    --
                    --     - La zone est consideree occupee
                    --     - Le bit correspondant est mis a 1
                    --     - On confirme la presence du joueur
                    --
                    -- On verifie egalement si cette zone contient
                    -- un mur.
                    --
                    -- IMPORTANT :
                    -- La boucle FOR est synthétisee en logique
                    -- materielle. Elle ne necessite pas 128 cycles
                    -- d'horloge pour examiner les 128 compteurs.
                    ------------------------------------------------------------

                    for i in 0 to N_ZONES-1 loop

                        -- Verification du nombre de pixels sombres
                        if zone_counts(i) >=
                           to_unsigned(MIN_PIXELS, ACC_BITS) then

                            -- La zone contient suffisamment
                            -- de pixels sombres.
                            next_mask(i) := '1';

                            -- Au moins une zone contient le joueur.
                            found_player := '1';

                            -- Si le mur occupe aussi cette zone,
                            -- une collision est detectee.
                            if wall_mask(i) = '1' then
                                collision := '1';
                            end if;

                        end if;

                    end loop;


                    ------------------------------------------------------------
                    -- 3.3 : VALIDATION DE L'IMAGE
                    --
                    -- On publie les resultats seulement si un premier
                    -- VSYNC avait deja ete observe.
                    --
                    -- Cela evite de traiter une image partielle
                    -- immediatement apres un reset.
                    ------------------------------------------------------------

                    if frame_seen = '1' then

                        -- Memoriser le masque du joueur.
                        mask_reg <= next_mask;

                        -- Memoriser la presence du joueur.
                        present_reg <= found_player;


                        --------------------------------------------------------
                        -- 3.4 : DECISION PASS / FAIL
                        --
                        -- PASS uniquement si :
                        --
                        --     found_player = 1
                        --     collision    = 0
                        --
                        -- Tous les autres cas donnent FAIL.
                        --
                        -- La condition de presence empeche un joueur
                        -- absent de reussir automatiquement.
                        --------------------------------------------------------

                        if found_player = '1' and
                           collision = '0' then

                            pass_reg <= '1';

                        else

                            pass_reg <= '0';

                        end if;


                        --------------------------------------------------------
                        -- 3.5 : SIGNALER UN NOUVEAU RESULTAT
                        --
                        -- result_valid = 1 pendant un seul cycle.
                        --
                        -- La FSM peut maintenant consulter q_pass.
                        --------------------------------------------------------

                        valid_reg <= '1';

                    end if;


                    ------------------------------------------------------------
                    -- 3.6 : PREPARATION DE L'IMAGE SUIVANTE
                    --
                    -- On indique qu'un premier VSYNC a ete observe.
                    --
                    -- Puis on remet tous les compteurs a zero.
                    --
                    -- IMPORTANT :
                    -- Les registres de sortie ne sont pas effaces.
                    -- Ils conservent le resultat precedent.
                    ------------------------------------------------------------

                    frame_seen <= '1';

                    zone_counts <= (others => (others => '0'));


                ----------------------------------------------------------------
                -- ETAPE 4 : TRAITEMENT DES PIXELS
                --
                -- Cette partie est executee pendant l'image.
                --
                -- Conditions :
                --
                --     vde_in = 1
                --     frame_seen = 1
                --
                -- On ignore les pixels invalides et les pixels
                -- recus avant la premiere synchronisation VSYNC.
                ----------------------------------------------------------------

                elsif vde_in = '1' and frame_seen = '1' then


                    ------------------------------------------------------------
                    -- 4.1 : LECTURE DES COORDONNEES
                    --
                    -- Conversion des vecteurs X et Y en entiers
                    -- pour faciliter les calculs de position.
                    ------------------------------------------------------------

                    x := to_integer(unsigned(pixel_x));
                    y := to_integer(unsigned(pixel_y));


                    ------------------------------------------------------------
                    -- 4.2 : VERIFICATION DES LIMITES
                    --
                    -- On s'assure que le pixel appartient bien
                    -- a la resolution active configuree.
                    --
                    -- Cela evite de calculer une zone invalide.
                    ------------------------------------------------------------

                    if x < IMG_WIDTH and y < IMG_HEIGHT then


                        --------------------------------------------------------
                        -- 4.3 : ECHANTILLONNAGE SPATIAL
                        --
                        -- On ne traite qu'une partie des pixels.
                        --
                        -- Exemple avec SAMPLE_STEP = 8 :
                        --
                        --     X = 0, 8, 16, 24, ...
                        --     Y = 0, 8, 16, 24, ...
                        --
                        -- Les autres pixels sont ignores.
                        --
                        -- L'operation MOD donne le reste
                        -- d'une division entiere.
                        --
                        -- x mod 8 = 0 signifie que x est
                        -- un multiple de 8.
                        --------------------------------------------------------

                        if (x mod SAMPLE_STEP = 0) and
                           (y mod SAMPLE_STEP = 0) then


                            ----------------------------------------------------
                            -- 4.4 : CALCUL DE LA LUMINOSITE
                            --
                            -- Extraction des trois composantes :
                            --
                            --     R = rgb_in(23 downto 16)
                            --     G = rgb_in(15 downto 8)
                            --     B = rgb_in(7 downto 0)
                            --
                            -- On additionne les trois valeurs.
                            --
                            -- Cette approximation evite d'utiliser
                            -- des multiplications pour calculer
                            -- une luminance ponderee.
                            ----------------------------------------------------

                            luminosity :=
                                to_integer(unsigned(
                                    rgb_in(23 downto 16))) +

                                to_integer(unsigned(
                                    rgb_in(15 downto 8))) +

                                to_integer(unsigned(
                                    rgb_in(7 downto 0)));


                            ----------------------------------------------------
                            -- 4.5 : DETECTION D'UN PIXEL SOMBRE
                            --
                            -- Si luminosity < 3 * DARK_THRESH :
                            --
                            -- Le pixel est potentiellement une
                            -- partie de la silhouette du joueur.
                            --
                            -- Sinon, il est ignore.
                            ----------------------------------------------------

                            if luminosity < 3 * DARK_THRESH then


                                ------------------------------------------------
                                -- 4.6 : CALCUL DE LA ZONE
                                --
                                -- Conversion des coordonnees X/Y
                                -- vers les coordonnees de la grille.
                                --
                                -- Formules :
                                --
                                -- col = X * GRID_COLS / IMG_WIDTH
                                -- row = Y * GRID_ROWS / IMG_HEIGHT
                                --
                                -- Les divisions sont entieres.
                                --
                                -- Exemple avec X = 250, Y = 300 :
                                --
                                -- col = 250 * 16 / 1600 = 2
                                -- row = 300 * 8 / 900   = 2
                                --
                                -- Le pixel se trouve dans :
                                --
                                --     colonne 2
                                --     ligne 2
                                ------------------------------------------------

                                col := (x * GRID_COLS) / IMG_WIDTH;
                                row := (y * GRID_ROWS) / IMG_HEIGHT;


                                ------------------------------------------------
                                -- 4.7 : CONVERSION VERS UN INDICE
                                --
                                -- Le quadrillage 2D est represente
                                -- par un vecteur 1D.
                                --
                                -- Formule :
                                --
                                -- index = row * GRID_COLS + col
                                --
                                -- Exemple :
                                --
                                --     row = 2
                                --     col = 2
                                --
                                --     index = 2 * 16 + 2 = 34
                                --
                                -- On doit donc incrementer
                                -- zone_counts(34).
                                ------------------------------------------------

                                zone_idx := row * GRID_COLS + col;


                                ------------------------------------------------
                                -- 4.8 : INCREMENTATION DU COMPTEUR
                                --
                                -- Chaque zone possede un compteur.
                                --
                                -- Si le compteur n'a pas encore atteint
                                -- MIN_PIXELS, il est incremente de 1.
                                --
                                -- Exemple :
                                --
                                --     0 -> 1 -> 2 -> ... -> 12
                                --
                                -- Lorsque 12 est atteint, on arrete
                                -- d'incrementer.
                                --
                                -- Cela empeche un debordement du compteur
                                -- et reduit la taille necessaire.
                                ------------------------------------------------

                                if zone_counts(zone_idx) <
                                   to_unsigned(MIN_PIXELS, ACC_BITS) then

                                    zone_counts(zone_idx) <=
                                        zone_counts(zone_idx) + 1;

                                end if;


                            end if; -- Fin du test de luminosite

                        end if; -- Fin de l'echantillonnage

                    end if; -- Fin de la verification des limites

                end if; -- Fin du traitement VSYNC / pixels

            end if; -- Fin du reset

        end if; -- Fin du front montant pixel_clk

    end process;

end Behavioral;
