
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Compositeur is
    Port (
        dvi2rgb    : in  STD_LOGIC_VECTOR(23 downto 0);
        rgb2dvi    : out STD_LOGIC_VECTOR(23 downto 0);

        vid_pVDE   : in  STD_LOGIC;
        vid_pHSync : in  STD_LOGIC;
        vid_pVSync : in  STD_LOGIC;

        PixelClk   : in  STD_LOGIC;

        Mur_in     : in  STD_LOGIC_VECTOR(31 downto 0)
    );
end Compositeur;

architecture Behavioral of Compositeur is

    -- Red wall color (RGB888)
    constant couleurRouge : STD_LOGIC_VECTOR(23 downto 0)
        := x"FF0000";

    -- Screen configuration
    constant NB_COLONNES   : integer := 8;
    constant NB_LIGNES     : integer := 4;
    constant LARGEUR_ZONE  : integer := 200;
    constant HAUTEUR_ZONE  : integer := 225;

    -- Pixel coordinates
    signal h : unsigned(15 downto 0) := (others => '0');
    signal v : unsigned(15 downto 0) := (others => '0');

    -- Wall detection
    signal sig_mur     : STD_LOGIC;
    signal sig_mur_mux : STD_LOGIC_VECTOR(31 downto 0);

    -- Previous synchronization signals
    signal VDE_prec   : STD_LOGIC := '0';
    signal VSync_prec : STD_LOGIC := '0';

begin

    --------------------------------------------------------
    -- PIXEL POSITION COUNTERS
    --------------------------------------------------------
    process(PixelClk)
    begin
        if rising_edge(PixelClk) then

            VDE_prec   <= vid_pVDE;
            VSync_prec <= vid_pVSync;

            -- Start of a new frame
            if vid_pVSync = '1' and VSync_prec = '0' then

                h <= (others => '0');
                v <= (others => '0');

            -- Active video pixel
            elsif vid_pVDE = '1' then

                if VDE_prec = '0' then
                    -- First active pixel of the line
                    h <= to_unsigned(1, h'length);
                else
                    h <= h + 1;
                end if;

            -- End of an active video line
            elsif VDE_prec = '1' then

                h <= (others => '0');
                v <= v + 1;

            end if;

        end if;
    end process;


    --------------------------------------------------------
    -- GENERATE 32 SCREEN ZONES
    --
    -- 8 columns x 4 rows
    -- Each zone: 200 x 225 pixels
    --
    -- Zone 0  -> Mur_in(31)
    -- Zone 31 -> Mur_in(0)
    --------------------------------------------------------
    gen_mur : for i in 0 to 31 generate
    begin

        sig_mur_mux(i) <= '1' when
            (
                -- Horizontal zone boundaries
                h >= (i mod NB_COLONNES) * LARGEUR_ZONE + 1
                and
                h <= ((i mod NB_COLONNES) + 1) * LARGEUR_ZONE

                and

                -- Vertical zone boundaries
                v >= (i / NB_COLONNES) * HAUTEUR_ZONE
                and
                v < ((i / NB_COLONNES) + 1) * HAUTEUR_ZONE

                and

                -- Active video
                vid_pVDE = '1'

                and

                -- Opening in the wall
                Mur_in(31-i) = '1'
            )
            else '0';

    end generate;


    --------------------------------------------------------
    -- COMBINE THE 32 ZONES
    --
    -- sig_mur = 1 when at least one active opening
    -- matches the current pixel.
    --------------------------------------------------------
    sig_mur <= '1' when
        sig_mur_mux /= (sig_mur_mux'range => '0')
        else '0';


    --------------------------------------------------------
    -- VIDEO OUTPUT
    --
    -- sig_mur = 1 -> Show camera image
    -- sig_mur = 0 -> Show red wall
    --------------------------------------------------------
    rgb2dvi <= dvi2rgb when sig_mur = '1'
               else couleurRouge;

end Behavioral;
