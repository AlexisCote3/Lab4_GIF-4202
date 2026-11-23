
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

        Mur_in     : in  STD_LOGIC_VECTOR(127 downto 0)
    );
end Compositeur;

architecture Behavioral of Compositeur is

    constant couleurRouge : STD_LOGIC_VECTOR(23 downto 0)
        := x"FF0000";

    -- Screen configuration
    constant NB_COLONNES  : integer := 16;
    constant NB_LIGNES    : integer := 8;
    constant LARGEUR_ZONE : integer := 100;

    -- Pixel coordinates
    signal h : unsigned(15 downto 0) := (others => '0');
    signal v : unsigned(15 downto 0) := (others => '0');

    -- Wall detection
    signal sig_mur     : STD_LOGIC;
    signal sig_mur_mux : STD_LOGIC_VECTOR(127 downto 0);

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
    -- GENERATE 128 SCREEN ZONES
    --
    -- 16 columns x 8 rows
    -- Width: 100 pixels
    -- Height: 112 or 113 pixels
    --
    -- Zone 0   -> Mur_in(127)
    -- Zone 127 -> Mur_in(0)
    --------------------------------------------------------
    gen_mur : for i in 0 to 127 generate
    begin

        sig_mur_mux(i) <= '1' when
            (
                -- Horizontal boundaries
                h >= (i mod NB_COLONNES) * LARGEUR_ZONE + 1
                and
                h <= ((i mod NB_COLONNES) + 1) * LARGEUR_ZONE

                and

                -- Vertical boundaries
                -- Integer division gives exact 900 px coverage
                to_integer(v) >= ((i / NB_COLONNES) * 900) / NB_LIGNES
                and
                to_integer(v) < (((i / NB_COLONNES) + 1) * 900) / NB_LIGNES

                and

                vid_pVDE = '1'

                and

                -- Opening in the wall
                Mur_in(127-i) = '1'
            )
            else '0';

    end generate;


    --------------------------------------------------------
    -- COMBINE ALL ZONES
    --------------------------------------------------------
    sig_mur <= '1' when
        sig_mur_mux /= (sig_mur_mux'range => '0')
        else '0';


    --------------------------------------------------------
    -- VIDEO OUTPUT
    --
    -- sig_mur = 1 -> Camera image (opening)
    -- sig_mur = 0 -> Red wall
    --------------------------------------------------------
    rgb2dvi <= dvi2rgb when sig_mur = '1'
               else couleurRouge;

end Behavioral;
