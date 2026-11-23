
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Generateur_mur is
    generic (
        WallArray : integer := 128
    );
    Port (
        NewRandom : in STD_LOGIC;
        Mur_out   : out STD_LOGIC_VECTOR(127 downto 0);
        Clk       : in STD_LOGIC
    );
end Generateur_mur;

architecture Behavioral of Generateur_mur is

    ---------------------------------------------------
    -- 128-bit register
    ---------------------------------------------------
    component rdc_load_Nbits is
        generic (
            N : integer := 128
        );
        Port (
            RESET  : in STD_LOGIC;
            CLK    : in STD_LOGIC;
            ENABLE : in STD_LOGIC;
            OUTPUT : out STD_LOGIC_VECTOR(N-1 downto 0);
            LOAD   : in STD_LOGIC_VECTOR(N-1 downto 0)
        );
    end component;

    ---------------------------------------------------
    -- Random counter
    ---------------------------------------------------
    signal clk_int : unsigned(15 downto 0) :=
        (others => '0');

    signal random_out : STD_LOGIC_VECTOR(15 downto 0);

    ---------------------------------------------------
    -- Wall signals
    ---------------------------------------------------
    signal mur_in : STD_LOGIC_VECTOR(127 downto 0);

    ---------------------------------------------------
    -- SHAPE 1: STAR
    ---------------------------------------------------
    constant shape_star : STD_LOGIC_VECTOR(127 downto 0) :=
        "0000000110000000" &
        "0000001111000000" &
        "0000011111100000" &
        "0001111111110000" &
        "0000011111100000" &
        "0000001111000000" &
        "0000000110000000" &
        "0000000000000000";

    ---------------------------------------------------
    -- SHAPE 2: CROSS
    ---------------------------------------------------
    constant shape_cross : STD_LOGIC_VECTOR(127 downto 0) :=
        "0000011110000000" &
        "0000011110000000" &
        "0000011110000000" &
        "0011111111110000" &
        "0011111111110000" &
        "0000011110000000" &
        "0000011110000000" &
        "0000011110000000";

    ---------------------------------------------------
    -- SHAPE 3: HORIZONTAL BAR
    ---------------------------------------------------
    constant shape_bar : STD_LOGIC_VECTOR(127 downto 0) :=
        "0000000000000000" &
        "0000000000000000" &
        "0000000000000000" &
        "1111111111000000" &
        "1111111111000000" &
        "1111111111000000" &
        "1111111111000000" &
        "0000000000000000";

    ---------------------------------------------------
    -- SHAPE 4: L
    ---------------------------------------------------
    constant shape_L : STD_LOGIC_VECTOR(127 downto 0) :=
        "0000111100000000" &
        "0000111100000000" &
        "0000111100000000" &
        "0000111100000000" &
        "0000111100000000" &
        "0000111100000000" &
        "0000111111110000" &
        "0000111111110000";

begin

    ---------------------------------------------------
    -- RANDOM COUNTER
    ---------------------------------------------------
    process(Clk)
    begin
        if rising_edge(Clk) then
            clk_int <= clk_int + 1;
        end if;
    end process;

    random_out <= std_logic_vector(clk_int);

    ---------------------------------------------------
    -- SHAPE SELECTION AND HORIZONTAL SHIFT
    ---------------------------------------------------
    process(random_out)

        variable forme :
            STD_LOGIC_VECTOR(127 downto 0);

        variable decalage : integer range 0 to 6;

    begin

        -- Select one of four shapes
        case random_out(1 downto 0) is

            when "00" =>
                forme := shape_star;

            when "01" =>
                forme := shape_cross;

            when "10" =>
                forme := shape_bar;

            when others =>
                forme := shape_L;

        end case;

        -- Horizontal displacement: 0 to 6 columns
        decalage :=
            to_integer(unsigned(random_out(4 downto 2)));

        if decalage > 6 then
            decalage := 6;
        end if;

        -- Shift each 16-bit row independently
        for i in 0 to 7 loop

            mur_in(i*16+15 downto i*16) <=
                std_logic_vector(
                    shift_right(
                        unsigned(forme(i*16+15 downto i*16)),
                        decalage
                    )
                );

        end loop;

    end process;

    ---------------------------------------------------
    -- 128-BIT WALL REGISTER
    ---------------------------------------------------
    reg_mur : rdc_load_Nbits
        generic map (
            N => 128
        )
        port map (
            RESET  => '0',
            CLK    => Clk,
            ENABLE => NewRandom,
            OUTPUT => Mur_out,
            LOAD   => mur_in
        );

end Behavioral;
