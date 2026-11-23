-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2.1 (win64) Build 2288692 Thu Jul 26 18:24:02 MDT 2018
-- Date        : Sun Nov 22 20:06:09 2026
-- Host        : pcetu-129 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               U:/Documents/FPGA/Lab4_GIF-4202/project_lab4/project_lab4.srcs/sources_1/bd/HDMI_bd/ip/HDMI_bd_FSM_0_0/HDMI_bd_FSM_0_0_stub.vhdl
-- Design      : HDMI_bd_FSM_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity HDMI_bd_FSM_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    run : in STD_LOGIC;
    quit : in STD_LOGIC;
    difficulty : in STD_LOGIC_VECTOR ( 1 downto 0 );
    q_pass : in STD_LOGIC;
    new_round : out STD_LOGIC;
    diff_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    mode_ui : out STD_LOGIC_VECTOR ( 2 downto 0 );
    sec : out STD_LOGIC_VECTOR ( 3 downto 0 );
    score_courant : out STD_LOGIC_VECTOR ( 5 downto 0 );
    record_perso : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );

end HDMI_bd_FSM_0_0;

architecture stub of HDMI_bd_FSM_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,reset,run,quit,difficulty[1:0],q_pass,new_round,diff_out[1:0],mode_ui[2:0],sec[3:0],score_courant[5:0],record_perso[5:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "FSM,Vivado 2018.2.1";
begin
end;
