--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Command: generate_target bd_255b.bd
--Design : bd_255b
--Purpose: IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_255b is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of bd_255b : entity is "bd_255b,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_255b,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of bd_255b : entity is "HDMI_bd_system_ila_0_0.hwdef";
end bd_255b;

architecture STRUCTURE of bd_255b is
  component bd_255b_ila_lib_0 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    probe5 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    probe7 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component bd_255b_ila_lib_0;
  signal clk_1 : STD_LOGIC;
  signal probe0_1 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal probe1_1 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal probe2_1 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal probe3_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal probe4_1 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal probe5_1 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal probe6_1 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal probe7_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN HDMI_bd_dvi2rgb_0_0_PixelClk, FREQ_HZ 100000000, PHASE 0.000";
begin
  clk_1 <= clk;
  probe0_1(11 downto 0) <= probe0(11 downto 0);
  probe1_1(11 downto 0) <= probe1(11 downto 0);
  probe2_1(11 downto 0) <= probe2(11 downto 0);
  probe3_1(0) <= probe3(0);
  probe4_1(11 downto 0) <= probe4(11 downto 0);
  probe5_1(11 downto 0) <= probe5(11 downto 0);
  probe6_1(11 downto 0) <= probe6(11 downto 0);
  probe7_1(0) <= probe7(0);
ila_lib: component bd_255b_ila_lib_0
     port map (
      clk => clk_1,
      probe0(11 downto 0) => probe0_1(11 downto 0),
      probe1(11 downto 0) => probe1_1(11 downto 0),
      probe2(11 downto 0) => probe2_1(11 downto 0),
      probe3(0) => probe3_1(0),
      probe4(11 downto 0) => probe4_1(11 downto 0),
      probe5(11 downto 0) => probe5_1(11 downto 0),
      probe6(11 downto 0) => probe6_1(11 downto 0),
      probe7(0) => probe7_1(0)
    );
end STRUCTURE;
