----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/13/2026 11:03:19 AM
-- Design Name: 
-- Module Name: Registre_1B - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Registre_1B is
    Port ( Enable : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Input : in STD_LOGIC;
           Output : out STD_LOGIC;
           Clk : in STD_LOGIC);
end Registre_1B;

architecture Behavioral of Registre_1B is

begin

reg : process(Reset,Enable,Clk,Input)
begin
if(Reset='1')then
    Output<='0';
elsif(Clk'event and clk='1')then
    if(Enable='1')then
        Output<=Input;
    end if;
end if;
end process;

end Behavioral;
