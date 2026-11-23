-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2.1 (win64) Build 2288692 Thu Jul 26 18:24:02 MDT 2018
-- Date        : Sun Nov 22 20:27:53 2026
-- Host        : pcetu-129 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               u:/Documents/FPGA/Lab4_GIF-4202/Le_Mur_V2/Le_Mur_V2.srcs/sources_1/bd/HDMI_bd/ip/HDMI_bd_Presence_mur_0_0/HDMI_bd_Presence_mur_0_0_stub.vhdl
-- Design      : HDMI_bd_Presence_mur_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity HDMI_bd_Presence_mur_0_0 is
  Port ( 
    pixel_x : in STD_LOGIC_VECTOR ( 11 downto 0 );
    pixel_y : in STD_LOGIC_VECTOR ( 11 downto 0 );
    wall_mask : in STD_LOGIC_VECTOR ( 31 downto 0 );
    is_mur : out STD_LOGIC
  );

end HDMI_bd_Presence_mur_0_0;

architecture stub of HDMI_bd_Presence_mur_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "pixel_x[11:0],pixel_y[11:0],wall_mask[31:0],is_mur";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "Presence_mur,Vivado 2018.2.1";
begin
end;
