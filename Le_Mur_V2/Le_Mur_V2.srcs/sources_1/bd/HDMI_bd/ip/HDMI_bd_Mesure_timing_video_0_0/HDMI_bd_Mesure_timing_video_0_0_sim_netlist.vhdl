-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2.1 (win64) Build 2288692 Thu Jul 26 18:24:02 MDT 2018
-- Date        : Mon Nov 23 17:39:38 2026
-- Host        : pcetu-129 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               u:/Documents/FPGA/Lab4_GIF-4202/Le_Mur_V2/Le_Mur_V2.srcs/sources_1/bd/HDMI_bd/ip/HDMI_bd_Mesure_timing_video_0_0/HDMI_bd_Mesure_timing_video_0_0_sim_netlist.vhdl
-- Design      : HDMI_bd_Mesure_timing_video_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity HDMI_bd_Mesure_timing_video_0_0_Mesure_timing_video is
  port (
    h_total : out STD_LOGIC_VECTOR ( 11 downto 0 );
    h_active : out STD_LOGIC_VECTOR ( 11 downto 0 );
    h_blank : out STD_LOGIC_VECTOR ( 11 downto 0 );
    v_total : out STD_LOGIC_VECTOR ( 11 downto 0 );
    v_active : out STD_LOGIC_VECTOR ( 11 downto 0 );
    v_blank : out STD_LOGIC_VECTOR ( 11 downto 0 );
    mesure_valid : out STD_LOGIC;
    frame_valid : out STD_LOGIC;
    vde : in STD_LOGIC;
    vsync : in STD_LOGIC;
    reset : in STD_LOGIC;
    clk_pixel : in STD_LOGIC;
    hsync : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of HDMI_bd_Mesure_timing_video_0_0_Mesure_timing_video : entity is "Mesure_timing_video";
end HDMI_bd_Mesure_timing_video_0_0_Mesure_timing_video;

architecture STRUCTURE of HDMI_bd_Mesure_timing_video_0_0_Mesure_timing_video is
  signal first_frame_seen : STD_LOGIC;
  signal first_frame_seen_i_1_n_0 : STD_LOGIC;
  signal first_line_seen : STD_LOGIC;
  signal first_line_seen_i_1_n_0 : STD_LOGIC;
  signal h_active_count : STD_LOGIC_VECTOR ( 11 to 11 );
  signal \h_active_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \h_active_count_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \h_active_count_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \h_active_count_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \h_active_count_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \h_active_count_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \h_active_count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \h_active_count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \h_active_count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \h_active_count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \h_active_count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \h_active_count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \h_active_count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \h_active_count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \h_active_count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \h_active_count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \h_active_count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \h_active_count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \h_active_count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \h_active_count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \h_active_count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \h_active_count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \h_active_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \h_active_count_reg_n_0_[10]\ : STD_LOGIC;
  signal \h_active_count_reg_n_0_[11]\ : STD_LOGIC;
  signal \h_active_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \h_active_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \h_active_count_reg_n_0_[3]\ : STD_LOGIC;
  signal \h_active_count_reg_n_0_[4]\ : STD_LOGIC;
  signal \h_active_count_reg_n_0_[5]\ : STD_LOGIC;
  signal \h_active_count_reg_n_0_[6]\ : STD_LOGIC;
  signal \h_active_count_reg_n_0_[7]\ : STD_LOGIC;
  signal \h_active_count_reg_n_0_[8]\ : STD_LOGIC;
  signal \h_active_count_reg_n_0_[9]\ : STD_LOGIC;
  signal h_blank_reg01_out : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \h_blank_reg0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \h_blank_reg0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \h_blank_reg0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \h_blank_reg0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \h_blank_reg0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \h_blank_reg0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \h_blank_reg0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \h_blank_reg0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \h_blank_reg0_carry__0_n_0\ : STD_LOGIC;
  signal \h_blank_reg0_carry__0_n_1\ : STD_LOGIC;
  signal \h_blank_reg0_carry__0_n_2\ : STD_LOGIC;
  signal \h_blank_reg0_carry__0_n_3\ : STD_LOGIC;
  signal \h_blank_reg0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \h_blank_reg0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \h_blank_reg0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \h_blank_reg0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \h_blank_reg0_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \h_blank_reg0_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \h_blank_reg0_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \h_blank_reg0_carry__1_n_1\ : STD_LOGIC;
  signal \h_blank_reg0_carry__1_n_2\ : STD_LOGIC;
  signal \h_blank_reg0_carry__1_n_3\ : STD_LOGIC;
  signal h_blank_reg0_carry_i_1_n_0 : STD_LOGIC;
  signal h_blank_reg0_carry_i_3_n_0 : STD_LOGIC;
  signal h_blank_reg0_carry_i_4_n_0 : STD_LOGIC;
  signal h_blank_reg0_carry_i_5_n_0 : STD_LOGIC;
  signal h_blank_reg0_carry_i_6_n_0 : STD_LOGIC;
  signal h_blank_reg0_carry_n_0 : STD_LOGIC;
  signal h_blank_reg0_carry_n_1 : STD_LOGIC;
  signal h_blank_reg0_carry_n_2 : STD_LOGIC;
  signal h_blank_reg0_carry_n_3 : STD_LOGIC;
  signal \h_cycle_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \h_cycle_count[0]_i_3_n_0\ : STD_LOGIC;
  signal h_cycle_count_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \h_cycle_count_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \h_cycle_count_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \h_cycle_count_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \h_cycle_count_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \h_cycle_count_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \h_cycle_count_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \h_cycle_count_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \h_cycle_count_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \h_cycle_count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \h_cycle_count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \h_cycle_count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \h_cycle_count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \h_cycle_count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \h_cycle_count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \h_cycle_count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \h_cycle_count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \h_cycle_count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \h_cycle_count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \h_cycle_count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \h_cycle_count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \h_cycle_count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \h_cycle_count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \h_cycle_count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \h_total_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \h_total_reg_reg[11]_i_2_n_2\ : STD_LOGIC;
  signal \h_total_reg_reg[11]_i_2_n_3\ : STD_LOGIC;
  signal \h_total_reg_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \h_total_reg_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \h_total_reg_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \h_total_reg_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \h_total_reg_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \h_total_reg_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \h_total_reg_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \h_total_reg_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal h_valid_reg_i_1_n_0 : STD_LOGIC;
  signal hsync_prev : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 to 1 );
  signal p_1_in : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal plusOp : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \plusOp_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_carry__0_n_4\ : STD_LOGIC;
  signal \plusOp_carry__0_n_5\ : STD_LOGIC;
  signal \plusOp_carry__0_n_6\ : STD_LOGIC;
  signal \plusOp_carry__0_n_7\ : STD_LOGIC;
  signal \plusOp_carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_carry__1_n_3\ : STD_LOGIC;
  signal \plusOp_carry__1_n_5\ : STD_LOGIC;
  signal \plusOp_carry__1_n_6\ : STD_LOGIC;
  signal \plusOp_carry__1_n_7\ : STD_LOGIC;
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal plusOp_carry_n_1 : STD_LOGIC;
  signal plusOp_carry_n_2 : STD_LOGIC;
  signal plusOp_carry_n_3 : STD_LOGIC;
  signal plusOp_carry_n_4 : STD_LOGIC;
  signal plusOp_carry_n_5 : STD_LOGIC;
  signal plusOp_carry_n_6 : STD_LOGIC;
  signal plusOp_carry_n_7 : STD_LOGIC;
  signal v_active_count : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \v_active_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \v_active_count[10]_i_1_n_0\ : STD_LOGIC;
  signal \v_active_count[11]_i_2_n_0\ : STD_LOGIC;
  signal \v_active_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \v_active_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \v_active_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \v_active_count[4]_i_1_n_0\ : STD_LOGIC;
  signal \v_active_count[5]_i_1_n_0\ : STD_LOGIC;
  signal \v_active_count[6]_i_1_n_0\ : STD_LOGIC;
  signal \v_active_count[7]_i_1_n_0\ : STD_LOGIC;
  signal \v_active_count[8]_i_1_n_0\ : STD_LOGIC;
  signal \v_active_count[9]_i_1_n_0\ : STD_LOGIC;
  signal v_active_count_0 : STD_LOGIC;
  signal \v_active_count_reg[11]_i_3_n_2\ : STD_LOGIC;
  signal \v_active_count_reg[11]_i_3_n_3\ : STD_LOGIC;
  signal \v_active_count_reg[11]_i_3_n_5\ : STD_LOGIC;
  signal \v_active_count_reg[11]_i_3_n_6\ : STD_LOGIC;
  signal \v_active_count_reg[11]_i_3_n_7\ : STD_LOGIC;
  signal \v_active_count_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \v_active_count_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \v_active_count_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \v_active_count_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \v_active_count_reg[4]_i_2_n_4\ : STD_LOGIC;
  signal \v_active_count_reg[4]_i_2_n_5\ : STD_LOGIC;
  signal \v_active_count_reg[4]_i_2_n_6\ : STD_LOGIC;
  signal \v_active_count_reg[4]_i_2_n_7\ : STD_LOGIC;
  signal \v_active_count_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \v_active_count_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \v_active_count_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \v_active_count_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \v_active_count_reg[8]_i_2_n_4\ : STD_LOGIC;
  signal \v_active_count_reg[8]_i_2_n_5\ : STD_LOGIC;
  signal \v_active_count_reg[8]_i_2_n_6\ : STD_LOGIC;
  signal \v_active_count_reg[8]_i_2_n_7\ : STD_LOGIC;
  signal v_blank_reg00_out : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \v_blank_reg0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \v_blank_reg0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \v_blank_reg0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \v_blank_reg0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \v_blank_reg0_carry__0_n_0\ : STD_LOGIC;
  signal \v_blank_reg0_carry__0_n_1\ : STD_LOGIC;
  signal \v_blank_reg0_carry__0_n_2\ : STD_LOGIC;
  signal \v_blank_reg0_carry__0_n_3\ : STD_LOGIC;
  signal \v_blank_reg0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \v_blank_reg0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \v_blank_reg0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \v_blank_reg0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \v_blank_reg0_carry__1_n_1\ : STD_LOGIC;
  signal \v_blank_reg0_carry__1_n_2\ : STD_LOGIC;
  signal \v_blank_reg0_carry__1_n_3\ : STD_LOGIC;
  signal v_blank_reg0_carry_i_1_n_0 : STD_LOGIC;
  signal v_blank_reg0_carry_i_2_n_0 : STD_LOGIC;
  signal v_blank_reg0_carry_i_3_n_0 : STD_LOGIC;
  signal v_blank_reg0_carry_i_4_n_0 : STD_LOGIC;
  signal v_blank_reg0_carry_n_0 : STD_LOGIC;
  signal v_blank_reg0_carry_n_1 : STD_LOGIC;
  signal v_blank_reg0_carry_n_2 : STD_LOGIC;
  signal v_blank_reg0_carry_n_3 : STD_LOGIC;
  signal \v_blank_reg1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \v_blank_reg1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \v_blank_reg1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \v_blank_reg1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \v_blank_reg1_carry__0_n_2\ : STD_LOGIC;
  signal \v_blank_reg1_carry__0_n_3\ : STD_LOGIC;
  signal v_blank_reg1_carry_i_1_n_0 : STD_LOGIC;
  signal v_blank_reg1_carry_i_2_n_0 : STD_LOGIC;
  signal v_blank_reg1_carry_i_3_n_0 : STD_LOGIC;
  signal v_blank_reg1_carry_i_4_n_0 : STD_LOGIC;
  signal v_blank_reg1_carry_i_5_n_0 : STD_LOGIC;
  signal v_blank_reg1_carry_i_6_n_0 : STD_LOGIC;
  signal v_blank_reg1_carry_i_7_n_0 : STD_LOGIC;
  signal v_blank_reg1_carry_i_8_n_0 : STD_LOGIC;
  signal v_blank_reg1_carry_n_0 : STD_LOGIC;
  signal v_blank_reg1_carry_n_1 : STD_LOGIC;
  signal v_blank_reg1_carry_n_2 : STD_LOGIC;
  signal v_blank_reg1_carry_n_3 : STD_LOGIC;
  signal \v_blank_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal v_line_count : STD_LOGIC_VECTOR ( 11 to 11 );
  signal \v_line_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \v_line_count[11]_i_2_n_0\ : STD_LOGIC;
  signal \v_line_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \v_line_count_reg_n_0_[10]\ : STD_LOGIC;
  signal \v_line_count_reg_n_0_[11]\ : STD_LOGIC;
  signal \v_line_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \v_line_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \v_line_count_reg_n_0_[3]\ : STD_LOGIC;
  signal \v_line_count_reg_n_0_[4]\ : STD_LOGIC;
  signal \v_line_count_reg_n_0_[5]\ : STD_LOGIC;
  signal \v_line_count_reg_n_0_[6]\ : STD_LOGIC;
  signal \v_line_count_reg_n_0_[7]\ : STD_LOGIC;
  signal \v_line_count_reg_n_0_[8]\ : STD_LOGIC;
  signal \v_line_count_reg_n_0_[9]\ : STD_LOGIC;
  signal v_total_reg : STD_LOGIC;
  signal v_valid_reg_i_1_n_0 : STD_LOGIC;
  signal vde_prev : STD_LOGIC;
  signal vsync_prev : STD_LOGIC;
  signal \NLW_h_active_count_reg[11]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_h_active_count_reg[11]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_h_blank_reg0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_h_cycle_count_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_h_total_reg_reg[11]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_h_total_reg_reg[11]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_plusOp_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_plusOp_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_v_active_count_reg[11]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_v_active_count_reg[11]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_v_blank_reg0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_v_blank_reg1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_v_blank_reg1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_v_blank_reg1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \v_active_count[10]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \v_active_count[11]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \v_active_count[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \v_active_count[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \v_active_count[4]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \v_active_count[5]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \v_active_count[6]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \v_active_count[7]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \v_active_count[8]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \v_active_count[9]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \v_line_count[10]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \v_line_count[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \v_line_count[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \v_line_count[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \v_line_count[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \v_line_count[5]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \v_line_count[6]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \v_line_count[7]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \v_line_count[8]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \v_line_count[9]_i_1\ : label is "soft_lutpair4";
begin
\U0/\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF44F4"
    )
        port map (
      I0 => vsync_prev,
      I1 => vsync,
      I2 => vde,
      I3 => vde_prev,
      I4 => reset,
      O => h_active_count(11)
    );
first_frame_seen_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => vsync_prev,
      I1 => vsync,
      I2 => first_frame_seen,
      O => first_frame_seen_i_1_n_0
    );
first_frame_seen_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => '1',
      D => first_frame_seen_i_1_n_0,
      Q => first_frame_seen,
      R => reset
    );
first_line_seen_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AEAE00AE"
    )
        port map (
      I0 => first_line_seen,
      I1 => vde,
      I2 => vde_prev,
      I3 => vsync,
      I4 => vsync_prev,
      I5 => reset,
      O => first_line_seen_i_1_n_0
    );
first_line_seen_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => '1',
      D => first_line_seen_i_1_n_0,
      Q => first_line_seen,
      R => '0'
    );
\h_active_count[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"006E006E0000006E"
    )
        port map (
      I0 => \h_active_count_reg_n_0_[0]\,
      I1 => vde,
      I2 => vde_prev,
      I3 => reset,
      I4 => vsync,
      I5 => vsync_prev,
      O => \h_active_count[0]_i_1_n_0\
    );
\h_active_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => '1',
      D => \h_active_count[0]_i_1_n_0\,
      Q => \h_active_count_reg_n_0_[0]\,
      R => '0'
    );
\h_active_count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => vde,
      D => \h_active_count_reg[11]_i_1_n_6\,
      Q => \h_active_count_reg_n_0_[10]\,
      R => h_active_count(11)
    );
\h_active_count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => vde,
      D => \h_active_count_reg[11]_i_1_n_5\,
      Q => \h_active_count_reg_n_0_[11]\,
      R => h_active_count(11)
    );
\h_active_count_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \h_active_count_reg[8]_i_1_n_0\,
      CO(3 downto 2) => \NLW_h_active_count_reg[11]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \h_active_count_reg[11]_i_1_n_2\,
      CO(0) => \h_active_count_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_h_active_count_reg[11]_i_1_O_UNCONNECTED\(3),
      O(2) => \h_active_count_reg[11]_i_1_n_5\,
      O(1) => \h_active_count_reg[11]_i_1_n_6\,
      O(0) => \h_active_count_reg[11]_i_1_n_7\,
      S(3) => '0',
      S(2) => \h_active_count_reg_n_0_[11]\,
      S(1) => \h_active_count_reg_n_0_[10]\,
      S(0) => \h_active_count_reg_n_0_[9]\
    );
\h_active_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => vde,
      D => \h_active_count_reg[4]_i_1_n_7\,
      Q => \h_active_count_reg_n_0_[1]\,
      R => h_active_count(11)
    );
\h_active_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => vde,
      D => \h_active_count_reg[4]_i_1_n_6\,
      Q => \h_active_count_reg_n_0_[2]\,
      R => h_active_count(11)
    );
\h_active_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => vde,
      D => \h_active_count_reg[4]_i_1_n_5\,
      Q => \h_active_count_reg_n_0_[3]\,
      R => h_active_count(11)
    );
\h_active_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => vde,
      D => \h_active_count_reg[4]_i_1_n_4\,
      Q => \h_active_count_reg_n_0_[4]\,
      R => h_active_count(11)
    );
\h_active_count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \h_active_count_reg[4]_i_1_n_0\,
      CO(2) => \h_active_count_reg[4]_i_1_n_1\,
      CO(1) => \h_active_count_reg[4]_i_1_n_2\,
      CO(0) => \h_active_count_reg[4]_i_1_n_3\,
      CYINIT => \h_active_count_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3) => \h_active_count_reg[4]_i_1_n_4\,
      O(2) => \h_active_count_reg[4]_i_1_n_5\,
      O(1) => \h_active_count_reg[4]_i_1_n_6\,
      O(0) => \h_active_count_reg[4]_i_1_n_7\,
      S(3) => \h_active_count_reg_n_0_[4]\,
      S(2) => \h_active_count_reg_n_0_[3]\,
      S(1) => \h_active_count_reg_n_0_[2]\,
      S(0) => \h_active_count_reg_n_0_[1]\
    );
\h_active_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => vde,
      D => \h_active_count_reg[8]_i_1_n_7\,
      Q => \h_active_count_reg_n_0_[5]\,
      R => h_active_count(11)
    );
\h_active_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => vde,
      D => \h_active_count_reg[8]_i_1_n_6\,
      Q => \h_active_count_reg_n_0_[6]\,
      R => h_active_count(11)
    );
\h_active_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => vde,
      D => \h_active_count_reg[8]_i_1_n_5\,
      Q => \h_active_count_reg_n_0_[7]\,
      R => h_active_count(11)
    );
\h_active_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => vde,
      D => \h_active_count_reg[8]_i_1_n_4\,
      Q => \h_active_count_reg_n_0_[8]\,
      R => h_active_count(11)
    );
\h_active_count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \h_active_count_reg[4]_i_1_n_0\,
      CO(3) => \h_active_count_reg[8]_i_1_n_0\,
      CO(2) => \h_active_count_reg[8]_i_1_n_1\,
      CO(1) => \h_active_count_reg[8]_i_1_n_2\,
      CO(0) => \h_active_count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \h_active_count_reg[8]_i_1_n_4\,
      O(2) => \h_active_count_reg[8]_i_1_n_5\,
      O(1) => \h_active_count_reg[8]_i_1_n_6\,
      O(0) => \h_active_count_reg[8]_i_1_n_7\,
      S(3) => \h_active_count_reg_n_0_[8]\,
      S(2) => \h_active_count_reg_n_0_[7]\,
      S(1) => \h_active_count_reg_n_0_[6]\,
      S(0) => \h_active_count_reg_n_0_[5]\
    );
\h_active_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => vde,
      D => \h_active_count_reg[11]_i_1_n_7\,
      Q => \h_active_count_reg_n_0_[9]\,
      R => h_active_count(11)
    );
\h_active_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \h_total_reg[11]_i_1_n_0\,
      D => \h_active_count_reg_n_0_[0]\,
      Q => h_active(0),
      R => reset
    );
\h_active_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \h_total_reg[11]_i_1_n_0\,
      D => \h_active_count_reg_n_0_[10]\,
      Q => h_active(10),
      R => reset
    );
\h_active_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \h_total_reg[11]_i_1_n_0\,
      D => \h_active_count_reg_n_0_[11]\,
      Q => h_active(11),
      R => reset
    );
\h_active_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \h_total_reg[11]_i_1_n_0\,
      D => \h_active_count_reg_n_0_[1]\,
      Q => h_active(1),
      R => reset
    );
\h_active_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \h_total_reg[11]_i_1_n_0\,
      D => \h_active_count_reg_n_0_[2]\,
      Q => h_active(2),
      R => reset
    );
\h_active_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \h_total_reg[11]_i_1_n_0\,
      D => \h_active_count_reg_n_0_[3]\,
      Q => h_active(3),
      R => reset
    );
\h_active_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \h_total_reg[11]_i_1_n_0\,
      D => \h_active_count_reg_n_0_[4]\,
      Q => h_active(4),
      R => reset
    );
\h_active_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \h_total_reg[11]_i_1_n_0\,
      D => \h_active_count_reg_n_0_[5]\,
      Q => h_active(5),
      R => reset
    );
\h_active_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \h_total_reg[11]_i_1_n_0\,
      D => \h_active_count_reg_n_0_[6]\,
      Q => h_active(6),
      R => reset
    );
\h_active_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \h_total_reg[11]_i_1_n_0\,
      D => \h_active_count_reg_n_0_[7]\,
      Q => h_active(7),
      R => reset
    );
\h_active_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \h_total_reg[11]_i_1_n_0\,
      D => \h_active_count_reg_n_0_[8]\,
      Q => h_active(8),
      R => reset
    );
\h_active_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \h_total_reg[11]_i_1_n_0\,
      D => \h_active_count_reg_n_0_[9]\,
      Q => h_active(9),
      R => reset
    );
h_blank_reg0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => h_blank_reg0_carry_n_0,
      CO(2) => h_blank_reg0_carry_n_1,
      CO(1) => h_blank_reg0_carry_n_2,
      CO(0) => h_blank_reg0_carry_n_3,
      CYINIT => '0',
      DI(3) => h_blank_reg0_carry_i_1_n_0,
      DI(2) => p_0_in(1),
      DI(1) => \h_active_count_reg_n_0_[1]\,
      DI(0) => h_cycle_count_reg(0),
      O(3 downto 0) => h_blank_reg01_out(3 downto 0),
      S(3) => h_blank_reg0_carry_i_3_n_0,
      S(2) => h_blank_reg0_carry_i_4_n_0,
      S(1) => h_blank_reg0_carry_i_5_n_0,
      S(0) => h_blank_reg0_carry_i_6_n_0
    );
\h_blank_reg0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => h_blank_reg0_carry_n_0,
      CO(3) => \h_blank_reg0_carry__0_n_0\,
      CO(2) => \h_blank_reg0_carry__0_n_1\,
      CO(1) => \h_blank_reg0_carry__0_n_2\,
      CO(0) => \h_blank_reg0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \h_blank_reg0_carry__0_i_1_n_0\,
      DI(2) => \h_blank_reg0_carry__0_i_2_n_0\,
      DI(1) => \h_blank_reg0_carry__0_i_3_n_0\,
      DI(0) => \h_blank_reg0_carry__0_i_4_n_0\,
      O(3 downto 0) => h_blank_reg01_out(7 downto 4),
      S(3) => \h_blank_reg0_carry__0_i_5_n_0\,
      S(2) => \h_blank_reg0_carry__0_i_6_n_0\,
      S(1) => \h_blank_reg0_carry__0_i_7_n_0\,
      S(0) => \h_blank_reg0_carry__0_i_8_n_0\
    );
\h_blank_reg0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => h_cycle_count_reg(6),
      I1 => \h_active_count_reg_n_0_[6]\,
      O => \h_blank_reg0_carry__0_i_1_n_0\
    );
\h_blank_reg0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => h_cycle_count_reg(5),
      I1 => \h_active_count_reg_n_0_[5]\,
      O => \h_blank_reg0_carry__0_i_2_n_0\
    );
\h_blank_reg0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => h_cycle_count_reg(4),
      I1 => \h_active_count_reg_n_0_[4]\,
      O => \h_blank_reg0_carry__0_i_3_n_0\
    );
\h_blank_reg0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => h_cycle_count_reg(3),
      I1 => \h_active_count_reg_n_0_[3]\,
      O => \h_blank_reg0_carry__0_i_4_n_0\
    );
\h_blank_reg0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \h_active_count_reg_n_0_[6]\,
      I1 => h_cycle_count_reg(6),
      I2 => \h_active_count_reg_n_0_[7]\,
      I3 => h_cycle_count_reg(7),
      O => \h_blank_reg0_carry__0_i_5_n_0\
    );
\h_blank_reg0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \h_active_count_reg_n_0_[5]\,
      I1 => h_cycle_count_reg(5),
      I2 => \h_active_count_reg_n_0_[6]\,
      I3 => h_cycle_count_reg(6),
      O => \h_blank_reg0_carry__0_i_6_n_0\
    );
\h_blank_reg0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \h_active_count_reg_n_0_[4]\,
      I1 => h_cycle_count_reg(4),
      I2 => \h_active_count_reg_n_0_[5]\,
      I3 => h_cycle_count_reg(5),
      O => \h_blank_reg0_carry__0_i_7_n_0\
    );
\h_blank_reg0_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \h_active_count_reg_n_0_[3]\,
      I1 => h_cycle_count_reg(3),
      I2 => \h_active_count_reg_n_0_[4]\,
      I3 => h_cycle_count_reg(4),
      O => \h_blank_reg0_carry__0_i_8_n_0\
    );
\h_blank_reg0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \h_blank_reg0_carry__0_n_0\,
      CO(3) => \NLW_h_blank_reg0_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \h_blank_reg0_carry__1_n_1\,
      CO(1) => \h_blank_reg0_carry__1_n_2\,
      CO(0) => \h_blank_reg0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \h_blank_reg0_carry__1_i_1_n_0\,
      DI(1) => \h_blank_reg0_carry__1_i_2_n_0\,
      DI(0) => \h_blank_reg0_carry__1_i_3_n_0\,
      O(3 downto 0) => h_blank_reg01_out(11 downto 8),
      S(3) => \h_blank_reg0_carry__1_i_4_n_0\,
      S(2) => \h_blank_reg0_carry__1_i_5_n_0\,
      S(1) => \h_blank_reg0_carry__1_i_6_n_0\,
      S(0) => \h_blank_reg0_carry__1_i_7_n_0\
    );
\h_blank_reg0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => h_cycle_count_reg(9),
      I1 => \h_active_count_reg_n_0_[9]\,
      O => \h_blank_reg0_carry__1_i_1_n_0\
    );
\h_blank_reg0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => h_cycle_count_reg(8),
      I1 => \h_active_count_reg_n_0_[8]\,
      O => \h_blank_reg0_carry__1_i_2_n_0\
    );
\h_blank_reg0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => h_cycle_count_reg(7),
      I1 => \h_active_count_reg_n_0_[7]\,
      O => \h_blank_reg0_carry__1_i_3_n_0\
    );
\h_blank_reg0_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \h_active_count_reg_n_0_[10]\,
      I1 => h_cycle_count_reg(10),
      I2 => \h_active_count_reg_n_0_[11]\,
      I3 => h_cycle_count_reg(11),
      O => \h_blank_reg0_carry__1_i_4_n_0\
    );
\h_blank_reg0_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \h_active_count_reg_n_0_[9]\,
      I1 => h_cycle_count_reg(9),
      I2 => \h_active_count_reg_n_0_[10]\,
      I3 => h_cycle_count_reg(10),
      O => \h_blank_reg0_carry__1_i_5_n_0\
    );
\h_blank_reg0_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \h_active_count_reg_n_0_[8]\,
      I1 => h_cycle_count_reg(8),
      I2 => \h_active_count_reg_n_0_[9]\,
      I3 => h_cycle_count_reg(9),
      O => \h_blank_reg0_carry__1_i_6_n_0\
    );
\h_blank_reg0_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \h_active_count_reg_n_0_[7]\,
      I1 => h_cycle_count_reg(7),
      I2 => \h_active_count_reg_n_0_[8]\,
      I3 => h_cycle_count_reg(8),
      O => \h_blank_reg0_carry__1_i_7_n_0\
    );
h_blank_reg0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => h_cycle_count_reg(2),
      I1 => \h_active_count_reg_n_0_[2]\,
      O => h_blank_reg0_carry_i_1_n_0
    );
h_blank_reg0_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \h_active_count_reg_n_0_[1]\,
      O => p_0_in(1)
    );
h_blank_reg0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \h_active_count_reg_n_0_[2]\,
      I1 => h_cycle_count_reg(2),
      I2 => \h_active_count_reg_n_0_[3]\,
      I3 => h_cycle_count_reg(3),
      O => h_blank_reg0_carry_i_3_n_0
    );
h_blank_reg0_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \h_active_count_reg_n_0_[1]\,
      I1 => \h_active_count_reg_n_0_[2]\,
      I2 => h_cycle_count_reg(2),
      O => h_blank_reg0_carry_i_4_n_0
    );
h_blank_reg0_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \h_active_count_reg_n_0_[1]\,
      I1 => h_cycle_count_reg(1),
      O => h_blank_reg0_carry_i_5_n_0
    );
h_blank_reg0_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => h_cycle_count_reg(0),
      I1 => \h_active_count_reg_n_0_[0]\,
      O => h_blank_reg0_carry_i_6_n_0
    );
\h_blank_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \h_total_reg[11]_i_1_n_0\,
      D => h_blank_reg01_out(0),
      Q => h_blank(0),
      R => reset
    );
\h_blank_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \h_total_reg[11]_i_1_n_0\,
      D => h_blank_reg01_out(10),
      Q => h_blank(10),
      R => reset
    );
\h_blank_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \h_total_reg[11]_i_1_n_0\,
      D => h_blank_reg01_out(11),
      Q => h_blank(11),
      R => reset
    );
\h_blank_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \h_total_reg[11]_i_1_n_0\,
      D => h_blank_reg01_out(1),
      Q => h_blank(1),
      R => reset
    );
\h_blank_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \h_total_reg[11]_i_1_n_0\,
      D => h_blank_reg01_out(2),
      Q => h_blank(2),
      R => reset
    );
\h_blank_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \h_total_reg[11]_i_1_n_0\,
      D => h_blank_reg01_out(3),
      Q => h_blank(3),
      R => reset
    );
\h_blank_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \h_total_reg[11]_i_1_n_0\,
      D => h_blank_reg01_out(4),
      Q => h_blank(4),
      R => reset
    );
\h_blank_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \h_total_reg[11]_i_1_n_0\,
      D => h_blank_reg01_out(5),
      Q => h_blank(5),
      R => reset
    );
\h_blank_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \h_total_reg[11]_i_1_n_0\,
      D => h_blank_reg01_out(6),
      Q => h_blank(6),
      R => reset
    );
\h_blank_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \h_total_reg[11]_i_1_n_0\,
      D => h_blank_reg01_out(7),
      Q => h_blank(7),
      R => reset
    );
\h_blank_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \h_total_reg[11]_i_1_n_0\,
      D => h_blank_reg01_out(8),
      Q => h_blank(8),
      R => reset
    );
\h_blank_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \h_total_reg[11]_i_1_n_0\,
      D => h_blank_reg01_out(9),
      Q => h_blank(9),
      R => reset
    );
\h_cycle_count[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEAEFFAE"
    )
        port map (
      I0 => reset,
      I1 => vde,
      I2 => vde_prev,
      I3 => vsync,
      I4 => vsync_prev,
      O => \h_cycle_count[0]_i_1_n_0\
    );
\h_cycle_count[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_cycle_count_reg(0),
      O => \h_cycle_count[0]_i_3_n_0\
    );
\h_cycle_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => '1',
      D => \h_cycle_count_reg[0]_i_2_n_7\,
      Q => h_cycle_count_reg(0),
      R => \h_cycle_count[0]_i_1_n_0\
    );
\h_cycle_count_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \h_cycle_count_reg[0]_i_2_n_0\,
      CO(2) => \h_cycle_count_reg[0]_i_2_n_1\,
      CO(1) => \h_cycle_count_reg[0]_i_2_n_2\,
      CO(0) => \h_cycle_count_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \h_cycle_count_reg[0]_i_2_n_4\,
      O(2) => \h_cycle_count_reg[0]_i_2_n_5\,
      O(1) => \h_cycle_count_reg[0]_i_2_n_6\,
      O(0) => \h_cycle_count_reg[0]_i_2_n_7\,
      S(3 downto 1) => h_cycle_count_reg(3 downto 1),
      S(0) => \h_cycle_count[0]_i_3_n_0\
    );
\h_cycle_count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => '1',
      D => \h_cycle_count_reg[8]_i_1_n_5\,
      Q => h_cycle_count_reg(10),
      R => \h_cycle_count[0]_i_1_n_0\
    );
\h_cycle_count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => '1',
      D => \h_cycle_count_reg[8]_i_1_n_4\,
      Q => h_cycle_count_reg(11),
      R => \h_cycle_count[0]_i_1_n_0\
    );
\h_cycle_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => '1',
      D => \h_cycle_count_reg[0]_i_2_n_6\,
      Q => h_cycle_count_reg(1),
      R => \h_cycle_count[0]_i_1_n_0\
    );
\h_cycle_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => '1',
      D => \h_cycle_count_reg[0]_i_2_n_5\,
      Q => h_cycle_count_reg(2),
      R => \h_cycle_count[0]_i_1_n_0\
    );
\h_cycle_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => '1',
      D => \h_cycle_count_reg[0]_i_2_n_4\,
      Q => h_cycle_count_reg(3),
      R => \h_cycle_count[0]_i_1_n_0\
    );
\h_cycle_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => '1',
      D => \h_cycle_count_reg[4]_i_1_n_7\,
      Q => h_cycle_count_reg(4),
      R => \h_cycle_count[0]_i_1_n_0\
    );
\h_cycle_count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \h_cycle_count_reg[0]_i_2_n_0\,
      CO(3) => \h_cycle_count_reg[4]_i_1_n_0\,
      CO(2) => \h_cycle_count_reg[4]_i_1_n_1\,
      CO(1) => \h_cycle_count_reg[4]_i_1_n_2\,
      CO(0) => \h_cycle_count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \h_cycle_count_reg[4]_i_1_n_4\,
      O(2) => \h_cycle_count_reg[4]_i_1_n_5\,
      O(1) => \h_cycle_count_reg[4]_i_1_n_6\,
      O(0) => \h_cycle_count_reg[4]_i_1_n_7\,
      S(3 downto 0) => h_cycle_count_reg(7 downto 4)
    );
\h_cycle_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => '1',
      D => \h_cycle_count_reg[4]_i_1_n_6\,
      Q => h_cycle_count_reg(5),
      R => \h_cycle_count[0]_i_1_n_0\
    );
\h_cycle_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => '1',
      D => \h_cycle_count_reg[4]_i_1_n_5\,
      Q => h_cycle_count_reg(6),
      R => \h_cycle_count[0]_i_1_n_0\
    );
\h_cycle_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => '1',
      D => \h_cycle_count_reg[4]_i_1_n_4\,
      Q => h_cycle_count_reg(7),
      R => \h_cycle_count[0]_i_1_n_0\
    );
\h_cycle_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => '1',
      D => \h_cycle_count_reg[8]_i_1_n_7\,
      Q => h_cycle_count_reg(8),
      R => \h_cycle_count[0]_i_1_n_0\
    );
\h_cycle_count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \h_cycle_count_reg[4]_i_1_n_0\,
      CO(3) => \NLW_h_cycle_count_reg[8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \h_cycle_count_reg[8]_i_1_n_1\,
      CO(1) => \h_cycle_count_reg[8]_i_1_n_2\,
      CO(0) => \h_cycle_count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \h_cycle_count_reg[8]_i_1_n_4\,
      O(2) => \h_cycle_count_reg[8]_i_1_n_5\,
      O(1) => \h_cycle_count_reg[8]_i_1_n_6\,
      O(0) => \h_cycle_count_reg[8]_i_1_n_7\,
      S(3 downto 0) => h_cycle_count_reg(11 downto 8)
    );
\h_cycle_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => '1',
      D => \h_cycle_count_reg[8]_i_1_n_6\,
      Q => h_cycle_count_reg(9),
      R => \h_cycle_count[0]_i_1_n_0\
    );
\h_total_reg[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_cycle_count_reg(0),
      O => plusOp(0)
    );
\h_total_reg[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000808"
    )
        port map (
      I0 => first_line_seen,
      I1 => vde,
      I2 => vde_prev,
      I3 => vsync_prev,
      I4 => vsync,
      O => \h_total_reg[11]_i_1_n_0\
    );
\h_total_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \h_total_reg[11]_i_1_n_0\,
      D => plusOp(0),
      Q => h_total(0),
      R => reset
    );
\h_total_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \h_total_reg[11]_i_1_n_0\,
      D => plusOp(10),
      Q => h_total(10),
      R => reset
    );
\h_total_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \h_total_reg[11]_i_1_n_0\,
      D => plusOp(11),
      Q => h_total(11),
      R => reset
    );
\h_total_reg_reg[11]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \h_total_reg_reg[8]_i_1_n_0\,
      CO(3 downto 2) => \NLW_h_total_reg_reg[11]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \h_total_reg_reg[11]_i_2_n_2\,
      CO(0) => \h_total_reg_reg[11]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_h_total_reg_reg[11]_i_2_O_UNCONNECTED\(3),
      O(2 downto 0) => plusOp(11 downto 9),
      S(3) => '0',
      S(2 downto 0) => h_cycle_count_reg(11 downto 9)
    );
\h_total_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \h_total_reg[11]_i_1_n_0\,
      D => plusOp(1),
      Q => h_total(1),
      R => reset
    );
\h_total_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \h_total_reg[11]_i_1_n_0\,
      D => plusOp(2),
      Q => h_total(2),
      R => reset
    );
\h_total_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \h_total_reg[11]_i_1_n_0\,
      D => plusOp(3),
      Q => h_total(3),
      R => reset
    );
\h_total_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \h_total_reg[11]_i_1_n_0\,
      D => plusOp(4),
      Q => h_total(4),
      R => reset
    );
\h_total_reg_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \h_total_reg_reg[4]_i_1_n_0\,
      CO(2) => \h_total_reg_reg[4]_i_1_n_1\,
      CO(1) => \h_total_reg_reg[4]_i_1_n_2\,
      CO(0) => \h_total_reg_reg[4]_i_1_n_3\,
      CYINIT => h_cycle_count_reg(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(4 downto 1),
      S(3 downto 0) => h_cycle_count_reg(4 downto 1)
    );
\h_total_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \h_total_reg[11]_i_1_n_0\,
      D => plusOp(5),
      Q => h_total(5),
      R => reset
    );
\h_total_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \h_total_reg[11]_i_1_n_0\,
      D => plusOp(6),
      Q => h_total(6),
      R => reset
    );
\h_total_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \h_total_reg[11]_i_1_n_0\,
      D => plusOp(7),
      Q => h_total(7),
      R => reset
    );
\h_total_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \h_total_reg[11]_i_1_n_0\,
      D => plusOp(8),
      Q => h_total(8),
      R => reset
    );
\h_total_reg_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \h_total_reg_reg[4]_i_1_n_0\,
      CO(3) => \h_total_reg_reg[8]_i_1_n_0\,
      CO(2) => \h_total_reg_reg[8]_i_1_n_1\,
      CO(1) => \h_total_reg_reg[8]_i_1_n_2\,
      CO(0) => \h_total_reg_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => plusOp(8 downto 5),
      S(3 downto 0) => h_cycle_count_reg(8 downto 5)
    );
\h_total_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \h_total_reg[11]_i_1_n_0\,
      D => plusOp(9),
      Q => h_total(9),
      R => reset
    );
h_valid_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000008A0000"
    )
        port map (
      I0 => first_line_seen,
      I1 => vsync_prev,
      I2 => vsync,
      I3 => vde_prev,
      I4 => vde,
      I5 => reset,
      O => h_valid_reg_i_1_n_0
    );
h_valid_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => '1',
      D => h_valid_reg_i_1_n_0,
      Q => mesure_valid,
      R => '0'
    );
hsync_prev_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => '1',
      D => hsync,
      Q => hsync_prev,
      R => reset
    );
plusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => plusOp_carry_n_0,
      CO(2) => plusOp_carry_n_1,
      CO(1) => plusOp_carry_n_2,
      CO(0) => plusOp_carry_n_3,
      CYINIT => \v_line_count_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3) => plusOp_carry_n_4,
      O(2) => plusOp_carry_n_5,
      O(1) => plusOp_carry_n_6,
      O(0) => plusOp_carry_n_7,
      S(3) => \v_line_count_reg_n_0_[4]\,
      S(2) => \v_line_count_reg_n_0_[3]\,
      S(1) => \v_line_count_reg_n_0_[2]\,
      S(0) => \v_line_count_reg_n_0_[1]\
    );
\plusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => plusOp_carry_n_0,
      CO(3) => \plusOp_carry__0_n_0\,
      CO(2) => \plusOp_carry__0_n_1\,
      CO(1) => \plusOp_carry__0_n_2\,
      CO(0) => \plusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \plusOp_carry__0_n_4\,
      O(2) => \plusOp_carry__0_n_5\,
      O(1) => \plusOp_carry__0_n_6\,
      O(0) => \plusOp_carry__0_n_7\,
      S(3) => \v_line_count_reg_n_0_[8]\,
      S(2) => \v_line_count_reg_n_0_[7]\,
      S(1) => \v_line_count_reg_n_0_[6]\,
      S(0) => \v_line_count_reg_n_0_[5]\
    );
\plusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__0_n_0\,
      CO(3 downto 2) => \NLW_plusOp_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \plusOp_carry__1_n_2\,
      CO(0) => \plusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_plusOp_carry__1_O_UNCONNECTED\(3),
      O(2) => \plusOp_carry__1_n_5\,
      O(1) => \plusOp_carry__1_n_6\,
      O(0) => \plusOp_carry__1_n_7\,
      S(3) => '0',
      S(2) => \v_line_count_reg_n_0_[11]\,
      S(1) => \v_line_count_reg_n_0_[10]\,
      S(0) => \v_line_count_reg_n_0_[9]\
    );
\v_active_count[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B4BB0F00"
    )
        port map (
      I0 => vsync_prev,
      I1 => vsync,
      I2 => vde_prev,
      I3 => vde,
      I4 => v_active_count(0),
      O => \v_active_count[0]_i_1_n_0\
    );
\v_active_count[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \v_active_count_reg[11]_i_3_n_6\,
      I1 => vsync_prev,
      I2 => vsync,
      O => \v_active_count[10]_i_1_n_0\
    );
\v_active_count[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => vsync_prev,
      I1 => vsync,
      I2 => vde_prev,
      I3 => vde,
      O => v_active_count_0
    );
\v_active_count[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \v_active_count_reg[11]_i_3_n_5\,
      I1 => vsync_prev,
      I2 => vsync,
      O => \v_active_count[11]_i_2_n_0\
    );
\v_active_count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \v_active_count_reg[4]_i_2_n_7\,
      I1 => vsync_prev,
      I2 => vsync,
      O => \v_active_count[1]_i_1_n_0\
    );
\v_active_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \v_active_count_reg[4]_i_2_n_6\,
      I1 => vsync_prev,
      I2 => vsync,
      O => \v_active_count[2]_i_1_n_0\
    );
\v_active_count[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \v_active_count_reg[4]_i_2_n_5\,
      I1 => vsync_prev,
      I2 => vsync,
      O => \v_active_count[3]_i_1_n_0\
    );
\v_active_count[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \v_active_count_reg[4]_i_2_n_4\,
      I1 => vsync_prev,
      I2 => vsync,
      O => \v_active_count[4]_i_1_n_0\
    );
\v_active_count[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \v_active_count_reg[8]_i_2_n_7\,
      I1 => vsync_prev,
      I2 => vsync,
      O => \v_active_count[5]_i_1_n_0\
    );
\v_active_count[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \v_active_count_reg[8]_i_2_n_6\,
      I1 => vsync_prev,
      I2 => vsync,
      O => \v_active_count[6]_i_1_n_0\
    );
\v_active_count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \v_active_count_reg[8]_i_2_n_5\,
      I1 => vsync_prev,
      I2 => vsync,
      O => \v_active_count[7]_i_1_n_0\
    );
\v_active_count[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \v_active_count_reg[8]_i_2_n_4\,
      I1 => vsync_prev,
      I2 => vsync,
      O => \v_active_count[8]_i_1_n_0\
    );
\v_active_count[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \v_active_count_reg[11]_i_3_n_7\,
      I1 => vsync_prev,
      I2 => vsync,
      O => \v_active_count[9]_i_1_n_0\
    );
\v_active_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => '1',
      D => \v_active_count[0]_i_1_n_0\,
      Q => v_active_count(0),
      R => reset
    );
\v_active_count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => v_active_count_0,
      D => \v_active_count[10]_i_1_n_0\,
      Q => v_active_count(10),
      R => v_line_count(11)
    );
\v_active_count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => v_active_count_0,
      D => \v_active_count[11]_i_2_n_0\,
      Q => v_active_count(11),
      R => v_line_count(11)
    );
\v_active_count_reg[11]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \v_active_count_reg[8]_i_2_n_0\,
      CO(3 downto 2) => \NLW_v_active_count_reg[11]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \v_active_count_reg[11]_i_3_n_2\,
      CO(0) => \v_active_count_reg[11]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_v_active_count_reg[11]_i_3_O_UNCONNECTED\(3),
      O(2) => \v_active_count_reg[11]_i_3_n_5\,
      O(1) => \v_active_count_reg[11]_i_3_n_6\,
      O(0) => \v_active_count_reg[11]_i_3_n_7\,
      S(3) => '0',
      S(2 downto 0) => v_active_count(11 downto 9)
    );
\v_active_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => v_active_count_0,
      D => \v_active_count[1]_i_1_n_0\,
      Q => v_active_count(1),
      R => v_line_count(11)
    );
\v_active_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => v_active_count_0,
      D => \v_active_count[2]_i_1_n_0\,
      Q => v_active_count(2),
      R => v_line_count(11)
    );
\v_active_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => v_active_count_0,
      D => \v_active_count[3]_i_1_n_0\,
      Q => v_active_count(3),
      R => v_line_count(11)
    );
\v_active_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => v_active_count_0,
      D => \v_active_count[4]_i_1_n_0\,
      Q => v_active_count(4),
      R => v_line_count(11)
    );
\v_active_count_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \v_active_count_reg[4]_i_2_n_0\,
      CO(2) => \v_active_count_reg[4]_i_2_n_1\,
      CO(1) => \v_active_count_reg[4]_i_2_n_2\,
      CO(0) => \v_active_count_reg[4]_i_2_n_3\,
      CYINIT => v_active_count(0),
      DI(3 downto 0) => B"0000",
      O(3) => \v_active_count_reg[4]_i_2_n_4\,
      O(2) => \v_active_count_reg[4]_i_2_n_5\,
      O(1) => \v_active_count_reg[4]_i_2_n_6\,
      O(0) => \v_active_count_reg[4]_i_2_n_7\,
      S(3 downto 0) => v_active_count(4 downto 1)
    );
\v_active_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => v_active_count_0,
      D => \v_active_count[5]_i_1_n_0\,
      Q => v_active_count(5),
      R => v_line_count(11)
    );
\v_active_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => v_active_count_0,
      D => \v_active_count[6]_i_1_n_0\,
      Q => v_active_count(6),
      R => v_line_count(11)
    );
\v_active_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => v_active_count_0,
      D => \v_active_count[7]_i_1_n_0\,
      Q => v_active_count(7),
      R => v_line_count(11)
    );
\v_active_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => v_active_count_0,
      D => \v_active_count[8]_i_1_n_0\,
      Q => v_active_count(8),
      R => v_line_count(11)
    );
\v_active_count_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \v_active_count_reg[4]_i_2_n_0\,
      CO(3) => \v_active_count_reg[8]_i_2_n_0\,
      CO(2) => \v_active_count_reg[8]_i_2_n_1\,
      CO(1) => \v_active_count_reg[8]_i_2_n_2\,
      CO(0) => \v_active_count_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \v_active_count_reg[8]_i_2_n_4\,
      O(2) => \v_active_count_reg[8]_i_2_n_5\,
      O(1) => \v_active_count_reg[8]_i_2_n_6\,
      O(0) => \v_active_count_reg[8]_i_2_n_7\,
      S(3 downto 0) => v_active_count(8 downto 5)
    );
\v_active_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => v_active_count_0,
      D => \v_active_count[9]_i_1_n_0\,
      Q => v_active_count(9),
      R => v_line_count(11)
    );
\v_active_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => v_total_reg,
      D => v_active_count(0),
      Q => v_active(0),
      R => reset
    );
\v_active_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => v_total_reg,
      D => v_active_count(10),
      Q => v_active(10),
      R => reset
    );
\v_active_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => v_total_reg,
      D => v_active_count(11),
      Q => v_active(11),
      R => reset
    );
\v_active_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => v_total_reg,
      D => v_active_count(1),
      Q => v_active(1),
      R => reset
    );
\v_active_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => v_total_reg,
      D => v_active_count(2),
      Q => v_active(2),
      R => reset
    );
\v_active_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => v_total_reg,
      D => v_active_count(3),
      Q => v_active(3),
      R => reset
    );
\v_active_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => v_total_reg,
      D => v_active_count(4),
      Q => v_active(4),
      R => reset
    );
\v_active_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => v_total_reg,
      D => v_active_count(5),
      Q => v_active(5),
      R => reset
    );
\v_active_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => v_total_reg,
      D => v_active_count(6),
      Q => v_active(6),
      R => reset
    );
\v_active_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => v_total_reg,
      D => v_active_count(7),
      Q => v_active(7),
      R => reset
    );
\v_active_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => v_total_reg,
      D => v_active_count(8),
      Q => v_active(8),
      R => reset
    );
\v_active_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => v_total_reg,
      D => v_active_count(9),
      Q => v_active(9),
      R => reset
    );
v_blank_reg0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => v_blank_reg0_carry_n_0,
      CO(2) => v_blank_reg0_carry_n_1,
      CO(1) => v_blank_reg0_carry_n_2,
      CO(0) => v_blank_reg0_carry_n_3,
      CYINIT => '1',
      DI(3) => \v_line_count_reg_n_0_[3]\,
      DI(2) => \v_line_count_reg_n_0_[2]\,
      DI(1) => \v_line_count_reg_n_0_[1]\,
      DI(0) => \v_line_count_reg_n_0_[0]\,
      O(3 downto 0) => v_blank_reg00_out(3 downto 0),
      S(3) => v_blank_reg0_carry_i_1_n_0,
      S(2) => v_blank_reg0_carry_i_2_n_0,
      S(1) => v_blank_reg0_carry_i_3_n_0,
      S(0) => v_blank_reg0_carry_i_4_n_0
    );
\v_blank_reg0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => v_blank_reg0_carry_n_0,
      CO(3) => \v_blank_reg0_carry__0_n_0\,
      CO(2) => \v_blank_reg0_carry__0_n_1\,
      CO(1) => \v_blank_reg0_carry__0_n_2\,
      CO(0) => \v_blank_reg0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \v_line_count_reg_n_0_[7]\,
      DI(2) => \v_line_count_reg_n_0_[6]\,
      DI(1) => \v_line_count_reg_n_0_[5]\,
      DI(0) => \v_line_count_reg_n_0_[4]\,
      O(3 downto 0) => v_blank_reg00_out(7 downto 4),
      S(3) => \v_blank_reg0_carry__0_i_1_n_0\,
      S(2) => \v_blank_reg0_carry__0_i_2_n_0\,
      S(1) => \v_blank_reg0_carry__0_i_3_n_0\,
      S(0) => \v_blank_reg0_carry__0_i_4_n_0\
    );
\v_blank_reg0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \v_line_count_reg_n_0_[7]\,
      I1 => v_active_count(7),
      O => \v_blank_reg0_carry__0_i_1_n_0\
    );
\v_blank_reg0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \v_line_count_reg_n_0_[6]\,
      I1 => v_active_count(6),
      O => \v_blank_reg0_carry__0_i_2_n_0\
    );
\v_blank_reg0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \v_line_count_reg_n_0_[5]\,
      I1 => v_active_count(5),
      O => \v_blank_reg0_carry__0_i_3_n_0\
    );
\v_blank_reg0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \v_line_count_reg_n_0_[4]\,
      I1 => v_active_count(4),
      O => \v_blank_reg0_carry__0_i_4_n_0\
    );
\v_blank_reg0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \v_blank_reg0_carry__0_n_0\,
      CO(3) => \NLW_v_blank_reg0_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \v_blank_reg0_carry__1_n_1\,
      CO(1) => \v_blank_reg0_carry__1_n_2\,
      CO(0) => \v_blank_reg0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \v_line_count_reg_n_0_[10]\,
      DI(1) => \v_line_count_reg_n_0_[9]\,
      DI(0) => \v_line_count_reg_n_0_[8]\,
      O(3 downto 0) => v_blank_reg00_out(11 downto 8),
      S(3) => \v_blank_reg0_carry__1_i_1_n_0\,
      S(2) => \v_blank_reg0_carry__1_i_2_n_0\,
      S(1) => \v_blank_reg0_carry__1_i_3_n_0\,
      S(0) => \v_blank_reg0_carry__1_i_4_n_0\
    );
\v_blank_reg0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \v_line_count_reg_n_0_[11]\,
      I1 => v_active_count(11),
      O => \v_blank_reg0_carry__1_i_1_n_0\
    );
\v_blank_reg0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \v_line_count_reg_n_0_[10]\,
      I1 => v_active_count(10),
      O => \v_blank_reg0_carry__1_i_2_n_0\
    );
\v_blank_reg0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \v_line_count_reg_n_0_[9]\,
      I1 => v_active_count(9),
      O => \v_blank_reg0_carry__1_i_3_n_0\
    );
\v_blank_reg0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \v_line_count_reg_n_0_[8]\,
      I1 => v_active_count(8),
      O => \v_blank_reg0_carry__1_i_4_n_0\
    );
v_blank_reg0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \v_line_count_reg_n_0_[3]\,
      I1 => v_active_count(3),
      O => v_blank_reg0_carry_i_1_n_0
    );
v_blank_reg0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \v_line_count_reg_n_0_[2]\,
      I1 => v_active_count(2),
      O => v_blank_reg0_carry_i_2_n_0
    );
v_blank_reg0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \v_line_count_reg_n_0_[1]\,
      I1 => v_active_count(1),
      O => v_blank_reg0_carry_i_3_n_0
    );
v_blank_reg0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \v_line_count_reg_n_0_[0]\,
      I1 => v_active_count(0),
      O => v_blank_reg0_carry_i_4_n_0
    );
v_blank_reg1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => v_blank_reg1_carry_n_0,
      CO(2) => v_blank_reg1_carry_n_1,
      CO(1) => v_blank_reg1_carry_n_2,
      CO(0) => v_blank_reg1_carry_n_3,
      CYINIT => '1',
      DI(3) => v_blank_reg1_carry_i_1_n_0,
      DI(2) => v_blank_reg1_carry_i_2_n_0,
      DI(1) => v_blank_reg1_carry_i_3_n_0,
      DI(0) => v_blank_reg1_carry_i_4_n_0,
      O(3 downto 0) => NLW_v_blank_reg1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => v_blank_reg1_carry_i_5_n_0,
      S(2) => v_blank_reg1_carry_i_6_n_0,
      S(1) => v_blank_reg1_carry_i_7_n_0,
      S(0) => v_blank_reg1_carry_i_8_n_0
    );
\v_blank_reg1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => v_blank_reg1_carry_n_0,
      CO(3 downto 2) => \NLW_v_blank_reg1_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \v_blank_reg1_carry__0_n_2\,
      CO(0) => \v_blank_reg1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \v_blank_reg1_carry__0_i_1_n_0\,
      DI(0) => \v_blank_reg1_carry__0_i_2_n_0\,
      O(3 downto 0) => \NLW_v_blank_reg1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \v_blank_reg1_carry__0_i_3_n_0\,
      S(0) => \v_blank_reg1_carry__0_i_4_n_0\
    );
\v_blank_reg1_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \v_line_count_reg_n_0_[10]\,
      I1 => v_active_count(10),
      I2 => v_active_count(11),
      I3 => \v_line_count_reg_n_0_[11]\,
      O => \v_blank_reg1_carry__0_i_1_n_0\
    );
\v_blank_reg1_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \v_line_count_reg_n_0_[8]\,
      I1 => v_active_count(8),
      I2 => v_active_count(9),
      I3 => \v_line_count_reg_n_0_[9]\,
      O => \v_blank_reg1_carry__0_i_2_n_0\
    );
\v_blank_reg1_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \v_line_count_reg_n_0_[10]\,
      I1 => v_active_count(10),
      I2 => \v_line_count_reg_n_0_[11]\,
      I3 => v_active_count(11),
      O => \v_blank_reg1_carry__0_i_3_n_0\
    );
\v_blank_reg1_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \v_line_count_reg_n_0_[8]\,
      I1 => v_active_count(8),
      I2 => \v_line_count_reg_n_0_[9]\,
      I3 => v_active_count(9),
      O => \v_blank_reg1_carry__0_i_4_n_0\
    );
v_blank_reg1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \v_line_count_reg_n_0_[6]\,
      I1 => v_active_count(6),
      I2 => v_active_count(7),
      I3 => \v_line_count_reg_n_0_[7]\,
      O => v_blank_reg1_carry_i_1_n_0
    );
v_blank_reg1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \v_line_count_reg_n_0_[4]\,
      I1 => v_active_count(4),
      I2 => v_active_count(5),
      I3 => \v_line_count_reg_n_0_[5]\,
      O => v_blank_reg1_carry_i_2_n_0
    );
v_blank_reg1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \v_line_count_reg_n_0_[2]\,
      I1 => v_active_count(2),
      I2 => v_active_count(3),
      I3 => \v_line_count_reg_n_0_[3]\,
      O => v_blank_reg1_carry_i_3_n_0
    );
v_blank_reg1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \v_line_count_reg_n_0_[0]\,
      I1 => v_active_count(0),
      I2 => v_active_count(1),
      I3 => \v_line_count_reg_n_0_[1]\,
      O => v_blank_reg1_carry_i_4_n_0
    );
v_blank_reg1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \v_line_count_reg_n_0_[6]\,
      I1 => v_active_count(6),
      I2 => \v_line_count_reg_n_0_[7]\,
      I3 => v_active_count(7),
      O => v_blank_reg1_carry_i_5_n_0
    );
v_blank_reg1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \v_line_count_reg_n_0_[4]\,
      I1 => v_active_count(4),
      I2 => \v_line_count_reg_n_0_[5]\,
      I3 => v_active_count(5),
      O => v_blank_reg1_carry_i_6_n_0
    );
v_blank_reg1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \v_line_count_reg_n_0_[2]\,
      I1 => v_active_count(2),
      I2 => \v_line_count_reg_n_0_[3]\,
      I3 => v_active_count(3),
      O => v_blank_reg1_carry_i_7_n_0
    );
v_blank_reg1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \v_line_count_reg_n_0_[0]\,
      I1 => v_active_count(0),
      I2 => \v_line_count_reg_n_0_[1]\,
      I3 => v_active_count(1),
      O => v_blank_reg1_carry_i_8_n_0
    );
\v_blank_reg[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAEAA"
    )
        port map (
      I0 => reset,
      I1 => first_frame_seen,
      I2 => \v_blank_reg1_carry__0_n_2\,
      I3 => vsync,
      I4 => vsync_prev,
      O => \v_blank_reg[11]_i_1_n_0\
    );
\v_blank_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => v_total_reg,
      D => v_blank_reg00_out(0),
      Q => v_blank(0),
      R => \v_blank_reg[11]_i_1_n_0\
    );
\v_blank_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => v_total_reg,
      D => v_blank_reg00_out(10),
      Q => v_blank(10),
      R => \v_blank_reg[11]_i_1_n_0\
    );
\v_blank_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => v_total_reg,
      D => v_blank_reg00_out(11),
      Q => v_blank(11),
      R => \v_blank_reg[11]_i_1_n_0\
    );
\v_blank_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => v_total_reg,
      D => v_blank_reg00_out(1),
      Q => v_blank(1),
      R => \v_blank_reg[11]_i_1_n_0\
    );
\v_blank_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => v_total_reg,
      D => v_blank_reg00_out(2),
      Q => v_blank(2),
      R => \v_blank_reg[11]_i_1_n_0\
    );
\v_blank_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => v_total_reg,
      D => v_blank_reg00_out(3),
      Q => v_blank(3),
      R => \v_blank_reg[11]_i_1_n_0\
    );
\v_blank_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => v_total_reg,
      D => v_blank_reg00_out(4),
      Q => v_blank(4),
      R => \v_blank_reg[11]_i_1_n_0\
    );
\v_blank_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => v_total_reg,
      D => v_blank_reg00_out(5),
      Q => v_blank(5),
      R => \v_blank_reg[11]_i_1_n_0\
    );
\v_blank_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => v_total_reg,
      D => v_blank_reg00_out(6),
      Q => v_blank(6),
      R => \v_blank_reg[11]_i_1_n_0\
    );
\v_blank_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => v_total_reg,
      D => v_blank_reg00_out(7),
      Q => v_blank(7),
      R => \v_blank_reg[11]_i_1_n_0\
    );
\v_blank_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => v_total_reg,
      D => v_blank_reg00_out(8),
      Q => v_blank(8),
      R => \v_blank_reg[11]_i_1_n_0\
    );
\v_blank_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => v_total_reg,
      D => v_blank_reg00_out(9),
      Q => v_blank(9),
      R => \v_blank_reg[11]_i_1_n_0\
    );
\v_line_count[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B4BB0F00"
    )
        port map (
      I0 => vsync_prev,
      I1 => vsync,
      I2 => hsync_prev,
      I3 => hsync,
      I4 => \v_line_count_reg_n_0_[0]\,
      O => \v_line_count[0]_i_1_n_0\
    );
\v_line_count[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \plusOp_carry__1_n_6\,
      I1 => vsync_prev,
      I2 => vsync,
      O => p_1_in(10)
    );
\v_line_count[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => vsync_prev,
      I1 => vsync,
      I2 => reset,
      O => v_line_count(11)
    );
\v_line_count[11]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => vsync_prev,
      I1 => vsync,
      I2 => hsync_prev,
      I3 => hsync,
      O => \v_line_count[11]_i_2_n_0\
    );
\v_line_count[11]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \plusOp_carry__1_n_5\,
      I1 => vsync_prev,
      I2 => vsync,
      O => p_1_in(11)
    );
\v_line_count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => plusOp_carry_n_7,
      I1 => vsync_prev,
      I2 => vsync,
      O => p_1_in(1)
    );
\v_line_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => plusOp_carry_n_6,
      I1 => vsync_prev,
      I2 => vsync,
      O => p_1_in(2)
    );
\v_line_count[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => plusOp_carry_n_5,
      I1 => vsync_prev,
      I2 => vsync,
      O => p_1_in(3)
    );
\v_line_count[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => plusOp_carry_n_4,
      I1 => vsync_prev,
      I2 => vsync,
      O => p_1_in(4)
    );
\v_line_count[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \plusOp_carry__0_n_7\,
      I1 => vsync_prev,
      I2 => vsync,
      O => p_1_in(5)
    );
\v_line_count[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \plusOp_carry__0_n_6\,
      I1 => vsync_prev,
      I2 => vsync,
      O => p_1_in(6)
    );
\v_line_count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \plusOp_carry__0_n_5\,
      I1 => vsync_prev,
      I2 => vsync,
      O => p_1_in(7)
    );
\v_line_count[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \plusOp_carry__0_n_4\,
      I1 => vsync_prev,
      I2 => vsync,
      O => p_1_in(8)
    );
\v_line_count[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \plusOp_carry__1_n_7\,
      I1 => vsync_prev,
      I2 => vsync,
      O => p_1_in(9)
    );
\v_line_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => '1',
      D => \v_line_count[0]_i_1_n_0\,
      Q => \v_line_count_reg_n_0_[0]\,
      R => reset
    );
\v_line_count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \v_line_count[11]_i_2_n_0\,
      D => p_1_in(10),
      Q => \v_line_count_reg_n_0_[10]\,
      R => v_line_count(11)
    );
\v_line_count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \v_line_count[11]_i_2_n_0\,
      D => p_1_in(11),
      Q => \v_line_count_reg_n_0_[11]\,
      R => v_line_count(11)
    );
\v_line_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \v_line_count[11]_i_2_n_0\,
      D => p_1_in(1),
      Q => \v_line_count_reg_n_0_[1]\,
      R => v_line_count(11)
    );
\v_line_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \v_line_count[11]_i_2_n_0\,
      D => p_1_in(2),
      Q => \v_line_count_reg_n_0_[2]\,
      R => v_line_count(11)
    );
\v_line_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \v_line_count[11]_i_2_n_0\,
      D => p_1_in(3),
      Q => \v_line_count_reg_n_0_[3]\,
      R => v_line_count(11)
    );
\v_line_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \v_line_count[11]_i_2_n_0\,
      D => p_1_in(4),
      Q => \v_line_count_reg_n_0_[4]\,
      R => v_line_count(11)
    );
\v_line_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \v_line_count[11]_i_2_n_0\,
      D => p_1_in(5),
      Q => \v_line_count_reg_n_0_[5]\,
      R => v_line_count(11)
    );
\v_line_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \v_line_count[11]_i_2_n_0\,
      D => p_1_in(6),
      Q => \v_line_count_reg_n_0_[6]\,
      R => v_line_count(11)
    );
\v_line_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \v_line_count[11]_i_2_n_0\,
      D => p_1_in(7),
      Q => \v_line_count_reg_n_0_[7]\,
      R => v_line_count(11)
    );
\v_line_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \v_line_count[11]_i_2_n_0\,
      D => p_1_in(8),
      Q => \v_line_count_reg_n_0_[8]\,
      R => v_line_count(11)
    );
\v_line_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \v_line_count[11]_i_2_n_0\,
      D => p_1_in(9),
      Q => \v_line_count_reg_n_0_[9]\,
      R => v_line_count(11)
    );
\v_total_reg[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => vsync_prev,
      I1 => vsync,
      I2 => first_frame_seen,
      O => v_total_reg
    );
\v_total_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => v_total_reg,
      D => \v_line_count_reg_n_0_[0]\,
      Q => v_total(0),
      R => reset
    );
\v_total_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => v_total_reg,
      D => \v_line_count_reg_n_0_[10]\,
      Q => v_total(10),
      R => reset
    );
\v_total_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => v_total_reg,
      D => \v_line_count_reg_n_0_[11]\,
      Q => v_total(11),
      R => reset
    );
\v_total_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => v_total_reg,
      D => \v_line_count_reg_n_0_[1]\,
      Q => v_total(1),
      R => reset
    );
\v_total_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => v_total_reg,
      D => \v_line_count_reg_n_0_[2]\,
      Q => v_total(2),
      R => reset
    );
\v_total_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => v_total_reg,
      D => \v_line_count_reg_n_0_[3]\,
      Q => v_total(3),
      R => reset
    );
\v_total_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => v_total_reg,
      D => \v_line_count_reg_n_0_[4]\,
      Q => v_total(4),
      R => reset
    );
\v_total_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => v_total_reg,
      D => \v_line_count_reg_n_0_[5]\,
      Q => v_total(5),
      R => reset
    );
\v_total_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => v_total_reg,
      D => \v_line_count_reg_n_0_[6]\,
      Q => v_total(6),
      R => reset
    );
\v_total_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => v_total_reg,
      D => \v_line_count_reg_n_0_[7]\,
      Q => v_total(7),
      R => reset
    );
\v_total_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => v_total_reg,
      D => \v_line_count_reg_n_0_[8]\,
      Q => v_total(8),
      R => reset
    );
\v_total_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => v_total_reg,
      D => \v_line_count_reg_n_0_[9]\,
      Q => v_total(9),
      R => reset
    );
v_valid_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => first_frame_seen,
      I1 => vsync,
      I2 => vsync_prev,
      I3 => reset,
      O => v_valid_reg_i_1_n_0
    );
v_valid_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => '1',
      D => v_valid_reg_i_1_n_0,
      Q => frame_valid,
      R => '0'
    );
vde_prev_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => '1',
      D => vde,
      Q => vde_prev,
      R => reset
    );
vsync_prev_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => '1',
      D => vsync,
      Q => vsync_prev,
      R => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity HDMI_bd_Mesure_timing_video_0_0 is
  port (
    clk_pixel : in STD_LOGIC;
    reset : in STD_LOGIC;
    vde : in STD_LOGIC;
    hsync : in STD_LOGIC;
    vsync : in STD_LOGIC;
    h_total : out STD_LOGIC_VECTOR ( 11 downto 0 );
    h_active : out STD_LOGIC_VECTOR ( 11 downto 0 );
    h_blank : out STD_LOGIC_VECTOR ( 11 downto 0 );
    mesure_valid : out STD_LOGIC;
    v_total : out STD_LOGIC_VECTOR ( 11 downto 0 );
    v_active : out STD_LOGIC_VECTOR ( 11 downto 0 );
    v_blank : out STD_LOGIC_VECTOR ( 11 downto 0 );
    frame_valid : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of HDMI_bd_Mesure_timing_video_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of HDMI_bd_Mesure_timing_video_0_0 : entity is "HDMI_bd_Mesure_timing_video_0_0,Mesure_timing_video,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of HDMI_bd_Mesure_timing_video_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of HDMI_bd_Mesure_timing_video_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of HDMI_bd_Mesure_timing_video_0_0 : entity is "Mesure_timing_video,Vivado 2018.2.1";
end HDMI_bd_Mesure_timing_video_0_0;

architecture STRUCTURE of HDMI_bd_Mesure_timing_video_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH";
begin
U0: entity work.HDMI_bd_Mesure_timing_video_0_0_Mesure_timing_video
     port map (
      clk_pixel => clk_pixel,
      frame_valid => frame_valid,
      h_active(11 downto 0) => h_active(11 downto 0),
      h_blank(11 downto 0) => h_blank(11 downto 0),
      h_total(11 downto 0) => h_total(11 downto 0),
      hsync => hsync,
      mesure_valid => mesure_valid,
      reset => reset,
      v_active(11 downto 0) => v_active(11 downto 0),
      v_blank(11 downto 0) => v_blank(11 downto 0),
      v_total(11 downto 0) => v_total(11 downto 0),
      vde => vde,
      vsync => vsync
    );
end STRUCTURE;
