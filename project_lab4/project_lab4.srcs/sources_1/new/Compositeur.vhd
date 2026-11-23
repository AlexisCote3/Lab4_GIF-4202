-- ============================================================================
-- Projet GIF-4202 : LE MUR - Compositeur d'image
-- Cible : Zybo Z7-20 / flux HDMI RGB888 provenant de dvi2rgb
--
-- Le compositeur NE genere PAS : mur aleatoire, score, minuteur, decision DSP.
-- Il choisit simplement la couleur du pixel a afficher.
--
-- Convention du mur : 16 colonnes x 8 lignes, wall_mask(0) = case haut-gauche.
-- index = ligne * 16 + colonne. '1' = mur, '0' = ouverture/camera.
--
-- VHDL-93/2002 compatible; aucune variable / fonction dans ce module.
-- La sortie est enregistree avec une latence de 1 cycle pixel_clk.
-- IMPORTANT: pixel_x, pixel_y, rgb_in, de_in, hsync_in et vsync_in
-- doivent etre alignes SUR LE MEME pixel a l'entree du compositeur.
-- ============================================================================
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity compositeur is
    generic (
        WALL_X   : natural  := 128;
        WALL_Y   : natural  := 128;
        CELL_W   : positive := 64;
        CELL_H   : positive := 64
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

        -- Generateur de mur + FSM
        wall_mask         : in  std_logic_vector(127 downto 0);
        wall_enable       : in  std_logic;

        -- 00=Accueil, 01=Jeu, 10=Pause, 11=Resultat
        mode_ui           : in  std_logic_vector(1 downto 0);
        score_courant     : in  std_logic_vector(6 downto 0);
        temps_restant     : in  std_logic_vector(7 downto 0);
        score_dernier     : in  std_logic_vector(6 downto 0);
        record_personnel  : in  std_logic_vector(6 downto 0);

        -- Video vers rgb2dvi
        rgb_out           : out std_logic_vector(23 downto 0);
        de_out            : out std_logic;
        hsync_out         : out std_logic;
        vsync_out         : out std_logic
    );
end compositeur;

architecture RTL of compositeur is
    constant C_MUR     : std_logic_vector(23 downto 0) := x"B74751";
    constant C_HUD     : std_logic_vector(23 downto 0) := x"14283D";
    constant C_PANEL   : std_logic_vector(23 downto 0) := x"253A56";
    constant C_PAUSE   : std_logic_vector(23 downto 0) := x"22577B";
    constant C_WHITE   : std_logic_vector(23 downto 0) := x"FFFFFF";
    constant C_ACCENT  : std_logic_vector(23 downto 0) := x"FFD166";

    signal px, py : integer range 0 to 4095;
    signal wall_pixel : std_logic;
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
begin
    px <= to_integer(unsigned(pixel_x));
    py <= to_integer(unsigned(pixel_y));

    -- Lecture combinatoire du masque de mur a partir des coordonnees.
    -- Indice = (ligne * 16) + colonne, bit 0 en haut a gauche.
    process (px, py, wall_mask)
    begin
        wall_pixel <= '0';
        if (px >= WALL_X) and (px < WALL_X + 16 * CELL_W) and
           (py >= WALL_Y) and (py < WALL_Y + 8 * CELL_H) then
            wall_pixel <= wall_mask(
                ((py - WALL_Y) / CELL_H) * 16 + ((px - WALL_X) / CELL_W)
            );
        end if;
    end process;

    -- Conversion binaire -> deux chiffres BCD pour l'affichage.
    -- La division /10 et mod 10 sont par constantes : synthese possible.
    score_num <= 99 when unsigned(score_courant) > to_unsigned(99, 7)
                    else to_integer(unsigned(score_courant));
    dernier_num <= 99 when unsigned(score_dernier) > to_unsigned(99, 7)
                      else to_integer(unsigned(score_dernier));
    record_num <= 99 when unsigned(record_personnel) > to_unsigned(99, 7)
                     else to_integer(unsigned(record_personnel));
    temps_num <= 99 when unsigned(temps_restant) > to_unsigned(99, 8)
                    else to_integer(unsigned(temps_restant));

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
        generic map (X_ORIGIN => 1080, Y_ORIGIN => 12, SCALE => 3)
        port map (x => pixel_x, y => pixel_y, chiffre => temps_diz, pixel_on => num_tm_d);
    TM_U : entity work.chiffre_7seg
        generic map (X_ORIGIN => 1120, Y_ORIGIN => 12, SCALE => 3)
        port map (x => pixel_x, y => pixel_y, chiffre => temps_uni, pixel_on => num_tm_u);

    -- Sous-modules chiffres 7 segments (dernier score / record accueil)
    LAST_D : entity work.chiffre_7seg
        generic map (X_ORIGIN => 345, Y_ORIGIN => 453, SCALE => 3)
        port map (x => pixel_x, y => pixel_y, chiffre => dernier_diz, pixel_on => num_last_d);
    LAST_U : entity work.chiffre_7seg
        generic map (X_ORIGIN => 385, Y_ORIGIN => 453, SCALE => 3)
        port map (x => pixel_x, y => pixel_y, chiffre => dernier_uni, pixel_on => num_last_u);
    REC_D : entity work.chiffre_7seg
        generic map (X_ORIGIN => 845, Y_ORIGIN => 453, SCALE => 3)
        port map (x => pixel_x, y => pixel_y, chiffre => record_diz, pixel_on => num_rec_d);
    REC_U : entity work.chiffre_7seg
        generic map (X_ORIGIN => 885, Y_ORIGIN => 453, SCALE => 3)
        port map (x => pixel_x, y => pixel_y, chiffre => record_uni, pixel_on => num_rec_u);

    -- ========================================================================
    -- Sous-modules textes matriciels 5x7 (aucune memoire d'image)
    -- ========================================================================
    TXT_SC : entity work.texte_5x7
        generic map (TEXT => "SCORE", X_ORIGIN => 30, Y_ORIGIN => 20, SCALE => 2)
        port map (x => pixel_x, y => pixel_y, pixel_on => txt_score);
    TXT_TM : entity work.texte_5x7
        generic map (TEXT => "TEMPS", X_ORIGIN => 960, Y_ORIGIN => 20, SCALE => 2)
        port map (x => pixel_x, y => pixel_y, pixel_on => txt_temps);
    TXT_TITLE : entity work.texte_5x7
        generic map (TEXT => "LE MUR", X_ORIGIN => 545, Y_ORIGIN => 210, SCALE => 5)
        port map (x => pixel_x, y => pixel_y, pixel_on => txt_title);
    TXT_START : entity work.texte_5x7
        generic map (TEXT => "START", X_ORIGIN => 570, Y_ORIGIN => 330, SCALE => 4)
        port map (x => pixel_x, y => pixel_y, pixel_on => txt_start);
    TXT_LAST : entity work.texte_5x7
        generic map (TEXT => "DERNIER", X_ORIGIN => 315, Y_ORIGIN => 420, SCALE => 2)
        port map (x => pixel_x, y => pixel_y, pixel_on => txt_dernier);
    TXT_REC : entity work.texte_5x7
        generic map (TEXT => "RECORD", X_ORIGIN => 805, Y_ORIGIN => 420, SCALE => 2)
        port map (x => pixel_x, y => pixel_y, pixel_on => txt_record);
    TXT_PAUSE : entity work.texte_5x7
        generic map (TEXT => "PAUSE", X_ORIGIN => 555, Y_ORIGIN => 330, SCALE => 4)
        port map (x => pixel_x, y => pixel_y, pixel_on => txt_pause);
    TXT_FIN : entity work.texte_5x7
        generic map (TEXT => "FIN", X_ORIGIN => 595, Y_ORIGIN => 230, SCALE => 5)
        port map (x => pixel_x, y => pixel_y, pixel_on => txt_fin);

    -- ========================================================================
    -- Composition combinatoire des pixels.
    -- Priorite : interface utilisateur > mur > camera.
    -- ========================================================================
    process (rgb_in, de_in, px, py, mode_ui, wall_enable, wall_pixel,
             txt_score, txt_temps, txt_title, txt_start,
             txt_dernier, txt_record, txt_pause, txt_fin,
             num_sc_d, num_sc_u, num_tm_d, num_tm_u,
             num_last_d, num_last_u, num_rec_d, num_rec_u)
    begin
        rgb_pixel <= rgb_in;  -- Camera en fond
        if de_in = '0' then
            rgb_pixel <= (others => '0'); -- Noir pendant le blanking
        else
            case mode_ui is
                when "00" => -- Accueil, avec score precedent et record
                    if (px >= 180 and px < 1100 and py >= 150 and py < 600) then
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

                when "01" | "10" => -- Partie et pause
                    if wall_enable = '1' and wall_pixel = '1' then
                        rgb_pixel <= C_MUR;
                    end if;
                    -- HUD fixe au-dessus du mur
                    if py < 90 then
                        rgb_pixel <= C_HUD;
                    end if;
                    if txt_score = '1' or txt_temps = '1' or
                       num_sc_d = '1' or num_sc_u = '1' or
                       num_tm_d = '1' or num_tm_u = '1' then
                        rgb_pixel <= C_WHITE;
                    end if;
                    -- Panneau PAUSE par-dessus camera / mur / HUD
                    if mode_ui = "10" then
                        if px >= 410 and px < 870 and py >= 265 and py < 450 then
                            rgb_pixel <= C_PAUSE;
                        end if;
                        if txt_pause = '1' then
                            rgb_pixel <= C_ACCENT;
                        end if;
                    end if;

                when others => -- "11" : ecran de resultat (optionnel)
                    if px >= 180 and px < 1100 and py >= 150 and py < 600 then
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
            end case;
        end if;
    end process;

    -- RGB et synchronisations registers ENSEMBLE : latence de 1 cycle.
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
