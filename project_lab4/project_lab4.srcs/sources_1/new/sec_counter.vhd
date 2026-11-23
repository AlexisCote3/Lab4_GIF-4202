library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity sec_counter is
    Generic ( CLK_FREQ_HZ : integer := 200000000 );
    Port ( clk        : in  STD_LOGIC;
           reset      : in  STD_LOGIC;
           enable     : in  STD_LOGIC;
           time_limit : in  STD_LOGIC_VECTOR (3 downto 0);
           sec        : out STD_LOGIC_VECTOR (3 downto 0));
end sec_counter;

architecture Behavioral of sec_counter is

    signal clk_reg : integer range 0 to CLK_FREQ_HZ - 1 := 0;
    signal sec_reg : unsigned(3 downto 0) := (others => '0');

begin

process (clk)
begin
    if rising_edge(clk) then
        if reset = '1' then
            clk_reg <= 0;
            sec_reg <= unsigned(time_limit);
        elsif enable = '1' then
            if clk_reg = CLK_FREQ_HZ - 1 then
                clk_reg <= 0;
                sec_reg <= sec_reg - 1;
            else
                clk_reg <= clk_reg + 1;
            end if;
        end if;
    end if;
end process;

sec <= std_logic_vector(sec_reg);

end Behavioral;