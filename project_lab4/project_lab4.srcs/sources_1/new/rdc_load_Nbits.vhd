----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/05/2026 10:29:15 AM
-- Design Name: 
-- Module Name: rdc_load_Nbits - Behavioral
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

entity rdc_load_Nbits is
    generic (N : integer:=64);
    Port ( RESET : in STD_LOGIC;
           CLK : in STD_LOGIC;
           ENABLE : in STD_LOGIC;
           OUTPUT : out STD_LOGIC_VECTOR (N-1 downto 0);
           LOAD : in STD_LOGIC_VECTOR (N-1 downto 0));
end rdc_load_Nbits;

architecture Behavioral of rdc_load_Nbits is

component Registre_1B is
    Port ( Input : in STD_LOGIC;
           Output : out STD_LOGIC;
           Reset : in STD_LOGIC;
           Enable : in STD_LOGIC;
           Clk : in STD_LOGIC);
end component;


signal outReg : STD_LOGIC_VECTOR(N-1 downto 0);

begin

OUTPUT <= outReg;

regs: for i in 0 to N-1 generate
    UREG_I: Registre_1B  port map (LOAD(i), outReg(i),RESET, ENABLE, CLK);
end generate;

 
end Behavioral;
