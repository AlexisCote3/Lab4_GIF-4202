library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity score is
    Port ( clk           : in  STD_LOGIC;
           reset         : in  STD_LOGIC;
           stop          : in  STD_LOGIC;
           inc           : in  STD_LOGIC;
           score_courant : out STD_LOGIC_VECTOR (3 downto 0);
           record_perso  : out STD_LOGIC_VECTOR (3 downto 0));
end score;

architecture Behavioral of score is

signal score_courant_sig : unsigned(3 downto 0) := (others => '0');
signal record_perso_sig  : unsigned(3 downto 0) := (others => '0');
signal score_suivant     : unsigned(3 downto 0);

begin

score_suivant <= score_courant_sig + 1;

process (clk, reset)
begin
    if reset = '1' then

        score_courant_sig <= (others => '0');
        record_perso_sig  <= (others => '0');

    elsif rising_edge(clk) then

        if stop = '1' then
            score_courant_sig <= (others => '0');
        elsif inc = '1' then
            score_courant_sig <= score_suivant;
            if score_suivant > record_perso_sig then
                record_perso_sig <= score_suivant;
            end if;
        end if;

    end if;
end process;

score_courant <= std_logic_vector(score_courant_sig);
record_perso  <= std_logic_vector(record_perso_sig);

end Behavioral;