
--------------------------------------------------------------------------------
-- PROJET : LE MUR
-- MODULE : Mesure_timing_video
--
-- DESCRIPTION
--
-- Mesure automatiquement les caracteristiques du signal HDMI
-- recupere par le module dvi2rgb.
--
-- MESURES HORIZONTALES :
--   h_total  : cycles d'horloge par ligne
--   h_active : pixels actifs par ligne
--   h_blank  : cycles de blanking horizontal
--
-- MESURES VERTICALES :
--   v_total  : nombre total de lignes par image
--   v_active : nombre de lignes actives par image
--   v_blank  : nombre de lignes de blanking vertical
--
-- Deux impulsions de validation :
--   mesure_valid : nouvelle mesure horizontale
--   frame_valid  : nouvelle mesure verticale
--
-- Les resultats restent memorises entre les mesures.
--
-- Aucune variable VHDL.
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Mesure_timing_video is
    Port (
        clk_pixel : in STD_LOGIC;
        reset     : in STD_LOGIC;

        ------------------------------------------------------------------------
        -- Synchronisations provenant directement de dvi2rgb
        ------------------------------------------------------------------------
        vde       : in STD_LOGIC;
        hsync     : in STD_LOGIC;
        vsync     : in STD_LOGIC;

        ------------------------------------------------------------------------
        -- Mesures horizontales
        ------------------------------------------------------------------------
        h_total   : out STD_LOGIC_VECTOR(11 downto 0);
        h_active  : out STD_LOGIC_VECTOR(11 downto 0);
        h_blank   : out STD_LOGIC_VECTOR(11 downto 0);

        mesure_valid : out STD_LOGIC;

        ------------------------------------------------------------------------
        -- Mesures verticales
        ------------------------------------------------------------------------
        v_total   : out STD_LOGIC_VECTOR(11 downto 0);
        v_active  : out STD_LOGIC_VECTOR(11 downto 0);
        v_blank   : out STD_LOGIC_VECTOR(11 downto 0);

        frame_valid : out STD_LOGIC
    );
end Mesure_timing_video;


architecture Behavioral of Mesure_timing_video is

    ---------------------------------------------------------------------------
    -- Type commun pour les compteurs
    ---------------------------------------------------------------------------

    subtype count_t is unsigned(11 downto 0);

    ---------------------------------------------------------------------------
    -- Historique des signaux video
    --
    -- Permet la detection des fronts montants.
    ---------------------------------------------------------------------------

    signal vde_prev   : STD_LOGIC := '0';
    signal hsync_prev : STD_LOGIC := '0';
    signal vsync_prev : STD_LOGIC := '0';

    ---------------------------------------------------------------------------
    -- Detection des fronts
    ---------------------------------------------------------------------------

    signal vde_rising   : STD_LOGIC;
    signal hsync_rising : STD_LOGIC;
    signal vsync_rising : STD_LOGIC;

    ---------------------------------------------------------------------------
    -- Compteurs horizontaux
    --
    -- h_cycle_count :
    --   Cycles depuis le dernier front montant de VDE.
    --
    -- h_active_count :
    --   Nombre de pixels actifs dans la derniere ligne.
    ---------------------------------------------------------------------------

    signal h_cycle_count  : count_t := (others => '0');
    signal h_active_count : count_t := (others => '0');

    signal first_line_seen : STD_LOGIC := '0';

    ---------------------------------------------------------------------------
    -- Compteurs verticaux
    --
    -- v_line_count :
    --   Nombre d'impulsions HSYNC entre deux fronts de VSYNC.
    --
    -- v_active_count :
    --   Nombre de fronts montants VDE dans l'image.
    ---------------------------------------------------------------------------

    signal v_line_count   : count_t := (others => '0');
    signal v_active_count : count_t := (others => '0');

    signal first_frame_seen : STD_LOGIC := '0';

    ---------------------------------------------------------------------------
    -- Registres des mesures horizontales
    ---------------------------------------------------------------------------

    signal h_total_reg  : count_t := (others => '0');
    signal h_active_reg : count_t := (others => '0');
    signal h_blank_reg  : count_t := (others => '0');

    signal h_valid_reg : STD_LOGIC := '0';

    ---------------------------------------------------------------------------
    -- Registres des mesures verticales
    ---------------------------------------------------------------------------

    signal v_total_reg  : count_t := (others => '0');
    signal v_active_reg : count_t := (others => '0');
    signal v_blank_reg  : count_t := (others => '0');

    signal v_valid_reg : STD_LOGIC := '0';

begin

    ---------------------------------------------------------------------------
    -- Detection des fronts montants
    --
    -- Les polarites de HSYNC et VSYNC n'affectent pas
    -- le nombre d'impulsions mesurees, a condition
    -- qu'il y ait une impulsion par ligne / image.
    ---------------------------------------------------------------------------

    vde_rising <= '1'
        when vde = '1' and vde_prev = '0'
        else '0';

    hsync_rising <= '1'
        when hsync = '1' and hsync_prev = '0'
        else '0';

    vsync_rising <= '1'
        when vsync = '1' and vsync_prev = '0'
        else '0';

    ---------------------------------------------------------------------------
    -- PROCESSUS PRINCIPAL
    ---------------------------------------------------------------------------

    process(clk_pixel)
    begin

        if rising_edge(clk_pixel) then

            if reset = '1' then

                ---------------------------------------------------------------
                -- Reset des historiques
                ---------------------------------------------------------------

                vde_prev   <= '0';
                hsync_prev <= '0';
                vsync_prev <= '0';

                ---------------------------------------------------------------
                -- Reset des compteurs horizontaux
                ---------------------------------------------------------------

                h_cycle_count  <= (others => '0');
                h_active_count <= (others => '0');

                first_line_seen <= '0';

                ---------------------------------------------------------------
                -- Reset des compteurs verticaux
                ---------------------------------------------------------------

                v_line_count   <= (others => '0');
                v_active_count <= (others => '0');

                first_frame_seen <= '0';

                ---------------------------------------------------------------
                -- Reset des resultats
                ---------------------------------------------------------------

                h_total_reg  <= (others => '0');
                h_active_reg <= (others => '0');
                h_blank_reg  <= (others => '0');

                v_total_reg  <= (others => '0');
                v_active_reg <= (others => '0');
                v_blank_reg  <= (others => '0');

                h_valid_reg <= '0';
                v_valid_reg <= '0';

            else

                ---------------------------------------------------------------
                -- Memoriser les synchronisations
                ---------------------------------------------------------------

                vde_prev   <= vde;
                hsync_prev <= hsync;
                vsync_prev <= vsync;

                ---------------------------------------------------------------
                -- Impulsions de validation desactivees par defaut
                ---------------------------------------------------------------

                h_valid_reg <= '0';
                v_valid_reg <= '0';

                ---------------------------------------------------------------
                -- PARTIE A : MESURE HORIZONTALE
                --
                -- VSYNC reinitialise la recherche de lignes.
                --
                -- Ceci evite de mesurer accidentellement tout
                -- le blanking vertical comme une seule ligne.
                ---------------------------------------------------------------

                if vsync_rising = '1' then

                    h_cycle_count    <= (others => '0');
                    h_active_count   <= (others => '0');
                    first_line_seen  <= '0';

                elsif vde_rising = '1' then

                    -----------------------------------------------------------
                    -- Une ligne vient de commencer.
                    --
                    -- Le compteur de cycles contenait la periode
                    -- ecoulee depuis le debut de la ligne precedente.
                    -----------------------------------------------------------

                    if first_line_seen = '1' then

                        h_total_reg <= h_cycle_count + 1;
                        h_active_reg <= h_active_count;

                        h_blank_reg <=
                            (h_cycle_count + 1) - h_active_count;

                        h_valid_reg <= '1';

                    end if;

                    -----------------------------------------------------------
                    -- Initialiser les compteurs pour la nouvelle ligne
                    -----------------------------------------------------------

                    h_cycle_count <= (others => '0');
                    h_active_count <= to_unsigned(1, 12);

                    first_line_seen <= '1';

                else

                    -----------------------------------------------------------
                    -- Compter les cycles de PixelClk
                    -----------------------------------------------------------

                    h_cycle_count <= h_cycle_count + 1;

                    -----------------------------------------------------------
                    -- Compter les pixels actifs
                    -----------------------------------------------------------

                    if vde = '1' then
                        h_active_count <= h_active_count + 1;
                    end if;

                end if;

                ---------------------------------------------------------------
                -- PARTIE B : MESURE VERTICALE
                --
                -- Chaque front HSYNC correspond a une ligne.
                --
                -- Chaque front VDE correspond au debut
                -- d'une ligne active.
                --
                -- Lors d'un nouveau VSYNC, on enregistre
                -- les comptes de l'image precedente.
                ---------------------------------------------------------------

                if vsync_rising = '1' then

                    -----------------------------------------------------------
                    -- Ignorer la premiere image apres reset.
                    --
                    -- Elle peut etre incomplete.
                    -----------------------------------------------------------

                    if first_frame_seen = '1' then

                        v_total_reg <= v_line_count;

                        v_active_reg <= v_active_count;

                        -------------------------------------------------------
                        -- Protection contre une soustraction negative
                        -- en cas de synchronisations invalides.
                        -------------------------------------------------------

                        if v_line_count >= v_active_count then

                            v_blank_reg <=
                                v_line_count - v_active_count;

                        else

                            v_blank_reg <= (others => '0');

                        end if;

                        v_valid_reg <= '1';

                    end if;

                    -----------------------------------------------------------
                    -- Nouvelle image
                    --
                    -- Si un front HSYNC tombe au meme cycle
                    -- que VSYNC, il est attribue a la nouvelle
                    -- image plutot que d'etre perdu.
                    -----------------------------------------------------------

                    if hsync_rising = '1' then

                        v_line_count <= to_unsigned(1, 12);

                    else

                        v_line_count <= (others => '0');

                    end if;

                    if vde_rising = '1' then

                        v_active_count <= to_unsigned(1, 12);

                    else

                        v_active_count <= (others => '0');

                    end if;

                    first_frame_seen <= '1';

                else

                    -----------------------------------------------------------
                    -- Compter chaque nouvelle ligne video
                    -----------------------------------------------------------

                    if hsync_rising = '1' then

                        v_line_count <= v_line_count + 1;

                    end if;

                    -----------------------------------------------------------
                    -- Compter chaque nouvelle ligne active
                    -----------------------------------------------------------

                    if vde_rising = '1' then

                        v_active_count <= v_active_count + 1;

                    end if;

                end if;

            end if;

        end if;

    end process;

    ---------------------------------------------------------------------------
    -- SORTIES HORIZONTALES
    ---------------------------------------------------------------------------

    h_total <= std_logic_vector(h_total_reg);
    h_active <= std_logic_vector(h_active_reg);
    h_blank <= std_logic_vector(h_blank_reg);

    mesure_valid <= h_valid_reg;

    ---------------------------------------------------------------------------
    -- SORTIES VERTICALES
    ---------------------------------------------------------------------------

    v_total <= std_logic_vector(v_total_reg);
    v_active <= std_logic_vector(v_active_reg);
    v_blank <= std_logic_vector(v_blank_reg);

    frame_valid <= v_valid_reg;

end Behavioral;
