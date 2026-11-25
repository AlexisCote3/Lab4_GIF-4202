-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2.1 (win64) Build 2288692 Thu Jul 26 18:24:02 MDT 2018
-- Date        : Wed Nov 25 16:57:11 2026
-- Host        : pcetu-129 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/juroy185/Downloads/basic/ZYBO_HDMI_MGA_2018_2/project_1/project_1.srcs/sources_1/bd/HDMI_bd/ip/HDMI_bd_top_level_0_0/HDMI_bd_top_level_0_0_stub.vhdl
-- Design      : HDMI_bd_top_level_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity HDMI_bd_top_level_0_0 is
  Port ( 
    pixel_clk : in STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    rgb_in : in STD_LOGIC_VECTOR ( 23 downto 0 );
    vsync : in STD_LOGIC;
    vde : in STD_LOGIC;
    hsync : in STD_LOGIC;
    rgb_out : out STD_LOGIC_VECTOR ( 23 downto 0 );
    run : in STD_LOGIC;
    quit : in STD_LOGIC;
    diff : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );

end HDMI_bd_top_level_0_0;

architecture stub of HDMI_bd_top_level_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "pixel_clk,clk,reset,rgb_in[23:0],vsync,vde,hsync,rgb_out[23:0],run,quit,diff[1:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "top_level,Vivado 2018.2.1";
begin
end;
