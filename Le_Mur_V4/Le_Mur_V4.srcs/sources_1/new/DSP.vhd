
--------------------------------------------------------------------------------
-- PROJET : LE MUR
-- MODULE : DSP
-- CARTE  : Zybo Z7-20
--------------------------------------------------------------------------------
--
-- DESCRIPTION GENERALE
--
-- Ce module determine si le joueur peut passer dans le mur.
--
-- Il utilise deux signaux de detection deja calcules :
--
--   is_pixel_joueur : 1 si le pixel appartient au joueur
--   is_pixel_mur    : 1 si le pixel appartient au mur
--
-- Le DSP possede deux compteurs :
--
--   player_count    : nombre de pixels du joueur
--   collision_count : nombre de pixels en collision
--
-- Les compteurs accumulent les detections pendant une image.
--
-- A chaque nouvelle image, le DSP :
--
--   1. Verifie si le joueur est suffisamment present
--   2. Verifie si les collisions restent sous le seuil
--   3. Enregistre le resultat PASS / FAIL
--   4. Remet les compteurs a zero
--
-- Les resultats restent stables entre deux images.
--
-- IMPORTANT :
--   - Aucun calcul de coordonnees X/Y
--   - Aucun tableau de 128 compteurs
--   - Aucune variable VHDL
--   - Aucune memoire BRAM necessaire
--
--------------------------------------------------------------------------------
-- SYNCHRONISATION
--
-- clk_pixel : horloge du flux video
-- VDE       : indique un pixel actif
-- VSYNC     : delimite les images
-- HSYNC     : synchronisation horizontale
--
-- On suppose que VSYNC marque le debut d'une image
-- par un front montant.
--
-- Le flux video et les signaux de detection doivent
-- correspondre au meme pixel et au meme cycle d'horloge.
--
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


--------------------------------------------------------------------------------
-- ENTITY
--------------------------------------------------------------------------------

entity DSP is

    generic (

        ------------------------------------------------------------------------
        -- SEUIL MINIMAL DE PRESENCE
        --
        -- Nombre minimal de pixels detectes pour considerer
        -- que le joueur est present dans l'image.
        --
        -- Exemple :
        --   MIN_PLAYER_PIXELS = 1000
        --
        -- Si moins de 1000 pixels sont detectes :
        --   FAIL, meme en absence de collision.
        ------------------------------------------------------------------------

        MIN_PLAYER_PIXELS : natural := 1000;


        ------------------------------------------------------------------------
        -- SEUIL MAXIMAL DE COLLISION
        --
        -- Nombre maximal de pixels en collision autorises.
        --
        -- Exemple :
        --   MAX_COLLISION_PIXELS = 500
        --
        -- Si 500 pixels ou moins sont en collision :
        --   La condition de collision est respectee.
        --
        -- Si plus de 500 pixels sont en collision :
        --   FAIL.
        --
        -- ATTENTION :
        -- Les valeurs sont des points de depart experimentaux.
        ------------------------------------------------------------------------

        MAX_COLLISION_PIXELS : natural := 500;


        ------------------------------------------------------------------------
        -- LARGEUR DES COMPTEURS
        --
        -- 21 bits permettent de compter jusqu'a 2 097 151.
        --
        -- C'est suffisant pour une image 1600 x 900.
        ------------------------------------------------------------------------

        COUNT_BITS : positive := 21

    );

    port (

        ------------------------------------------------------------------------
        -- HORLOGE ET RESET
        --
        -- Reset synchrone actif a 1.
        ------------------------------------------------------------------------

        clk_pixel : in STD_LOGIC;
        reset     : in STD_LOGIC;


        ------------------------------------------------------------------------
        -- SYNCHRONISATION VIDEO
        --
        -- VDE :
        --   1 = pixel actif
        --   0 = blanking / pixel ignore
        --
        -- VSYNC :
        --   Utilise pour detecter une nouvelle image.
        --
        -- HSYNC :
        --   Disponible pour la synchronisation horizontale.
        --   Il n'est pas necessaire au comptage actuel.
        ------------------------------------------------------------------------

        vde   : in STD_LOGIC;
        vsync : in STD_LOGIC;
        hsync : in STD_LOGIC;


        ------------------------------------------------------------------------
        -- DETECTION DES PIXELS
        --
        -- Provenance :
        --
        -- is_pixel_joueur -> detection_joueur
        -- is_pixel_mur    -> Presence_mur
        ------------------------------------------------------------------------

        is_pixel_joueur : in STD_LOGIC;
        is_pixel_mur    : in STD_LOGIC;


        ------------------------------------------------------------------------
        -- RESULTAT PASS / FAIL
        --
        -- q_pass = 1 :
        --   Joueur present et collisions sous le seuil.
        --
        -- q_pass = 0 :
        --   Joueur absent ou trop de collisions.
        ------------------------------------------------------------------------

        q_pass : out STD_LOGIC;


        ------------------------------------------------------------------------
        -- PRESENCE DU JOUEUR
        --
        -- 1 si le seuil de presence a ete atteint.
        ------------------------------------------------------------------------

        player_present : out STD_LOGIC;


        ------------------------------------------------------------------------
        -- RESULTAT VALIDE
        --
        -- Impulsion de 1 cycle lorsque le DSP termine
        -- l'evaluation d'une image complete.
        ------------------------------------------------------------------------

        result_valid : out STD_LOGIC;


        ------------------------------------------------------------------------
        -- SORTIES DE DIAGNOSTIC
        --
        -- Ces sorties permettent de voir les compteurs
        -- de la derniere image analysee.
        --
        -- Elles sont facultatives pour la FSM.
        ------------------------------------------------------------------------

        player_pixels : out STD_LOGIC_VECTOR(
            COUNT_BITS-1 downto 0
        );

        collision_pixels : out STD_LOGIC_VECTOR(
            COUNT_BITS-1 downto 0
        )

    );

end DSP;


--------------------------------------------------------------------------------
-- ARCHITECTURE
--------------------------------------------------------------------------------

architecture Behavioral of DSP is

    ---------------------------------------------------------------------------
    -- TYPE DES COMPTEURS
    --
    -- unsigned permet les additions et comparaisons numeriques.
    ---------------------------------------------------------------------------

    subtype count_t is unsigned(COUNT_BITS-1 downto 0);


    ---------------------------------------------------------------------------
    -- COMPTEURS ACTIFS
    --
    -- Ces compteurs sont incrementes pendant l'image courante.
    --
    -- player_count :
    --   Nombre de pixels appartenant au joueur.
    --
    -- collision_count :
    --   Nombre de pixels appartenant au joueur ET au mur.
    ---------------------------------------------------------------------------

    signal player_count : count_t := (others => '0');

    signal collision_count : count_t := (others => '0');


    ---------------------------------------------------------------------------
    -- REGISTRES DE RESULTATS
    --
    -- Memorisation des resultats de la derniere image complete.
    ---------------------------------------------------------------------------

    signal player_pixels_reg : count_t := (others => '0');

    signal collision_pixels_reg : count_t := (others => '0');

    signal pass_reg    : STD_LOGIC := '0';
    signal present_reg : STD_LOGIC := '0';
    signal valid_reg   : STD_LOGIC := '0';


    ---------------------------------------------------------------------------
    -- SYNCHRONISATION VERTICALE
    --
    -- vsync_prev permet de detecter un front montant.
    --
    -- frame_seen empeche d'evaluer une premiere image
    -- potentiellement incomplete apres le reset.
    ---------------------------------------------------------------------------

    signal vsync_prev : STD_LOGIC := '0';
    signal frame_seen : STD_LOGIC := '0';

    signal frame_start : STD_LOGIC;


    ---------------------------------------------------------------------------
    -- DETECTION DES COLLISIONS AU PIXEL
    --
    -- collision_pixel = 1 lorsque :
    --   is_pixel_joueur = 1
    --   ET is_pixel_mur = 1
    ---------------------------------------------------------------------------

    signal collision_pixel : STD_LOGIC;


    ---------------------------------------------------------------------------
    -- CONDITIONS DE REUSSITE
    --
    -- Conditions calculees a partir des compteurs actifs.
    ---------------------------------------------------------------------------

    signal presence_ok  : STD_LOGIC;
    signal collision_ok : STD_LOGIC;


begin

    ---------------------------------------------------------------------------
    -- VERIFICATION DES PARAMETRES
    --
    -- On s'assure que les seuils peuvent etre representes
    -- par les compteurs.
    ---------------------------------------------------------------------------

    assert MIN_PLAYER_PIXELS < 2**COUNT_BITS
        report "DSP : MIN_PLAYER_PIXELS depasse le compteur"
        severity failure;

    assert MAX_COLLISION_PIXELS < 2**COUNT_BITS
        report "DSP : MAX_COLLISION_PIXELS depasse le compteur"
        severity failure;


    ---------------------------------------------------------------------------
    -- ETAPE 1 : COLLISION ENTRE JOUEUR ET MUR
    --
    -- Operation AND entre les deux signaux de detection.
    --
    -- Le resultat concerne uniquement le pixel actuel.
    ---------------------------------------------------------------------------

    collision_pixel <= is_pixel_joueur and is_pixel_mur;


    ---------------------------------------------------------------------------
    -- ETAPE 2 : COMPARAISON DES COMPTEURS AUX SEUILS
    --
    -- presence_ok = 1 :
    --   Suffisamment de pixels du joueur sont detectes.
    --
    -- collision_ok = 1 :
    --   Le nombre de collisions ne depasse pas la limite.
    --
    -- Ces comparaisons sont combinatoires.
    ---------------------------------------------------------------------------
    
    presence_ok <= '1' when player_count >= to_unsigned(MIN_PLAYER_PIXELS, COUNT_BITS) else '0';
    
    collision_ok <= '1' when collision_count <= to_unsigned(MAX_COLLISION_PIXELS, COUNT_BITS) else '0';


    ---------------------------------------------------------------------------
    -- ETAPE 3 : DETECTION DU DEBUT D'UNE IMAGE
    --
    -- Un front montant de VSYNC indique une nouvelle image.
    ---------------------------------------------------------------------------

    frame_start <= '1'
        when vsync = '1' and vsync_prev = '0'
        else '0';


    ---------------------------------------------------------------------------
    -- ETAPE 4 : PROCESSUS SEQUENTIEL
    --
    -- Un seul processus synchrone controle les compteurs
    -- et l'enregistrement des resultats.
    ---------------------------------------------------------------------------

    process(clk_pixel)
    begin

        if rising_edge(clk_pixel) then

            --------------------------------------------------------------------
            -- RESET
            --------------------------------------------------------------------

            if reset = '1' then

                player_count    <= (others => '0');
                collision_count <= (others => '0');

                player_pixels_reg    <= (others => '0');
                collision_pixels_reg <= (others => '0');

                pass_reg    <= '0';
                present_reg <= '0';
                valid_reg   <= '0';

                vsync_prev <= '0';
                frame_seen <= '0';


            else

                ----------------------------------------------------------------
                -- MEMORISATION DE VSYNC
                --
                -- Utilisee au cycle suivant pour la detection
                -- du front montant.
                ----------------------------------------------------------------

                vsync_prev <= vsync;


                ----------------------------------------------------------------
                -- result_valid = 0 PAR DEFAUT
                --
                -- L'impulsion sera activee uniquement lors
                -- de la validation d'une nouvelle image.
                ----------------------------------------------------------------

                valid_reg <= '0';


                ----------------------------------------------------------------
                -- ETAPE 5 : FIN DE L'IMAGE PRECEDENTE
                --
                -- Au front montant de VSYNC :
                --
                --   1. Memoriser les compteurs
                --   2. Evaluer PASS / FAIL
                --   3. Produire result_valid
                --   4. Reinitialiser les compteurs
                ----------------------------------------------------------------

                if frame_start = '1' then

                    ------------------------------------------------------------
                    -- On ignore la premiere image apres reset
                    -- car elle peut etre incomplete.
                    ------------------------------------------------------------

                    if frame_seen = '1' then

                        --------------------------------------------------------
                        -- MEMORISER LES RESULTATS
                        --
                        -- Ces sorties demeurent constantes
                        -- jusqu'a l'image suivante.
                        --------------------------------------------------------

                        player_pixels_reg <= player_count;

                        collision_pixels_reg <= collision_count;


                        --------------------------------------------------------
                        -- VERIFICATION DE LA PRESENCE
                        --------------------------------------------------------

                        present_reg <= presence_ok;


                        --------------------------------------------------------
                        -- DECISION PASS / FAIL
                        --
                        -- PASS si les deux conditions sont vraies.
                        --------------------------------------------------------

                        pass_reg <= presence_ok and collision_ok;


                        --------------------------------------------------------
                        -- SIGNALER UN NOUVEAU RESULTAT
                        --------------------------------------------------------

                        valid_reg <= '1';

                    end if;


                    ------------------------------------------------------------
                    -- PREPARATION DE L'IMAGE SUIVANTE
                    ------------------------------------------------------------

                    player_count    <= (others => '0');
                    collision_count <= (others => '0');

                    frame_seen <= '1';

                ----------------------------------------------------------------
                -- ETAPE 6 : COMPTAGE DES PIXELS
                --
                -- On compte uniquement lorsque :
                --
                --   VDE = 1
                --   Une premiere image a ete synchronisee
                --
                -- Les deux compteurs sont independants.
                ----------------------------------------------------------------

                elsif vde = '1' and frame_seen = '1' then


                    ------------------------------------------------------------
                    -- COMPTEUR DE PRESENCE
                    --
                    -- Incrementer si le pixel est detecte
                    -- comme appartenant au joueur.
                    --
                    -- Le compteur sature a sa valeur maximale
                    -- pour eviter un debordement.
                    ------------------------------------------------------------

                    if is_pixel_joueur = '1' then

                        if player_count /= (player_count'range => '1') then

                            player_count <= player_count + 1;

                        end if;

                    end if;


                    ------------------------------------------------------------
                    -- COMPTEUR DE COLLISION
                    --
                    -- Incrementer si le meme pixel appartient
                    -- au joueur ET au mur.
                    ------------------------------------------------------------

                    if collision_pixel = '1' then

                        if collision_count /=
                           (collision_count'range => '1') then

                            collision_count <= collision_count + 1;

                        end if;

                    end if;

                end if;

            end if;

        end if;

    end process;


    ---------------------------------------------------------------------------
    -- ETAPE 7 : ASSIGNATION DES SORTIES
    --
    -- Les sorties correspondent aux resultats enregistres,
    -- et non aux compteurs en cours d'accumulation.
    ---------------------------------------------------------------------------

    q_pass         <= pass_reg;
    player_present <= present_reg;
    result_valid   <= valid_reg;

    player_pixels    <= std_logic_vector(player_pixels_reg);
    collision_pixels <= std_logic_vector(collision_pixels_reg);

end Behavioral;