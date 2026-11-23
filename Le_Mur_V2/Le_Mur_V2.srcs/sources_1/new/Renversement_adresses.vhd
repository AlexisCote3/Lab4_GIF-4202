
--------------------------------------------------------------------------------
-- PROJET : LE MUR
-- MODULE : Renversement_adresses
-- CARTE  : Zybo Z7-20
--------------------------------------------------------------------------------
--
-- DESCRIPTION
--
-- Ce module controle les adresses d'une memoire RAM simple port
-- afin de produire un effet miroir horizontal.
--
-- La RAM est configuree en READ_FIRST :
-- lorsqu'on lit et ecrit a la meme adresse, la sortie
-- fournit l'ancienne donnee avant son remplacement.
--
-- FONCTIONNEMENT :
--
-- Ligne 0 : ecriture aux adresses 0 a 1599.
--
-- Ligne 1 : lecture des adresses 1599 a 0,
--           simultanement a l'ecriture de la ligne 1.
--
-- Ligne 2 : lecture des adresses 0 a 1599,
--           simultanement a l'ecriture de la ligne 2.
--
-- Et ainsi de suite.
--
-- La sortie video correspond donc a la ligne precedente,
-- inversee horizontalement.
--
-- La premiere ligne de chaque image est masquee.
--
-- IMPORTANT :
--   - Aucun calcul RGB dans ce module
--   - Aucune variable VHDL
--   - RAM externe a l'entite (Block Memory Generator)
--   - Pixel_counter fournit pixel_x
--   - VSYNC suppose actif a 1
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Renversement_adresses is

    generic (
        SCREEN_WIDTH : positive := 1600
    );

    port (

        ------------------------------------------------------------------------
        -- HORLOGE ET RESET
        ------------------------------------------------------------------------

        clk_pixel : in STD_LOGIC;
        reset     : in STD_LOGIC;

        ------------------------------------------------------------------------
        -- COORDONNEES ET SYNCHRONISATION
        ------------------------------------------------------------------------

        pixel_x  : in STD_LOGIC_VECTOR(10 downto 0);

        vde_in   : in STD_LOGIC;
        hsync_in : in STD_LOGIC;
        vsync_in : in STD_LOGIC;

        ------------------------------------------------------------------------
        -- CONTROLE DU BLOCK MEMORY GENERATOR
        --
        -- ram_addr : adresse de lecture et d'ecriture
        -- ram_en   : activation de la memoire
        -- ram_we   : activation de l'ecriture (1 bit)
        ------------------------------------------------------------------------

        ram_addr : out STD_LOGIC_VECTOR(10 downto 0);
        ram_en   : out STD_LOGIC;
        ram_we   : out STD_LOGIC_VECTOR(0 downto 0);

        ------------------------------------------------------------------------
        -- SORTIES DE SYNCHRONISATION RETARDEES
        --
        -- Alignement sur la lecture synchrone de la BRAM.
        ------------------------------------------------------------------------

        vde_out   : out STD_LOGIC;
        hsync_out : out STD_LOGIC;
        vsync_out : out STD_LOGIC;

        ------------------------------------------------------------------------
        -- VALIDITE DU PIXEL EN SORTIE
        --
        -- 0 : ne pas afficher le contenu de la BRAM
        -- 1 : le pixel de sortie est valide
        ------------------------------------------------------------------------

        pixel_valid_out : out STD_LOGIC

    );

end Renversement_adresses;


--------------------------------------------------------------------------------
-- ARCHITECTURE
--------------------------------------------------------------------------------

architecture Behavioral of Renversement_adresses is

    ---------------------------------------------------------------------------
    -- SENS DE PARCOURS
    --
    -- 0 : adresses croissantes, de 0 a 1599
    -- 1 : adresses decroissantes, de 1599 a 0
    ---------------------------------------------------------------------------

    signal reverse_dir : STD_LOGIC := '0';

    ---------------------------------------------------------------------------
    -- MEMORISATION DES SYNCHRONISATIONS
    --
    -- Permet de reconnaitre les transitions de VDE et VSYNC.
    ---------------------------------------------------------------------------

    signal vde_prev   : STD_LOGIC := '0';
    signal vsync_prev : STD_LOGIC := '0';

    ---------------------------------------------------------------------------
    -- ETAT DE REMPLISSAGE
    --
    -- Une fois la premiere ligne ecrite, la RAM contient
    -- une ligne complete pouvant etre lue.
    ---------------------------------------------------------------------------

    signal line_ready : STD_LOGIC := '0';

    ---------------------------------------------------------------------------
    -- COORDONNEE ET ADRESSE
    ---------------------------------------------------------------------------

    signal x_int : integer range 0 to 4095;

    signal addr_int : integer range 0 to 2047;

    signal pixel_active : STD_LOGIC;

    ---------------------------------------------------------------------------
    -- REGISTRES DE SYNCHRONISATION VIDEO
    ---------------------------------------------------------------------------

    signal vde_reg   : STD_LOGIC := '0';
    signal hsync_reg : STD_LOGIC := '0';
    signal vsync_reg : STD_LOGIC := '0';

    signal valid_reg : STD_LOGIC := '0';

begin

    ---------------------------------------------------------------------------
    -- VERIFICATION DU PARAMETRE
    --
    -- 11 bits permettent d'adresser 2048 positions.
    ---------------------------------------------------------------------------

    assert SCREEN_WIDTH <= 2048
        report "SCREEN_WIDTH depasse 10 bits d'adresse"
        severity failure;


    ---------------------------------------------------------------------------
    -- ETAPE 1 : CONVERSION DE PIXEL_X
    ---------------------------------------------------------------------------

    x_int <= to_integer(unsigned(pixel_x));


    ---------------------------------------------------------------------------
    -- ETAPE 2 : VERIFICATION DU PIXEL ACTIF
    --
    -- La RAM est activee uniquement pendant les pixels
    -- de l'image, dans les limites horizontales.
    ---------------------------------------------------------------------------

    pixel_active <= '1'
        when vde_in = '1' and
             x_int < SCREEN_WIDTH and
             vsync_in = '0' and
             reset = '0'
        else '0';


    ---------------------------------------------------------------------------
    -- ETAPE 3 : GENERATION DE L'ADRESSE
    --
    -- Sens normal :
    --     adresse = X
    --
    -- Sens inverse :
    --     adresse = SCREEN_WIDTH - 1 - X
    --
    -- Les deux operations sont combinatoires.
    ---------------------------------------------------------------------------

    addr_int <= x_int
        when reverse_dir = '0' and x_int < SCREEN_WIDTH
        else SCREEN_WIDTH - 1 - x_int
        when reverse_dir = '1' and x_int < SCREEN_WIDTH
        else 0;


    ---------------------------------------------------------------------------
    -- ETAPE 4 : COMMANDES DE LA RAM
    --
    -- READ_FIRST permettra de lire l'ancienne valeur
    -- pendant que le pixel actuel remplace son contenu.
    ---------------------------------------------------------------------------

    ram_addr <= std_logic_vector(to_unsigned(addr_int, 11));

    ram_en <= pixel_active;

    ram_we(0) <= pixel_active;


    ---------------------------------------------------------------------------
    -- ETAPE 5 : PROCESSUS DE CONTROLE DES LIGNES
    --
    -- Un front descendant de VDE indique la fin
    -- de la ligne active.
    --
    -- A chaque nouvelle ligne, on inverse le sens
    -- de parcours de la memoire.
    --
    -- Un front montant de VSYNC prepare la premiere
    -- ligne de la nouvelle image.
    ---------------------------------------------------------------------------

    process(clk_pixel)
    begin

        if rising_edge(clk_pixel) then

            if reset = '1' then

                reverse_dir <= '0';

                vde_prev   <= '0';
                vsync_prev <= '0';

                line_ready <= '0';

                vde_reg   <= '0';
                hsync_reg <= '0';
                vsync_reg <= '0';

                valid_reg <= '0';

            else

                ---------------------------------------------------------------
                -- Memoriser les synchronisations precedentes
                ---------------------------------------------------------------

                vde_prev   <= vde_in;
                vsync_prev <= vsync_in;


                ---------------------------------------------------------------
                -- Retarder les signaux video d'un cycle
                ---------------------------------------------------------------

                vde_reg   <= vde_in;
                hsync_reg <= hsync_in;
                vsync_reg <= vsync_in;


                ---------------------------------------------------------------
                -- Sortie valide uniquement lorsqu'une ligne
                -- precedente complete est disponible.
                ---------------------------------------------------------------

                valid_reg <= pixel_active and line_ready;


                ---------------------------------------------------------------
                -- DEBUT D'UNE NOUVELLE IMAGE
                --
                -- La premiere ligne sera ecrite en partant
                -- de l'adresse 0.
                ---------------------------------------------------------------

                if vsync_in = '1' and vsync_prev = '0' then

                    reverse_dir <= '0';
                    line_ready  <= '0';


                ---------------------------------------------------------------
                -- FIN D'UNE LIGNE ACTIVE
                --
                -- Changer le sens d'adressage.
                ---------------------------------------------------------------

                elsif vde_prev = '1' and vde_in = '0' then

                    reverse_dir <= not reverse_dir;

                    line_ready <= '1';

                end if;

            end if;

        end if;

    end process;


    ---------------------------------------------------------------------------
    -- ETAPE 6 : SORTIES
    ---------------------------------------------------------------------------

    vde_out   <= vde_reg;
    hsync_out <= hsync_reg;
    vsync_out <= vsync_reg;

    pixel_valid_out <= valid_reg;

end Behavioral;
