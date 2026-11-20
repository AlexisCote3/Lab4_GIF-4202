
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Generateur_mur is
    generic (
        WallArray : integer := 32
    );
    Port (
        NewRandom : in STD_LOGIC;
        Mur_out   : out STD_LOGIC_VECTOR(31 downto 0);
        Clk       : in STD_LOGIC
    );
end Generateur_mur;

architecture Behavioral of Generateur_mur is

    component rdc_load_Nbits is
        generic (
            N : integer := 64
        );
        Port (
            RESET  : in STD_LOGIC;
            CLK    : in STD_LOGIC;
            ENABLE : in STD_LOGIC;
            OUTPUT : out STD_LOGIC_VECTOR(N-1 downto 0);
            LOAD   : in STD_LOGIC_VECTOR(N-1 downto 0)
        );
    end component;

    -- Compteur 16 bits
    signal clk_int : unsigned(15 downto 0) :=
        (others => '0');

    -- Valeur pseudo-aleatoire
    signal random_out : STD_LOGIC_VECTOR(15 downto 0);

    -- Mur selectionne et decale
    signal mur_in : STD_LOGIC_VECTOR(31 downto 0);
    
    signal mur_out0 : STD_LOGIC_VECTOR(7 downto 0);
    signal mur_out1 : STD_LOGIC_VECTOR(7 downto 0);
    signal mur_out2 : STD_LOGIC_VECTOR(7 downto 0);
    signal mur_out3 : STD_LOGIC_VECTOR(7 downto 0);

    -- Formes 4 lignes x 8 colonnes
    constant shape_star : STD_LOGIC_VECTOR(31 downto 0) :=
        "00000000001000000111000000100000";

    constant shape_cross : STD_LOGIC_VECTOR(31 downto 0) :=
        "00100000011100000001000000010000";

    constant shape_bar : STD_LOGIC_VECTOR(31 downto 0) :=
        "00000000000000001111000011110000";

    constant shape_L : STD_LOGIC_VECTOR(31 downto 0) :=
        "00110000001000000010000000100000";

begin

mur_out0 <= mur_in(7 downto 0);
mur_out1 <= mur_in(15 downto 8);
mur_out2 <= mur_in(23 downto 16);
mur_out3 <= mur_in(31 downto 24);

    ---------------------------------------------------
    -- Compteur servant de source pseudo-aleatoire
    ---------------------------------------------------
    process(Clk)
    begin
        if rising_edge(Clk) then
            clk_int <= clk_int + 1;
        end if;
    end process;

    random_out <= std_logic_vector(clk_int);

    ---------------------------------------------------
    -- Selection de la forme et decalage horizontal
    ---------------------------------------------------
    process(random_out)

        variable forme : STD_LOGIC_VECTOR(31 downto 0);
        variable decalage : integer range 0 to 3;

    begin

        -- Selection de la forme
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

        -- Decalage horizontal de 0 a 3 colonnes
        decalage :=
            to_integer(unsigned(random_out(3 downto 2)));

        -- Decalage individuel de chaque ligne (8 bits)
        for i in 0 to 3 loop

            mur_in(i*8+7 downto i*8) <=
                std_logic_vector(
                    shift_right(
                        unsigned(forme(i*8+7 downto i*8)),
                        decalage
                    )
                );

        end loop;

    end process;

    ---------------------------------------------------
    -- Registre du mur
    -- Mise a jour uniquement avec NewRandom
    ---------------------------------------------------
    reg_mur : rdc_load_Nbits
        generic map (
            N => 32
        )
        port map (
            RESET  => '0',
            CLK    => Clk,
            ENABLE => NewRandom,
            OUTPUT => Mur_out,
            LOAD   => mur_in
        );

end Behavioral;
