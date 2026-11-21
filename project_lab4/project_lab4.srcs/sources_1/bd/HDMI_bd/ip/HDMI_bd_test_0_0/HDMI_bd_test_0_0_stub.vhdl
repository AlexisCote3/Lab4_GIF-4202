-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2.1 (win64) Build 2288692 Thu Jul 26 18:24:02 MDT 2018
-- Date        : Fri Nov 20 19:12:47 2026
-- Host        : pcetu-149 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/juroy185/Documents/project_lab4/project_lab4.srcs/sources_1/bd/HDMI_bd/ip/HDMI_bd_test_0_0/HDMI_bd_test_0_0_stub.vhdl
-- Design      : HDMI_bd_test_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity HDMI_bd_test_0_0 is
  Port ( 
    is_mur : in STD_LOGIC;
    rbg_in : in STD_LOGIC_VECTOR ( 23 downto 0 );
    rbg_out : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );

end HDMI_bd_test_0_0;

architecture stub of HDMI_bd_test_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "is_mur,rbg_in[23:0],rbg_out[23:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "test,Vivado 2018.2.1";
begin
end;
