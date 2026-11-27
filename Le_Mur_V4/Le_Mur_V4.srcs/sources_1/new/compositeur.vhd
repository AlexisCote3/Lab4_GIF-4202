-- ============================================================================
-- Projet GIF-4202 : LE MUR - Compositeur d'image
-- Cible : Zybo Z7-20 / flux HDMI RGB888 provenant de dvi2rgb
--
-- Le compositeur NE genere PAS : mur aleatoire, score, minuteur, decision DSP.
-- Il choisit simplement la couleur du pixel a afficher.
--
-- Le masque de mur est deja decode par Presence_mur, qui donne is_mur.
-- ATTENTION : la version Presence_mur du depot renvoie '1' pour les
-- cellules ou wall_mask = '1'. Compositeur_pc interprete ces cellules
-- comme des OUVERTURES; WALL_ONE_IS_OPENING vaut donc true par defaut.
-- Ajuster ce generic a false si is_pixel_mur signifie reellement 'mur'.
--
-- VHDL-93/2002 compatible; aucune variable / fonction utilisateur.
-- La sortie est enregistree avec une latence de 1 cycle pixel_clk.
-- IMPORTANT: pixel_x, pixel_y, rgb_in, de_in, hsync_in et vsync_in
-- doivent etre alignes SUR LE MEME pixel a l'entree du compositeur.
-- ============================================================================
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity compositeur is
    generic (
        SCREEN_WIDTH        : positive := 1600;
        SCREEN_HEIGHT       : positive := 900;
        WALL_ONE_IS_OPENING : boolean  := true;
        DEBUG_JOUEUR        : boolean  := false
    );
    port (
        pixel_clk         : in  std_logic;
        reset             : in  std_logic; -- actif a 1, synchrone

        -- Video du dvi2rgb
        rgb_in            : in  std_logic_vector(23 downto 0);
        de_in             : in  std_logic;
        hsync_in          : in  std_logic;
        vsync_in          : in  std_logic;

        -- Compteur X/Y externe partage avec le DSP
        pixel_x           : in  std_logic_vector(11 downto 0);
        pixel_y           : in  std_logic_vector(11 downto 0);

        -- Sorties des blocs Presence_mur et detection_joueur
        is_pixel_mur      : in  std_logic;
        is_pixel_joueur   : in  std_logic;

        -- Modes emis par game_state (FSM) :
        -- 000 accueil, 001 decompte 3/2/1/GO, 010 jeu,
        -- 011 reussite, 100 fin, 101 echec, 110 pause, 111 accueil.
        mode_ui           : in  std_logic_vector(2 downto 0);
        decompte_ui       : in  std_logic_vector(3 downto 0); -- 3,2,1,0=GO
        flash_on          : in  std_logic; -- bascule 0/1 pendant 3 secondes de resultat
        score_courant     : in  std_logic_vector(3 downto 0);
        temps_restant     : in  std_logic_vector(3 downto 0);
        score_dernier     : in  std_logic_vector(3 downto 0);
        record_personnel  : in  std_logic_vector(3 downto 0);

        -- Video vers rgb2dvi
        rgb_out           : out std_logic_vector(23 downto 0);
        de_out            : out std_logic;
        hsync_out         : out std_logic;
        vsync_out         : out std_logic
    );
end compositeur;

architecture RTL of compositeur is
    constant C_MUR        : std_logic_vector(23 downto 0) := x"E33E4B"; -- Rouge jeu/echec
    constant C_MUR_BLEU   : std_logic_vector(23 downto 0) := x"2668AE"; -- Etat par defaut
    constant C_MUR_VERT   : std_logic_vector(23 downto 0) := x"25C96A"; -- Reussite
    constant C_HUD     : std_logic_vector(23 downto 0) := x"14283D";
    -- Gris fonce neutre : rendu stable meme pendant un diagnostic RGB.
    constant C_PANEL   : std_logic_vector(23 downto 0) := x"202020";
    constant C_PAUSE   : std_logic_vector(23 downto 0) := x"22577B";
    constant C_WHITE   : std_logic_vector(23 downto 0) := x"FFFFFF";
    constant C_ACCENT  : std_logic_vector(23 downto 0) := x"FFD166";
    constant C_PLAYER  : std_logic_vector(23 downto 0) := x"00FF00";
    constant C_HIT     : std_logic_vector(23 downto 0) := x"FF00FF";

    signal px, py : integer range 0 to 4095;
    signal wall_pixel : std_logic; -- '1' signifie un pixel solide du mur
    signal rgb_pixel  : std_logic_vector(23 downto 0);

    -- Valeurs bornees a 99 (2 chiffres a l'ecran)
    signal score_num, dernier_num, record_num, temps_num : integer range 0 to 99;
    signal score_diz, score_uni, temps_diz, temps_uni : std_logic_vector(3 downto 0);
    signal dernier_diz, dernier_uni, record_diz, record_uni : std_logic_vector(3 downto 0);

    -- Pixels allumes par les chiffres de l'interface
    signal num_sc_d, num_sc_u, num_tm_d, num_tm_u : std_logic;
    signal num_last_d, num_last_u, num_rec_d, num_rec_u : std_logic;

    -- Pixels allumes par les textes de l'interface
    signal txt_score, txt_temps, txt_title, txt_start : std_logic;
    signal txt_dernier, txt_record, txt_pause, txt_fin : std_logic;
    signal txt_go, num_countdown, txt_reussi : std_logic;
begin
    px <= to_integer(unsigned(pixel_x));
    py <= to_integer(unsigned(pixel_y));

    -- Ne pas recalculer les zones du mur ici : Presence_mur le fait deja.
    -- Conformite avec le sens de la sortie is_mur du depot existant.
    wall_pixel <= not is_pixel_mur when WALL_ONE_IS_OPENING else is_pixel_mur;

    -- Conversion binaire -> BCD (2 chiffres): ports 4 bits de la FSM.
    score_num   <= to_integer(unsigned(score_courant));
    dernier_num <= to_integer(unsigned(score_dernier));
    record_num  <= to_integer(unsigned(record_personnel));
    temps_num   <= to_integer(unsigned(temps_restant));

    score_diz   <= std_logic_vector(to_unsigned(score_num / 10, 4));
    score_uni   <= std_logic_vector(to_unsigned(score_num mod 10, 4));
    temps_diz   <= std_logic_vector(to_unsigned(temps_num / 10, 4));
    temps_uni   <= std_logic_vector(to_unsigned(temps_num mod 10, 4));
    dernier_diz <= std_logic_vector(to_unsigned(dernier_num / 10, 4));
    dernier_uni <= std_logic_vector(to_unsigned(dernier_num mod 10, 4));
    record_diz  <= std_logic_vector(to_unsigned(record_num / 10, 4));
    record_uni  <= std_logic_vector(to_unsigned(record_num mod 10, 4));

    -- ========================================================================
    -- Sous-modules chiffres 7 segments (score / temps en jeu)
    -- ========================================================================
    SC_D : entity work.chiffre_7seg
        generic map (X_ORIGIN => 150, Y_ORIGIN => 12, SCALE => 3)
        port map (x => pixel_x, y => pixel_y, chiffre => score_diz, pixel_on => num_sc_d);
    SC_U : entity work.chiffre_7seg
        generic map (X_ORIGIN => 190, Y_ORIGIN => 12, SCALE => 3)
        port map (x => pixel_x, y => pixel_y, chiffre => score_uni, pixel_on => num_sc_u);
    TM_D : entity work.chiffre_7seg
        generic map (X_ORIGIN => SCREEN_WIDTH - 200, Y_ORIGIN => 12, SCALE => 3)
        port map (x => pixel_x, y => pixel_y, chiffre => temps_diz, pixel_on => num_tm_d);
    TM_U : entity work.chiffre_7seg
        generic map (X_ORIGIN => SCREEN_WIDTH - 160, Y_ORIGIN => 12, SCALE => 3)
        port map (x => pixel_x, y => pixel_y, chiffre => temps_uni, pixel_on => num_tm_u);

    -- Compte a rebours utilise a la place des chiffres du temps, dans le HUD.
    -- La FSM doit envoyer 3, 2, 1 puis 0 pour afficher GO !
    TM_DECOMPTE : entity work.chiffre_7seg
        generic map (X_ORIGIN => SCREEN_WIDTH - 160, Y_ORIGIN => 12, SCALE => 3)
        port map (x => pixel_x, y => pixel_y, chiffre => decompte_ui,
                  pixel_on => num_countdown);

    -- Sous-modules chiffres 7 segments (dernier score / record accueil)
    LAST_D : entity work.chiffre_7seg
        generic map (X_ORIGIN => SCREEN_WIDTH/4 - 45, Y_ORIGIN => SCREEN_HEIGHT/2 + 3, SCALE => 3)
        port map (x => pixel_x, y => pixel_y, chiffre => dernier_diz, pixel_on => num_last_d);
    LAST_U : entity work.chiffre_7seg
        generic map (X_ORIGIN => SCREEN_WIDTH/4 - 5, Y_ORIGIN => SCREEN_HEIGHT/2 + 3, SCALE => 3)
        port map (x => pixel_x, y => pixel_y, chiffre => dernier_uni, pixel_on => num_last_u);
    REC_D : entity work.chiffre_7seg
        generic map (X_ORIGIN => 3*SCREEN_WIDTH/4 - 45, Y_ORIGIN => SCREEN_HEIGHT/2 + 3, SCALE => 3)
        port map (x => pixel_x, y => pixel_y, chiffre => record_diz, pixel_on => num_rec_d);
    REC_U : entity work.chiffre_7seg
        generic map (X_ORIGIN => 3*SCREEN_WIDTH/4 - 5, Y_ORIGIN => SCREEN_HEIGHT/2 + 3, SCALE => 3)
        port map (x => pixel_x, y => pixel_y, chiffre => record_uni, pixel_on => num_rec_u);

    -- ========================================================================
    -- Sous-modules textes matriciels 5x7 (aucune memoire d'image)
    -- ========================================================================
    TXT_SC : entity work.texte_5x7
        generic map (TEXT => "SCORE", X_ORIGIN => 30, Y_ORIGIN => 20, SCALE => 2)
        port map (x => pixel_x, y => pixel_y, pixel_on => txt_score);
    TXT_TM : entity work.texte_5x7
        generic map (TEXT => "TEMPS", X_ORIGIN => SCREEN_WIDTH - 320, Y_ORIGIN => 20, SCALE => 2)
        port map (x => pixel_x, y => pixel_y, pixel_on => txt_temps);
    TXT_TITLE1 : entity work.texte_5x7
        generic map (TEXT => "LE MUR", X_ORIGIN => (SCREEN_WIDTH-180)/2, Y_ORIGIN => SCREEN_HEIGHT/4, SCALE => 5)
        port map (x => pixel_x, y => pixel_y, pixel_on => txt_title);
    TXT_START1 : entity work.texte_5x7
        generic map (TEXT => "START", X_ORIGIN => (SCREEN_WIDTH-120)/2, Y_ORIGIN => SCREEN_HEIGHT/2 - 80, SCALE => 4)
        port map (x => pixel_x, y => pixel_y, pixel_on => txt_start);
    -- Etiquettes d'accueil agrandies (5x7 -> 20x28 pixels par caractere).
    TXT_LAST1 : entity work.texte_5x7
        generic map (TEXT => "DERNIER", X_ORIGIN => SCREEN_WIDTH/4 - 84, Y_ORIGIN => SCREEN_HEIGHT/2 - 55, SCALE => 4)
        port map (x => pixel_x, y => pixel_y, pixel_on => txt_dernier);
    TXT_REC : entity work.texte_5x7
        generic map (TEXT => "RECORD", X_ORIGIN => 3*SCREEN_WIDTH/4 - 72, Y_ORIGIN => SCREEN_HEIGHT/2 - 55, SCALE => 4)
        port map (x => pixel_x, y => pixel_y, pixel_on => txt_record);
    TXT_PAUSE1 : entity work.texte_5x7
        generic map (TEXT => "PAUSE", X_ORIGIN => (SCREEN_WIDTH-120)/2, Y_ORIGIN => SCREEN_HEIGHT/2 - 80, SCALE => 4)
        port map (x => pixel_x, y => pixel_y, pixel_on => txt_pause);
    TXT_FIN1 : entity work.texte_5x7
        generic map (TEXT => "FIN", X_ORIGIN => (SCREEN_WIDTH-90)/2, Y_ORIGIN => SCREEN_HEIGHT/4 + 20, SCALE => 5)
        port map (x => pixel_x, y => pixel_y, pixel_on => txt_fin);

    -- Le texte GO ! apparait dans la zone TEMPS (et non au centre).
    TXT_GO1 : entity work.texte_5x7
        generic map (TEXT => "GO !", X_ORIGIN => SCREEN_WIDTH - 200,
                     Y_ORIGIN => 23, SCALE => 4)
        port map (x => pixel_x, y => pixel_y, pixel_on => txt_go);

    -- Message de confirmation pendant le flash vert.
    TXT_REUSSI1 : entity work.texte_5x7
        generic map (TEXT => "REUSSI", X_ORIGIN => (SCREEN_WIDTH - 180)/2,
                     Y_ORIGIN => SCREEN_HEIGHT/2 - 25, SCALE => 5)
        port map (x => pixel_x, y => pixel_y, pixel_on => txt_reussi);

    -- ========================================================================
    -- Composition combinatoire des pixels.
    -- Priorite : interface utilisateur > mur > camera.
    -- ========================================================================
    process (rgb_in, de_in, px, py, mode_ui, decompte_ui, flash_on,
             wall_pixel, is_pixel_joueur,
             txt_score, txt_temps, txt_title, txt_start,
             txt_dernier, txt_record, txt_pause, txt_fin,
             num_sc_d, num_sc_u, num_tm_d, num_tm_u,
             num_last_d, num_last_u, num_rec_d, num_rec_u,
             txt_go, num_countdown, txt_reussi)
    begin
        rgb_pixel <= rgb_in;  -- Camera en fond
        if de_in = '0' then
            rgb_pixel <= (others => '0'); -- Noir pendant le blanking
        else
            case mode_ui is
                when "000" | "111" => -- Accueil ou reset
                    -- On laisse la camera visible autour de quatre petits panneaux.
                    -- Les panneaux sont opaques (pas de framebuffer/alpha).
                    if (px >= SCREEN_WIDTH/2 - 190 and px < SCREEN_WIDTH/2 + 190 and
                        py >= SCREEN_HEIGHT/4 - 30 and py < SCREEN_HEIGHT/4 + 70) or
                       (px >= SCREEN_WIDTH/2 - 130 and px < SCREEN_WIDTH/2 + 130 and
                        py >= SCREEN_HEIGHT/2 - 105 and py < SCREEN_HEIGHT/2 - 25) or
                       (px >= SCREEN_WIDTH/4 - 150 and px < SCREEN_WIDTH/4 + 150 and
                        py >= SCREEN_HEIGHT/2 - 75 and py < SCREEN_HEIGHT/2 + 105) or
                       (px >= 3*SCREEN_WIDTH/4 - 150 and px < 3*SCREEN_WIDTH/4 + 150 and
                        py >= SCREEN_HEIGHT/2 - 75 and py < SCREEN_HEIGHT/2 + 105) then
                        rgb_pixel <= C_PANEL;
                    end if;
                    if (txt_title = '1' or txt_start = '1') then
                        rgb_pixel <= C_ACCENT;
                    end if;
                    if (txt_dernier = '1' or txt_record = '1' or
                        num_last_d = '1' or num_last_u = '1' or
                        num_rec_d = '1' or num_rec_u = '1') then
                        rgb_pixel <= C_WHITE;
                    end if;

                when "001" | "010" | "011" | "101" | "110" =>
                    -- 001 : attente/decompte, mur bleu
                    -- 010 : jeu, mur rouge
                    -- 011 : succes, vert clignotant sur fond bleu
                    -- 101 : echec, rouge clignotant sur fond bleu
                    -- 110 : pause, mur bleu
                    if wall_pixel = '1' then
                        case mode_ui is
                            when "010" => rgb_pixel <= C_MUR;
                            when "011" =>
                                if flash_on = '1' then
                                    rgb_pixel <= C_MUR_VERT;
                                else
                                    rgb_pixel <= C_MUR_BLEU;
                                end if;
                            when "101" =>
                                if flash_on = '1' then
                                    rgb_pixel <= C_MUR;
                                else
                                    rgb_pixel <= C_MUR_BLEU;
                                end if;
                            when others => rgb_pixel <= C_MUR_BLEU;
                        end case;
                    end if;
                    -- Surcouche de diagnostic optionnelle, sans toucher au DSP.
                    if DEBUG_JOUEUR and is_pixel_joueur = '1' then
                        if wall_pixel = '1' then
                            rgb_pixel <= C_HIT;
                        else
                            rgb_pixel <= C_PLAYER;
                        end if;
                    end if;
                    -- HUD fixe au-dessus du mur
                    if py < 90 then
                        rgb_pixel <= C_HUD;
                    end if;
                    -- Le score reste visible; TEMPS montre l'horloge du mur
                    -- en mode jeu, ou le decompte 3,2,1 puis GO en mode 001.
                    if txt_score = '1' or txt_temps = '1' or
                       num_sc_d = '1' or num_sc_u = '1' then
                        rgb_pixel <= C_WHITE;
                    end if;
                    if mode_ui = "001" then
                        if decompte_ui = "0000" then
                            if txt_go = '1' then
                                rgb_pixel <= C_ACCENT;
                            end if;
                        elsif num_countdown = '1' then
                            rgb_pixel <= C_ACCENT;
                        end if;
                    else
                        if num_tm_d = '1' or num_tm_u = '1' then
                            rgb_pixel <= C_WHITE;
                        end if;
                    end if;
                    if mode_ui = "011" and txt_reussi = '1' then
                        rgb_pixel <= C_WHITE;
                    end if;
                    -- Panneau PAUSE par-dessus camera / mur / HUD
                    if mode_ui = "110" then
                        if px >= SCREEN_WIDTH/2 - 230 and px < SCREEN_WIDTH/2 + 230 and
                            py >= SCREEN_HEIGHT/2 - 120 and py < SCREEN_HEIGHT/2 + 65 then
                            rgb_pixel <= C_PAUSE;
                        end if;
                        if txt_pause = '1' then
                            rgb_pixel <= C_ACCENT;
                        end if;
                    end if;

                when "100" => -- Partie terminee
                    -- Ecran de fin : camera visible avec panneau FIN + scores.
                    if (px >= SCREEN_WIDTH/2 - 190 and px < SCREEN_WIDTH/2 + 190 and
                        py >= SCREEN_HEIGHT/4 - 30 and py < SCREEN_HEIGHT/4 + 100) or
                       (px >= SCREEN_WIDTH/4 - 150 and px < SCREEN_WIDTH/4 + 150 and
                        py >= SCREEN_HEIGHT/2 - 75 and py < SCREEN_HEIGHT/2 + 105) or
                       (px >= 3*SCREEN_WIDTH/4 - 150 and px < 3*SCREEN_WIDTH/4 + 150 and
                        py >= SCREEN_HEIGHT/2 - 75 and py < SCREEN_HEIGHT/2 + 105) then
                        rgb_pixel <= C_PANEL;
                    end if;
                    if txt_fin = '1' then
                        rgb_pixel <= C_ACCENT;
                    end if;
                    if (txt_dernier = '1' or txt_record = '1' or
                        num_last_d = '1' or num_last_u = '1' or
                        num_rec_d = '1' or num_rec_u = '1') then
                        rgb_pixel <= C_WHITE;
                    end if;

                when others => -- "101" (non defini): camera seulement
                    null;
            end case;
        end if;
    end process;

    -- RGB et synchronisations registres ENSEMBLE : latence de 1 cycle.
    process (pixel_clk)
    begin
        if rising_edge(pixel_clk) then
            if reset = '1' then
                rgb_out   <= (others => '0');
                de_out    <= '0';
                hsync_out <= '0';
                vsync_out <= '0';
            else
                rgb_out   <= rgb_pixel;
                de_out    <= de_in;
                hsync_out <= hsync_in;
                vsync_out <= vsync_in;
            end if;
        end if;
    end process;
end RTL;
