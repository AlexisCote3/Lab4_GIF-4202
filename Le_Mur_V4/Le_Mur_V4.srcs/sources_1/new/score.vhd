
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity score is
    Port (
        clk           : in  STD_LOGIC;
        reset         : in  STD_LOGIC;
        end_round     : in  STD_LOGIC;
        inc_score     : in  STD_LOGIC;
        score_courant : out STD_LOGIC_VECTOR(3 downto 0);
        record_perso  : out STD_LOGIC_VECTOR(3 downto 0)
    );
end score;

architecture Behavioral of score is

    -- Registres internes
    signal score_courant_sig : unsigned(3 downto 0) := (others => '0');
    signal record_perso_sig  : unsigned(3 downto 0) := (others => '0');

    -- Calcul du prochain score
    signal score_suivant : unsigned(3 downto 0);

begin

    --------------------------------------------------
    -- Calcul du prochain score (maximum 15)
    --------------------------------------------------
    score_suivant <= score_courant_sig + 1
                     when score_courant_sig < 15
                     else score_courant_sig;

    --------------------------------------------------
    -- PROCESSUS 1 : SCORE COURANT
    -- Reset remet seulement le score courant a zero
    --------------------------------------------------
    process(clk, reset)
    begin
        if reset = '1' then
            score_courant_sig <= (others => '0');

        elsif rising_edge(clk) then
            if end_round = '1' then
                score_courant_sig <= (others => '0');

            elsif inc_score = '1' then
                score_courant_sig <= score_suivant;

            end if;
        end if;
    end process;

    --------------------------------------------------
    -- PROCESSUS 2 : RECORD PERSONNEL
    -- Le record est conserve lors du Reset
    --------------------------------------------------
    process(clk)
    begin
        if rising_edge(clk) then

            if reset = '0' and end_round = '0' and inc_score = '1' then

                if score_suivant > record_perso_sig then
                    record_perso_sig <= score_suivant;
                end if;

            end if;
        end if;
    end process;

    --------------------------------------------------
    -- SORTIES
    --------------------------------------------------
    score_courant <= std_logic_vector(score_courant_sig);
    record_perso  <= std_logic_vector(record_perso_sig);

end Behavioral;
