-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2.1 (win64) Build 2288692 Thu Jul 26 18:24:02 MDT 2018
-- Date        : Fri Nov 27 12:20:14 2026
-- Host        : pcetu-183 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top HDMI_bd_clk_wiz_0_1 -prefix
--               HDMI_bd_clk_wiz_0_1_ HDMI_bd_clk_wiz_0_1_stub.vhdl
-- Design      : HDMI_bd_clk_wiz_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity HDMI_bd_clk_wiz_0_1 is
  Port ( 
    clk_out1 : out STD_LOGIC;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end HDMI_bd_clk_wiz_0_1;

architecture stub of HDMI_bd_clk_wiz_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1,reset,locked,clk_in1";
begin
end;
