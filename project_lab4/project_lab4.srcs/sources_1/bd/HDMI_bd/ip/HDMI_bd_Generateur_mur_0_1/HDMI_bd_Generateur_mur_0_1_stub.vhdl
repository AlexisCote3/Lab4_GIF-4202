-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2.1 (win64) Build 2288692 Thu Jul 26 18:24:02 MDT 2018
-- Date        : Fri Nov 20 19:12:48 2026
-- Host        : pcetu-149 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/juroy185/Documents/project_lab4/project_lab4.srcs/sources_1/bd/HDMI_bd/ip/HDMI_bd_Generateur_mur_0_1/HDMI_bd_Generateur_mur_0_1_stub.vhdl
-- Design      : HDMI_bd_Generateur_mur_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity HDMI_bd_Generateur_mur_0_1 is
  Port ( 
    NewRandom : in STD_LOGIC;
    Mur_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Clk : in STD_LOGIC
  );

end HDMI_bd_Generateur_mur_0_1;

architecture stub of HDMI_bd_Generateur_mur_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "NewRandom,Mur_out[31:0],Clk";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "Generateur_mur,Vivado 2018.2.1";
begin
end;
