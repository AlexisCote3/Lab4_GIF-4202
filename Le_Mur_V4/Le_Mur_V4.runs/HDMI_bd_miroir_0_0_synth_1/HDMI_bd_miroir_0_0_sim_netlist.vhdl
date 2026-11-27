-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2.1 (win64) Build 2288692 Thu Jul 26 18:24:02 MDT 2018
-- Date        : Fri Nov 27 14:14:48 2026
-- Host        : pcetu-197 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ HDMI_bd_miroir_0_0_sim_netlist.vhdl
-- Design      : HDMI_bd_miroir_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_miroir is
  port (
    VSync_out : out STD_LOGIC;
    VDE_out : out STD_LOGIC;
    HSync_out : out STD_LOGIC;
    address : out STD_LOGIC_VECTOR ( 10 downto 0 );
    VDE_in : in STD_LOGIC;
    PixelClk : in STD_LOGIC;
    VSync_in : in STD_LOGIC;
    HSync_in : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_miroir;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_miroir is
  signal \^address\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal clear : STD_LOGIC;
  signal \cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[6]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_reg__0\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \line_delay_reg[1023][1]_srl32_n_0\ : STD_LOGIC;
  signal \line_delay_reg[1024][0]_srl32_n_0\ : STD_LOGIC;
  signal \line_delay_reg[1055][1]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[1056][0]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[1087][1]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[1088][0]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[1119][1]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[1120][0]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[1151][1]_srl32_n_0\ : STD_LOGIC;
  signal \line_delay_reg[1152][0]_srl32_n_0\ : STD_LOGIC;
  signal \line_delay_reg[1183][1]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[1184][0]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[1215][1]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[1216][0]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[1247][1]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[1248][0]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[1279][1]_srl32_n_0\ : STD_LOGIC;
  signal \line_delay_reg[127][1]_srl32_n_0\ : STD_LOGIC;
  signal \line_delay_reg[1280][0]_srl32_n_0\ : STD_LOGIC;
  signal \line_delay_reg[128][0]_srl32_n_0\ : STD_LOGIC;
  signal \line_delay_reg[1311][1]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[1312][0]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[1343][1]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[1344][0]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[1375][1]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[1376][0]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[1407][1]_srl32_n_0\ : STD_LOGIC;
  signal \line_delay_reg[1408][0]_srl32_n_0\ : STD_LOGIC;
  signal \line_delay_reg[1439][1]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[1440][0]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[1471][1]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[1472][0]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[1503][1]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[1504][0]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[1535][1]_srl32_n_0\ : STD_LOGIC;
  signal \line_delay_reg[1536][0]_srl32_n_0\ : STD_LOGIC;
  signal \line_delay_reg[1567][1]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[1568][0]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[1599][1]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[159][1]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[1600][0]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[160][0]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[1631][1]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[1632][0]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[1663][1]_srl32_n_0\ : STD_LOGIC;
  signal \line_delay_reg[1664][0]_srl32_n_0\ : STD_LOGIC;
  signal \line_delay_reg[1695][1]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[1696][0]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[1727][1]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[1728][0]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[1759][1]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[1760][0]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[1791][1]_srl32_n_0\ : STD_LOGIC;
  signal \line_delay_reg[1792][0]_srl32_n_0\ : STD_LOGIC;
  signal \line_delay_reg[1798][1]_srl7_n_0\ : STD_LOGIC;
  signal \line_delay_reg[1799][0]_srl7_n_0\ : STD_LOGIC;
  signal \line_delay_reg[191][1]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[192][0]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[223][1]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[224][0]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[255][1]_srl32_n_0\ : STD_LOGIC;
  signal \line_delay_reg[256][0]_srl32_n_0\ : STD_LOGIC;
  signal \line_delay_reg[287][1]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[288][0]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[319][1]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[31][1]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[320][0]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[32][0]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[351][1]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[352][0]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[383][1]_srl32_n_0\ : STD_LOGIC;
  signal \line_delay_reg[384][0]_srl32_n_0\ : STD_LOGIC;
  signal \line_delay_reg[415][1]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[416][0]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[447][1]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[448][0]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[479][1]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[480][0]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[511][1]_srl32_n_0\ : STD_LOGIC;
  signal \line_delay_reg[512][0]_srl32_n_0\ : STD_LOGIC;
  signal \line_delay_reg[543][1]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[544][0]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[575][1]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[576][0]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[607][1]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[608][0]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[639][1]_srl32_n_0\ : STD_LOGIC;
  signal \line_delay_reg[63][1]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[640][0]_srl32_n_0\ : STD_LOGIC;
  signal \line_delay_reg[64][0]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[671][1]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[672][0]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[703][1]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[704][0]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[735][1]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[736][0]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[767][1]_srl32_n_0\ : STD_LOGIC;
  signal \line_delay_reg[768][0]_srl32_n_0\ : STD_LOGIC;
  signal \line_delay_reg[799][1]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[800][0]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[831][1]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[832][0]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[863][1]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[864][0]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[895][1]_srl32_n_0\ : STD_LOGIC;
  signal \line_delay_reg[896][0]_srl32_n_0\ : STD_LOGIC;
  signal \line_delay_reg[927][1]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[928][0]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[959][1]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[95][1]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[960][0]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[96][0]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[991][1]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg[992][0]_srl32_n_1\ : STD_LOGIC;
  signal \line_delay_reg_n_0_[0][0]\ : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 10 downto 1 );
  signal reversed : STD_LOGIC;
  signal reversed_i_1_n_0 : STD_LOGIC;
  signal vde_line : STD_LOGIC;
  signal win : STD_LOGIC;
  signal win_d : STD_LOGIC;
  signal \NLW_line_delay_reg[1023][1]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[1024][0]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[1055][1]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[1056][0]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[1087][1]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[1088][0]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[1119][1]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[1120][0]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[1151][1]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[1152][0]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[1183][1]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[1184][0]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[1215][1]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[1216][0]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[1247][1]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[1248][0]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[1279][1]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[127][1]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[1280][0]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[128][0]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[1311][1]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[1312][0]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[1343][1]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[1344][0]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[1375][1]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[1376][0]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[1407][1]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[1408][0]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[1439][1]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[1440][0]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[1471][1]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[1472][0]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[1503][1]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[1504][0]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[1535][1]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[1536][0]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[1567][1]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[1568][0]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[1599][1]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[159][1]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[1600][0]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[160][0]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[1631][1]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[1632][0]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[1663][1]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[1664][0]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[1695][1]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[1696][0]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[1727][1]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[1728][0]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[1759][1]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[1760][0]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[1791][1]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[1792][0]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[1798][1]_srl7_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[1799][0]_srl7_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[191][1]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[192][0]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[223][1]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[224][0]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[255][1]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[256][0]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[287][1]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[288][0]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[319][1]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[31][1]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[320][0]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[32][0]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[351][1]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[352][0]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[383][1]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[384][0]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[415][1]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[416][0]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[447][1]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[448][0]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[479][1]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[480][0]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[511][1]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[512][0]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[543][1]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[544][0]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[575][1]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[576][0]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[607][1]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[608][0]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[639][1]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[63][1]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[640][0]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[64][0]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[671][1]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[672][0]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[703][1]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[704][0]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[735][1]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[736][0]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[767][1]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[768][0]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[799][1]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[800][0]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[831][1]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[832][0]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[863][1]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[864][0]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[895][1]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[896][0]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[927][1]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[928][0]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[959][1]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[95][1]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[960][0]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[96][0]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[991][1]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_line_delay_reg[992][0]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \address[0]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \address[1]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \address[2]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \address[3]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \address[4]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \address[7]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \address[8]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \address[9]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cnt[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cnt[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt[6]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cnt[7]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cnt[8]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt[9]_i_1\ : label is "soft_lutpair0";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \line_delay_reg[1023][1]_srl32\ : label is "\U0/line_delay_reg[1023] ";
  attribute srl_name : string;
  attribute srl_name of \line_delay_reg[1023][1]_srl32\ : label is "\U0/line_delay_reg[1023][1]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[1024][0]_srl32\ : label is "\U0/line_delay_reg[1024] ";
  attribute srl_name of \line_delay_reg[1024][0]_srl32\ : label is "\U0/line_delay_reg[1024][0]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[1055][1]_srl32\ : label is "\U0/line_delay_reg[1055] ";
  attribute srl_name of \line_delay_reg[1055][1]_srl32\ : label is "\U0/line_delay_reg[1055][1]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[1056][0]_srl32\ : label is "\U0/line_delay_reg[1056] ";
  attribute srl_name of \line_delay_reg[1056][0]_srl32\ : label is "\U0/line_delay_reg[1056][0]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[1087][1]_srl32\ : label is "\U0/line_delay_reg[1087] ";
  attribute srl_name of \line_delay_reg[1087][1]_srl32\ : label is "\U0/line_delay_reg[1087][1]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[1088][0]_srl32\ : label is "\U0/line_delay_reg[1088] ";
  attribute srl_name of \line_delay_reg[1088][0]_srl32\ : label is "\U0/line_delay_reg[1088][0]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[1119][1]_srl32\ : label is "\U0/line_delay_reg[1119] ";
  attribute srl_name of \line_delay_reg[1119][1]_srl32\ : label is "\U0/line_delay_reg[1119][1]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[1120][0]_srl32\ : label is "\U0/line_delay_reg[1120] ";
  attribute srl_name of \line_delay_reg[1120][0]_srl32\ : label is "\U0/line_delay_reg[1120][0]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[1151][1]_srl32\ : label is "\U0/line_delay_reg[1151] ";
  attribute srl_name of \line_delay_reg[1151][1]_srl32\ : label is "\U0/line_delay_reg[1151][1]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[1152][0]_srl32\ : label is "\U0/line_delay_reg[1152] ";
  attribute srl_name of \line_delay_reg[1152][0]_srl32\ : label is "\U0/line_delay_reg[1152][0]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[1183][1]_srl32\ : label is "\U0/line_delay_reg[1183] ";
  attribute srl_name of \line_delay_reg[1183][1]_srl32\ : label is "\U0/line_delay_reg[1183][1]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[1184][0]_srl32\ : label is "\U0/line_delay_reg[1184] ";
  attribute srl_name of \line_delay_reg[1184][0]_srl32\ : label is "\U0/line_delay_reg[1184][0]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[1215][1]_srl32\ : label is "\U0/line_delay_reg[1215] ";
  attribute srl_name of \line_delay_reg[1215][1]_srl32\ : label is "\U0/line_delay_reg[1215][1]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[1216][0]_srl32\ : label is "\U0/line_delay_reg[1216] ";
  attribute srl_name of \line_delay_reg[1216][0]_srl32\ : label is "\U0/line_delay_reg[1216][0]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[1247][1]_srl32\ : label is "\U0/line_delay_reg[1247] ";
  attribute srl_name of \line_delay_reg[1247][1]_srl32\ : label is "\U0/line_delay_reg[1247][1]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[1248][0]_srl32\ : label is "\U0/line_delay_reg[1248] ";
  attribute srl_name of \line_delay_reg[1248][0]_srl32\ : label is "\U0/line_delay_reg[1248][0]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[1279][1]_srl32\ : label is "\U0/line_delay_reg[1279] ";
  attribute srl_name of \line_delay_reg[1279][1]_srl32\ : label is "\U0/line_delay_reg[1279][1]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[127][1]_srl32\ : label is "\U0/line_delay_reg[127] ";
  attribute srl_name of \line_delay_reg[127][1]_srl32\ : label is "\U0/line_delay_reg[127][1]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[1280][0]_srl32\ : label is "\U0/line_delay_reg[1280] ";
  attribute srl_name of \line_delay_reg[1280][0]_srl32\ : label is "\U0/line_delay_reg[1280][0]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[128][0]_srl32\ : label is "\U0/line_delay_reg[128] ";
  attribute srl_name of \line_delay_reg[128][0]_srl32\ : label is "\U0/line_delay_reg[128][0]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[1311][1]_srl32\ : label is "\U0/line_delay_reg[1311] ";
  attribute srl_name of \line_delay_reg[1311][1]_srl32\ : label is "\U0/line_delay_reg[1311][1]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[1312][0]_srl32\ : label is "\U0/line_delay_reg[1312] ";
  attribute srl_name of \line_delay_reg[1312][0]_srl32\ : label is "\U0/line_delay_reg[1312][0]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[1343][1]_srl32\ : label is "\U0/line_delay_reg[1343] ";
  attribute srl_name of \line_delay_reg[1343][1]_srl32\ : label is "\U0/line_delay_reg[1343][1]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[1344][0]_srl32\ : label is "\U0/line_delay_reg[1344] ";
  attribute srl_name of \line_delay_reg[1344][0]_srl32\ : label is "\U0/line_delay_reg[1344][0]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[1375][1]_srl32\ : label is "\U0/line_delay_reg[1375] ";
  attribute srl_name of \line_delay_reg[1375][1]_srl32\ : label is "\U0/line_delay_reg[1375][1]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[1376][0]_srl32\ : label is "\U0/line_delay_reg[1376] ";
  attribute srl_name of \line_delay_reg[1376][0]_srl32\ : label is "\U0/line_delay_reg[1376][0]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[1407][1]_srl32\ : label is "\U0/line_delay_reg[1407] ";
  attribute srl_name of \line_delay_reg[1407][1]_srl32\ : label is "\U0/line_delay_reg[1407][1]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[1408][0]_srl32\ : label is "\U0/line_delay_reg[1408] ";
  attribute srl_name of \line_delay_reg[1408][0]_srl32\ : label is "\U0/line_delay_reg[1408][0]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[1439][1]_srl32\ : label is "\U0/line_delay_reg[1439] ";
  attribute srl_name of \line_delay_reg[1439][1]_srl32\ : label is "\U0/line_delay_reg[1439][1]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[1440][0]_srl32\ : label is "\U0/line_delay_reg[1440] ";
  attribute srl_name of \line_delay_reg[1440][0]_srl32\ : label is "\U0/line_delay_reg[1440][0]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[1471][1]_srl32\ : label is "\U0/line_delay_reg[1471] ";
  attribute srl_name of \line_delay_reg[1471][1]_srl32\ : label is "\U0/line_delay_reg[1471][1]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[1472][0]_srl32\ : label is "\U0/line_delay_reg[1472] ";
  attribute srl_name of \line_delay_reg[1472][0]_srl32\ : label is "\U0/line_delay_reg[1472][0]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[1503][1]_srl32\ : label is "\U0/line_delay_reg[1503] ";
  attribute srl_name of \line_delay_reg[1503][1]_srl32\ : label is "\U0/line_delay_reg[1503][1]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[1504][0]_srl32\ : label is "\U0/line_delay_reg[1504] ";
  attribute srl_name of \line_delay_reg[1504][0]_srl32\ : label is "\U0/line_delay_reg[1504][0]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[1535][1]_srl32\ : label is "\U0/line_delay_reg[1535] ";
  attribute srl_name of \line_delay_reg[1535][1]_srl32\ : label is "\U0/line_delay_reg[1535][1]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[1536][0]_srl32\ : label is "\U0/line_delay_reg[1536] ";
  attribute srl_name of \line_delay_reg[1536][0]_srl32\ : label is "\U0/line_delay_reg[1536][0]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[1567][1]_srl32\ : label is "\U0/line_delay_reg[1567] ";
  attribute srl_name of \line_delay_reg[1567][1]_srl32\ : label is "\U0/line_delay_reg[1567][1]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[1568][0]_srl32\ : label is "\U0/line_delay_reg[1568] ";
  attribute srl_name of \line_delay_reg[1568][0]_srl32\ : label is "\U0/line_delay_reg[1568][0]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[1599][1]_srl32\ : label is "\U0/line_delay_reg[1599] ";
  attribute srl_name of \line_delay_reg[1599][1]_srl32\ : label is "\U0/line_delay_reg[1599][1]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[159][1]_srl32\ : label is "\U0/line_delay_reg[159] ";
  attribute srl_name of \line_delay_reg[159][1]_srl32\ : label is "\U0/line_delay_reg[159][1]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[1600][0]_srl32\ : label is "\U0/line_delay_reg[1600] ";
  attribute srl_name of \line_delay_reg[1600][0]_srl32\ : label is "\U0/line_delay_reg[1600][0]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[160][0]_srl32\ : label is "\U0/line_delay_reg[160] ";
  attribute srl_name of \line_delay_reg[160][0]_srl32\ : label is "\U0/line_delay_reg[160][0]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[1631][1]_srl32\ : label is "\U0/line_delay_reg[1631] ";
  attribute srl_name of \line_delay_reg[1631][1]_srl32\ : label is "\U0/line_delay_reg[1631][1]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[1632][0]_srl32\ : label is "\U0/line_delay_reg[1632] ";
  attribute srl_name of \line_delay_reg[1632][0]_srl32\ : label is "\U0/line_delay_reg[1632][0]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[1663][1]_srl32\ : label is "\U0/line_delay_reg[1663] ";
  attribute srl_name of \line_delay_reg[1663][1]_srl32\ : label is "\U0/line_delay_reg[1663][1]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[1664][0]_srl32\ : label is "\U0/line_delay_reg[1664] ";
  attribute srl_name of \line_delay_reg[1664][0]_srl32\ : label is "\U0/line_delay_reg[1664][0]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[1695][1]_srl32\ : label is "\U0/line_delay_reg[1695] ";
  attribute srl_name of \line_delay_reg[1695][1]_srl32\ : label is "\U0/line_delay_reg[1695][1]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[1696][0]_srl32\ : label is "\U0/line_delay_reg[1696] ";
  attribute srl_name of \line_delay_reg[1696][0]_srl32\ : label is "\U0/line_delay_reg[1696][0]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[1727][1]_srl32\ : label is "\U0/line_delay_reg[1727] ";
  attribute srl_name of \line_delay_reg[1727][1]_srl32\ : label is "\U0/line_delay_reg[1727][1]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[1728][0]_srl32\ : label is "\U0/line_delay_reg[1728] ";
  attribute srl_name of \line_delay_reg[1728][0]_srl32\ : label is "\U0/line_delay_reg[1728][0]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[1759][1]_srl32\ : label is "\U0/line_delay_reg[1759] ";
  attribute srl_name of \line_delay_reg[1759][1]_srl32\ : label is "\U0/line_delay_reg[1759][1]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[1760][0]_srl32\ : label is "\U0/line_delay_reg[1760] ";
  attribute srl_name of \line_delay_reg[1760][0]_srl32\ : label is "\U0/line_delay_reg[1760][0]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[1791][1]_srl32\ : label is "\U0/line_delay_reg[1791] ";
  attribute srl_name of \line_delay_reg[1791][1]_srl32\ : label is "\U0/line_delay_reg[1791][1]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[1792][0]_srl32\ : label is "\U0/line_delay_reg[1792] ";
  attribute srl_name of \line_delay_reg[1792][0]_srl32\ : label is "\U0/line_delay_reg[1792][0]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[1798][1]_srl7\ : label is "\U0/line_delay_reg[1798] ";
  attribute srl_name of \line_delay_reg[1798][1]_srl7\ : label is "\U0/line_delay_reg[1798][1]_srl7 ";
  attribute srl_bus_name of \line_delay_reg[1799][0]_srl7\ : label is "\U0/line_delay_reg[1799] ";
  attribute srl_name of \line_delay_reg[1799][0]_srl7\ : label is "\U0/line_delay_reg[1799][0]_srl7 ";
  attribute srl_bus_name of \line_delay_reg[191][1]_srl32\ : label is "\U0/line_delay_reg[191] ";
  attribute srl_name of \line_delay_reg[191][1]_srl32\ : label is "\U0/line_delay_reg[191][1]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[192][0]_srl32\ : label is "\U0/line_delay_reg[192] ";
  attribute srl_name of \line_delay_reg[192][0]_srl32\ : label is "\U0/line_delay_reg[192][0]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[223][1]_srl32\ : label is "\U0/line_delay_reg[223] ";
  attribute srl_name of \line_delay_reg[223][1]_srl32\ : label is "\U0/line_delay_reg[223][1]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[224][0]_srl32\ : label is "\U0/line_delay_reg[224] ";
  attribute srl_name of \line_delay_reg[224][0]_srl32\ : label is "\U0/line_delay_reg[224][0]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[255][1]_srl32\ : label is "\U0/line_delay_reg[255] ";
  attribute srl_name of \line_delay_reg[255][1]_srl32\ : label is "\U0/line_delay_reg[255][1]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[256][0]_srl32\ : label is "\U0/line_delay_reg[256] ";
  attribute srl_name of \line_delay_reg[256][0]_srl32\ : label is "\U0/line_delay_reg[256][0]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[287][1]_srl32\ : label is "\U0/line_delay_reg[287] ";
  attribute srl_name of \line_delay_reg[287][1]_srl32\ : label is "\U0/line_delay_reg[287][1]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[288][0]_srl32\ : label is "\U0/line_delay_reg[288] ";
  attribute srl_name of \line_delay_reg[288][0]_srl32\ : label is "\U0/line_delay_reg[288][0]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[319][1]_srl32\ : label is "\U0/line_delay_reg[319] ";
  attribute srl_name of \line_delay_reg[319][1]_srl32\ : label is "\U0/line_delay_reg[319][1]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[31][1]_srl32\ : label is "\U0/line_delay_reg[31] ";
  attribute srl_name of \line_delay_reg[31][1]_srl32\ : label is "\U0/line_delay_reg[31][1]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[320][0]_srl32\ : label is "\U0/line_delay_reg[320] ";
  attribute srl_name of \line_delay_reg[320][0]_srl32\ : label is "\U0/line_delay_reg[320][0]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[32][0]_srl32\ : label is "\U0/line_delay_reg[32] ";
  attribute srl_name of \line_delay_reg[32][0]_srl32\ : label is "\U0/line_delay_reg[32][0]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[351][1]_srl32\ : label is "\U0/line_delay_reg[351] ";
  attribute srl_name of \line_delay_reg[351][1]_srl32\ : label is "\U0/line_delay_reg[351][1]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[352][0]_srl32\ : label is "\U0/line_delay_reg[352] ";
  attribute srl_name of \line_delay_reg[352][0]_srl32\ : label is "\U0/line_delay_reg[352][0]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[383][1]_srl32\ : label is "\U0/line_delay_reg[383] ";
  attribute srl_name of \line_delay_reg[383][1]_srl32\ : label is "\U0/line_delay_reg[383][1]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[384][0]_srl32\ : label is "\U0/line_delay_reg[384] ";
  attribute srl_name of \line_delay_reg[384][0]_srl32\ : label is "\U0/line_delay_reg[384][0]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[415][1]_srl32\ : label is "\U0/line_delay_reg[415] ";
  attribute srl_name of \line_delay_reg[415][1]_srl32\ : label is "\U0/line_delay_reg[415][1]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[416][0]_srl32\ : label is "\U0/line_delay_reg[416] ";
  attribute srl_name of \line_delay_reg[416][0]_srl32\ : label is "\U0/line_delay_reg[416][0]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[447][1]_srl32\ : label is "\U0/line_delay_reg[447] ";
  attribute srl_name of \line_delay_reg[447][1]_srl32\ : label is "\U0/line_delay_reg[447][1]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[448][0]_srl32\ : label is "\U0/line_delay_reg[448] ";
  attribute srl_name of \line_delay_reg[448][0]_srl32\ : label is "\U0/line_delay_reg[448][0]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[479][1]_srl32\ : label is "\U0/line_delay_reg[479] ";
  attribute srl_name of \line_delay_reg[479][1]_srl32\ : label is "\U0/line_delay_reg[479][1]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[480][0]_srl32\ : label is "\U0/line_delay_reg[480] ";
  attribute srl_name of \line_delay_reg[480][0]_srl32\ : label is "\U0/line_delay_reg[480][0]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[511][1]_srl32\ : label is "\U0/line_delay_reg[511] ";
  attribute srl_name of \line_delay_reg[511][1]_srl32\ : label is "\U0/line_delay_reg[511][1]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[512][0]_srl32\ : label is "\U0/line_delay_reg[512] ";
  attribute srl_name of \line_delay_reg[512][0]_srl32\ : label is "\U0/line_delay_reg[512][0]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[543][1]_srl32\ : label is "\U0/line_delay_reg[543] ";
  attribute srl_name of \line_delay_reg[543][1]_srl32\ : label is "\U0/line_delay_reg[543][1]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[544][0]_srl32\ : label is "\U0/line_delay_reg[544] ";
  attribute srl_name of \line_delay_reg[544][0]_srl32\ : label is "\U0/line_delay_reg[544][0]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[575][1]_srl32\ : label is "\U0/line_delay_reg[575] ";
  attribute srl_name of \line_delay_reg[575][1]_srl32\ : label is "\U0/line_delay_reg[575][1]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[576][0]_srl32\ : label is "\U0/line_delay_reg[576] ";
  attribute srl_name of \line_delay_reg[576][0]_srl32\ : label is "\U0/line_delay_reg[576][0]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[607][1]_srl32\ : label is "\U0/line_delay_reg[607] ";
  attribute srl_name of \line_delay_reg[607][1]_srl32\ : label is "\U0/line_delay_reg[607][1]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[608][0]_srl32\ : label is "\U0/line_delay_reg[608] ";
  attribute srl_name of \line_delay_reg[608][0]_srl32\ : label is "\U0/line_delay_reg[608][0]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[639][1]_srl32\ : label is "\U0/line_delay_reg[639] ";
  attribute srl_name of \line_delay_reg[639][1]_srl32\ : label is "\U0/line_delay_reg[639][1]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[63][1]_srl32\ : label is "\U0/line_delay_reg[63] ";
  attribute srl_name of \line_delay_reg[63][1]_srl32\ : label is "\U0/line_delay_reg[63][1]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[640][0]_srl32\ : label is "\U0/line_delay_reg[640] ";
  attribute srl_name of \line_delay_reg[640][0]_srl32\ : label is "\U0/line_delay_reg[640][0]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[64][0]_srl32\ : label is "\U0/line_delay_reg[64] ";
  attribute srl_name of \line_delay_reg[64][0]_srl32\ : label is "\U0/line_delay_reg[64][0]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[671][1]_srl32\ : label is "\U0/line_delay_reg[671] ";
  attribute srl_name of \line_delay_reg[671][1]_srl32\ : label is "\U0/line_delay_reg[671][1]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[672][0]_srl32\ : label is "\U0/line_delay_reg[672] ";
  attribute srl_name of \line_delay_reg[672][0]_srl32\ : label is "\U0/line_delay_reg[672][0]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[703][1]_srl32\ : label is "\U0/line_delay_reg[703] ";
  attribute srl_name of \line_delay_reg[703][1]_srl32\ : label is "\U0/line_delay_reg[703][1]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[704][0]_srl32\ : label is "\U0/line_delay_reg[704] ";
  attribute srl_name of \line_delay_reg[704][0]_srl32\ : label is "\U0/line_delay_reg[704][0]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[735][1]_srl32\ : label is "\U0/line_delay_reg[735] ";
  attribute srl_name of \line_delay_reg[735][1]_srl32\ : label is "\U0/line_delay_reg[735][1]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[736][0]_srl32\ : label is "\U0/line_delay_reg[736] ";
  attribute srl_name of \line_delay_reg[736][0]_srl32\ : label is "\U0/line_delay_reg[736][0]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[767][1]_srl32\ : label is "\U0/line_delay_reg[767] ";
  attribute srl_name of \line_delay_reg[767][1]_srl32\ : label is "\U0/line_delay_reg[767][1]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[768][0]_srl32\ : label is "\U0/line_delay_reg[768] ";
  attribute srl_name of \line_delay_reg[768][0]_srl32\ : label is "\U0/line_delay_reg[768][0]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[799][1]_srl32\ : label is "\U0/line_delay_reg[799] ";
  attribute srl_name of \line_delay_reg[799][1]_srl32\ : label is "\U0/line_delay_reg[799][1]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[800][0]_srl32\ : label is "\U0/line_delay_reg[800] ";
  attribute srl_name of \line_delay_reg[800][0]_srl32\ : label is "\U0/line_delay_reg[800][0]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[831][1]_srl32\ : label is "\U0/line_delay_reg[831] ";
  attribute srl_name of \line_delay_reg[831][1]_srl32\ : label is "\U0/line_delay_reg[831][1]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[832][0]_srl32\ : label is "\U0/line_delay_reg[832] ";
  attribute srl_name of \line_delay_reg[832][0]_srl32\ : label is "\U0/line_delay_reg[832][0]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[863][1]_srl32\ : label is "\U0/line_delay_reg[863] ";
  attribute srl_name of \line_delay_reg[863][1]_srl32\ : label is "\U0/line_delay_reg[863][1]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[864][0]_srl32\ : label is "\U0/line_delay_reg[864] ";
  attribute srl_name of \line_delay_reg[864][0]_srl32\ : label is "\U0/line_delay_reg[864][0]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[895][1]_srl32\ : label is "\U0/line_delay_reg[895] ";
  attribute srl_name of \line_delay_reg[895][1]_srl32\ : label is "\U0/line_delay_reg[895][1]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[896][0]_srl32\ : label is "\U0/line_delay_reg[896] ";
  attribute srl_name of \line_delay_reg[896][0]_srl32\ : label is "\U0/line_delay_reg[896][0]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[927][1]_srl32\ : label is "\U0/line_delay_reg[927] ";
  attribute srl_name of \line_delay_reg[927][1]_srl32\ : label is "\U0/line_delay_reg[927][1]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[928][0]_srl32\ : label is "\U0/line_delay_reg[928] ";
  attribute srl_name of \line_delay_reg[928][0]_srl32\ : label is "\U0/line_delay_reg[928][0]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[959][1]_srl32\ : label is "\U0/line_delay_reg[959] ";
  attribute srl_name of \line_delay_reg[959][1]_srl32\ : label is "\U0/line_delay_reg[959][1]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[95][1]_srl32\ : label is "\U0/line_delay_reg[95] ";
  attribute srl_name of \line_delay_reg[95][1]_srl32\ : label is "\U0/line_delay_reg[95][1]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[960][0]_srl32\ : label is "\U0/line_delay_reg[960] ";
  attribute srl_name of \line_delay_reg[960][0]_srl32\ : label is "\U0/line_delay_reg[960][0]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[96][0]_srl32\ : label is "\U0/line_delay_reg[96] ";
  attribute srl_name of \line_delay_reg[96][0]_srl32\ : label is "\U0/line_delay_reg[96][0]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[991][1]_srl32\ : label is "\U0/line_delay_reg[991] ";
  attribute srl_name of \line_delay_reg[991][1]_srl32\ : label is "\U0/line_delay_reg[991][1]_srl32 ";
  attribute srl_bus_name of \line_delay_reg[992][0]_srl32\ : label is "\U0/line_delay_reg[992] ";
  attribute srl_name of \line_delay_reg[992][0]_srl32\ : label is "\U0/line_delay_reg[992][0]_srl32 ";
  attribute SOFT_HLUTNM of reversed_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of win_d_i_1 : label is "soft_lutpair3";
begin
  address(10 downto 0) <= \^address\(10 downto 0);
HSync_out_reg: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => HSync_in,
      Q => HSync_out,
      R => '0'
    );
VDE_out_reg: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => vde_line,
      Q => VDE_out,
      R => '0'
    );
VSync_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PixelClk,
      CE => '1',
      D => \line_delay_reg[1799][0]_srl7_n_0\,
      Q => VSync_out,
      R => '0'
    );
\address[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \cnt_reg__0\(0),
      I1 => reversed,
      O => \^address\(0)
    );
\address[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA85557FFFF0000"
    )
        port map (
      I0 => \cnt_reg__0\(9),
      I1 => \^address\(6),
      I2 => \cnt_reg__0\(7),
      I3 => \cnt_reg__0\(8),
      I4 => \cnt_reg__0\(10),
      I5 => reversed,
      O => \^address\(10)
    );
\address[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \cnt_reg__0\(1),
      I1 => reversed,
      O => \^address\(1)
    );
\address[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \cnt_reg__0\(2),
      I1 => reversed,
      O => \^address\(2)
    );
\address[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \cnt_reg__0\(3),
      I1 => reversed,
      O => \^address\(3)
    );
\address[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \cnt_reg__0\(4),
      I1 => reversed,
      O => \^address\(4)
    );
\address[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \cnt_reg__0\(5),
      I1 => reversed,
      O => \^address\(5)
    );
\address[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6C"
    )
        port map (
      I0 => \^address\(6),
      I1 => \cnt_reg__0\(7),
      I2 => reversed,
      O => \^address\(7)
    );
\address[8]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EF0"
    )
        port map (
      I0 => \^address\(6),
      I1 => \cnt_reg__0\(7),
      I2 => \cnt_reg__0\(8),
      I3 => reversed,
      O => \^address\(8)
    );
\address[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE01FF00"
    )
        port map (
      I0 => \cnt_reg__0\(8),
      I1 => \cnt_reg__0\(7),
      I2 => \^address\(6),
      I3 => \cnt_reg__0\(9),
      I4 => reversed,
      O => \^address\(9)
    );
\cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_reg__0\(0),
      O => \cnt[0]_i_1_n_0\
    );
\cnt[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \cnt_reg__0\(8),
      I1 => \^address\(6),
      I2 => \cnt[6]_i_3_n_0\,
      I3 => \cnt_reg__0\(7),
      I4 => \cnt_reg__0\(9),
      I5 => \cnt_reg__0\(10),
      O => plusOp(10)
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \cnt_reg__0\(0),
      I1 => \cnt_reg__0\(1),
      O => plusOp(1)
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \cnt_reg__0\(0),
      I1 => \cnt_reg__0\(1),
      I2 => \cnt_reg__0\(2),
      O => plusOp(2)
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \cnt_reg__0\(1),
      I1 => \cnt_reg__0\(0),
      I2 => \cnt_reg__0\(2),
      I3 => \cnt_reg__0\(3),
      O => plusOp(3)
    );
\cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \cnt_reg__0\(2),
      I1 => \cnt_reg__0\(0),
      I2 => \cnt_reg__0\(1),
      I3 => \cnt_reg__0\(3),
      I4 => \cnt_reg__0\(4),
      O => plusOp(4)
    );
\cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \cnt_reg__0\(3),
      I1 => \cnt_reg__0\(1),
      I2 => \cnt_reg__0\(0),
      I3 => \cnt_reg__0\(2),
      I4 => \cnt_reg__0\(4),
      I5 => \cnt_reg__0\(5),
      O => plusOp(5)
    );
\cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => vde_line,
      I1 => VDE_in,
      O => clear
    );
\cnt[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \cnt[6]_i_3_n_0\,
      I1 => \^address\(6),
      O => plusOp(6)
    );
\cnt[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \cnt_reg__0\(5),
      I1 => \cnt_reg__0\(3),
      I2 => \cnt_reg__0\(1),
      I3 => \cnt_reg__0\(0),
      I4 => \cnt_reg__0\(2),
      I5 => \cnt_reg__0\(4),
      O => \cnt[6]_i_3_n_0\
    );
\cnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \cnt[6]_i_3_n_0\,
      I1 => \^address\(6),
      I2 => \cnt_reg__0\(7),
      O => plusOp(7)
    );
\cnt[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^address\(6),
      I1 => \cnt[6]_i_3_n_0\,
      I2 => \cnt_reg__0\(7),
      I3 => \cnt_reg__0\(8),
      O => plusOp(8)
    );
\cnt[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \cnt_reg__0\(7),
      I1 => \cnt[6]_i_3_n_0\,
      I2 => \^address\(6),
      I3 => \cnt_reg__0\(8),
      I4 => \cnt_reg__0\(9),
      O => plusOp(9)
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PixelClk,
      CE => '1',
      D => \cnt[0]_i_1_n_0\,
      Q => \cnt_reg__0\(0),
      R => clear
    );
\cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PixelClk,
      CE => '1',
      D => plusOp(10),
      Q => \cnt_reg__0\(10),
      R => clear
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PixelClk,
      CE => '1',
      D => plusOp(1),
      Q => \cnt_reg__0\(1),
      R => clear
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PixelClk,
      CE => '1',
      D => plusOp(2),
      Q => \cnt_reg__0\(2),
      R => clear
    );
\cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PixelClk,
      CE => '1',
      D => plusOp(3),
      Q => \cnt_reg__0\(3),
      R => clear
    );
\cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PixelClk,
      CE => '1',
      D => plusOp(4),
      Q => \cnt_reg__0\(4),
      R => clear
    );
\cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PixelClk,
      CE => '1',
      D => plusOp(5),
      Q => \cnt_reg__0\(5),
      R => clear
    );
\cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PixelClk,
      CE => '1',
      D => plusOp(6),
      Q => \^address\(6),
      R => clear
    );
\cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PixelClk,
      CE => '1',
      D => plusOp(7),
      Q => \cnt_reg__0\(7),
      R => clear
    );
\cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PixelClk,
      CE => '1',
      D => plusOp(8),
      Q => \cnt_reg__0\(8),
      R => clear
    );
\cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PixelClk,
      CE => '1',
      D => plusOp(9),
      Q => \cnt_reg__0\(9),
      R => clear
    );
\line_delay_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PixelClk,
      CE => '1',
      D => VSync_in,
      Q => \line_delay_reg_n_0_[0][0]\,
      R => '0'
    );
\line_delay_reg[1023][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[991][1]_srl32_n_1\,
      Q => \line_delay_reg[1023][1]_srl32_n_0\,
      Q31 => \NLW_line_delay_reg[1023][1]_srl32_Q31_UNCONNECTED\
    );
\line_delay_reg[1024][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[992][0]_srl32_n_1\,
      Q => \line_delay_reg[1024][0]_srl32_n_0\,
      Q31 => \NLW_line_delay_reg[1024][0]_srl32_Q31_UNCONNECTED\
    );
\line_delay_reg[1055][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[1023][1]_srl32_n_0\,
      Q => \NLW_line_delay_reg[1055][1]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[1055][1]_srl32_n_1\
    );
\line_delay_reg[1056][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[1024][0]_srl32_n_0\,
      Q => \NLW_line_delay_reg[1056][0]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[1056][0]_srl32_n_1\
    );
\line_delay_reg[1087][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[1055][1]_srl32_n_1\,
      Q => \NLW_line_delay_reg[1087][1]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[1087][1]_srl32_n_1\
    );
\line_delay_reg[1088][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[1056][0]_srl32_n_1\,
      Q => \NLW_line_delay_reg[1088][0]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[1088][0]_srl32_n_1\
    );
\line_delay_reg[1119][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[1087][1]_srl32_n_1\,
      Q => \NLW_line_delay_reg[1119][1]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[1119][1]_srl32_n_1\
    );
\line_delay_reg[1120][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[1088][0]_srl32_n_1\,
      Q => \NLW_line_delay_reg[1120][0]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[1120][0]_srl32_n_1\
    );
\line_delay_reg[1151][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[1119][1]_srl32_n_1\,
      Q => \line_delay_reg[1151][1]_srl32_n_0\,
      Q31 => \NLW_line_delay_reg[1151][1]_srl32_Q31_UNCONNECTED\
    );
\line_delay_reg[1152][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[1120][0]_srl32_n_1\,
      Q => \line_delay_reg[1152][0]_srl32_n_0\,
      Q31 => \NLW_line_delay_reg[1152][0]_srl32_Q31_UNCONNECTED\
    );
\line_delay_reg[1183][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[1151][1]_srl32_n_0\,
      Q => \NLW_line_delay_reg[1183][1]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[1183][1]_srl32_n_1\
    );
\line_delay_reg[1184][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[1152][0]_srl32_n_0\,
      Q => \NLW_line_delay_reg[1184][0]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[1184][0]_srl32_n_1\
    );
\line_delay_reg[1215][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[1183][1]_srl32_n_1\,
      Q => \NLW_line_delay_reg[1215][1]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[1215][1]_srl32_n_1\
    );
\line_delay_reg[1216][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[1184][0]_srl32_n_1\,
      Q => \NLW_line_delay_reg[1216][0]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[1216][0]_srl32_n_1\
    );
\line_delay_reg[1247][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[1215][1]_srl32_n_1\,
      Q => \NLW_line_delay_reg[1247][1]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[1247][1]_srl32_n_1\
    );
\line_delay_reg[1248][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[1216][0]_srl32_n_1\,
      Q => \NLW_line_delay_reg[1248][0]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[1248][0]_srl32_n_1\
    );
\line_delay_reg[1279][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[1247][1]_srl32_n_1\,
      Q => \line_delay_reg[1279][1]_srl32_n_0\,
      Q31 => \NLW_line_delay_reg[1279][1]_srl32_Q31_UNCONNECTED\
    );
\line_delay_reg[127][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[95][1]_srl32_n_1\,
      Q => \line_delay_reg[127][1]_srl32_n_0\,
      Q31 => \NLW_line_delay_reg[127][1]_srl32_Q31_UNCONNECTED\
    );
\line_delay_reg[1280][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[1248][0]_srl32_n_1\,
      Q => \line_delay_reg[1280][0]_srl32_n_0\,
      Q31 => \NLW_line_delay_reg[1280][0]_srl32_Q31_UNCONNECTED\
    );
\line_delay_reg[128][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[96][0]_srl32_n_1\,
      Q => \line_delay_reg[128][0]_srl32_n_0\,
      Q31 => \NLW_line_delay_reg[128][0]_srl32_Q31_UNCONNECTED\
    );
\line_delay_reg[1311][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[1279][1]_srl32_n_0\,
      Q => \NLW_line_delay_reg[1311][1]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[1311][1]_srl32_n_1\
    );
\line_delay_reg[1312][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[1280][0]_srl32_n_0\,
      Q => \NLW_line_delay_reg[1312][0]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[1312][0]_srl32_n_1\
    );
\line_delay_reg[1343][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[1311][1]_srl32_n_1\,
      Q => \NLW_line_delay_reg[1343][1]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[1343][1]_srl32_n_1\
    );
\line_delay_reg[1344][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[1312][0]_srl32_n_1\,
      Q => \NLW_line_delay_reg[1344][0]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[1344][0]_srl32_n_1\
    );
\line_delay_reg[1375][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[1343][1]_srl32_n_1\,
      Q => \NLW_line_delay_reg[1375][1]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[1375][1]_srl32_n_1\
    );
\line_delay_reg[1376][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[1344][0]_srl32_n_1\,
      Q => \NLW_line_delay_reg[1376][0]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[1376][0]_srl32_n_1\
    );
\line_delay_reg[1407][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[1375][1]_srl32_n_1\,
      Q => \line_delay_reg[1407][1]_srl32_n_0\,
      Q31 => \NLW_line_delay_reg[1407][1]_srl32_Q31_UNCONNECTED\
    );
\line_delay_reg[1408][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[1376][0]_srl32_n_1\,
      Q => \line_delay_reg[1408][0]_srl32_n_0\,
      Q31 => \NLW_line_delay_reg[1408][0]_srl32_Q31_UNCONNECTED\
    );
\line_delay_reg[1439][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[1407][1]_srl32_n_0\,
      Q => \NLW_line_delay_reg[1439][1]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[1439][1]_srl32_n_1\
    );
\line_delay_reg[1440][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[1408][0]_srl32_n_0\,
      Q => \NLW_line_delay_reg[1440][0]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[1440][0]_srl32_n_1\
    );
\line_delay_reg[1471][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[1439][1]_srl32_n_1\,
      Q => \NLW_line_delay_reg[1471][1]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[1471][1]_srl32_n_1\
    );
\line_delay_reg[1472][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[1440][0]_srl32_n_1\,
      Q => \NLW_line_delay_reg[1472][0]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[1472][0]_srl32_n_1\
    );
\line_delay_reg[1503][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[1471][1]_srl32_n_1\,
      Q => \NLW_line_delay_reg[1503][1]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[1503][1]_srl32_n_1\
    );
\line_delay_reg[1504][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[1472][0]_srl32_n_1\,
      Q => \NLW_line_delay_reg[1504][0]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[1504][0]_srl32_n_1\
    );
\line_delay_reg[1535][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[1503][1]_srl32_n_1\,
      Q => \line_delay_reg[1535][1]_srl32_n_0\,
      Q31 => \NLW_line_delay_reg[1535][1]_srl32_Q31_UNCONNECTED\
    );
\line_delay_reg[1536][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[1504][0]_srl32_n_1\,
      Q => \line_delay_reg[1536][0]_srl32_n_0\,
      Q31 => \NLW_line_delay_reg[1536][0]_srl32_Q31_UNCONNECTED\
    );
\line_delay_reg[1567][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[1535][1]_srl32_n_0\,
      Q => \NLW_line_delay_reg[1567][1]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[1567][1]_srl32_n_1\
    );
\line_delay_reg[1568][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[1536][0]_srl32_n_0\,
      Q => \NLW_line_delay_reg[1568][0]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[1568][0]_srl32_n_1\
    );
\line_delay_reg[1599][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[1567][1]_srl32_n_1\,
      Q => \NLW_line_delay_reg[1599][1]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[1599][1]_srl32_n_1\
    );
\line_delay_reg[159][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[127][1]_srl32_n_0\,
      Q => \NLW_line_delay_reg[159][1]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[159][1]_srl32_n_1\
    );
\line_delay_reg[1600][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[1568][0]_srl32_n_1\,
      Q => \NLW_line_delay_reg[1600][0]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[1600][0]_srl32_n_1\
    );
\line_delay_reg[160][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[128][0]_srl32_n_0\,
      Q => \NLW_line_delay_reg[160][0]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[160][0]_srl32_n_1\
    );
\line_delay_reg[1631][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[1599][1]_srl32_n_1\,
      Q => \NLW_line_delay_reg[1631][1]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[1631][1]_srl32_n_1\
    );
\line_delay_reg[1632][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[1600][0]_srl32_n_1\,
      Q => \NLW_line_delay_reg[1632][0]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[1632][0]_srl32_n_1\
    );
\line_delay_reg[1663][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[1631][1]_srl32_n_1\,
      Q => \line_delay_reg[1663][1]_srl32_n_0\,
      Q31 => \NLW_line_delay_reg[1663][1]_srl32_Q31_UNCONNECTED\
    );
\line_delay_reg[1664][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[1632][0]_srl32_n_1\,
      Q => \line_delay_reg[1664][0]_srl32_n_0\,
      Q31 => \NLW_line_delay_reg[1664][0]_srl32_Q31_UNCONNECTED\
    );
\line_delay_reg[1695][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[1663][1]_srl32_n_0\,
      Q => \NLW_line_delay_reg[1695][1]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[1695][1]_srl32_n_1\
    );
\line_delay_reg[1696][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[1664][0]_srl32_n_0\,
      Q => \NLW_line_delay_reg[1696][0]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[1696][0]_srl32_n_1\
    );
\line_delay_reg[1727][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[1695][1]_srl32_n_1\,
      Q => \NLW_line_delay_reg[1727][1]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[1727][1]_srl32_n_1\
    );
\line_delay_reg[1728][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[1696][0]_srl32_n_1\,
      Q => \NLW_line_delay_reg[1728][0]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[1728][0]_srl32_n_1\
    );
\line_delay_reg[1759][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[1727][1]_srl32_n_1\,
      Q => \NLW_line_delay_reg[1759][1]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[1759][1]_srl32_n_1\
    );
\line_delay_reg[1760][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[1728][0]_srl32_n_1\,
      Q => \NLW_line_delay_reg[1760][0]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[1760][0]_srl32_n_1\
    );
\line_delay_reg[1791][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[1759][1]_srl32_n_1\,
      Q => \line_delay_reg[1791][1]_srl32_n_0\,
      Q31 => \NLW_line_delay_reg[1791][1]_srl32_Q31_UNCONNECTED\
    );
\line_delay_reg[1792][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[1760][0]_srl32_n_1\,
      Q => \line_delay_reg[1792][0]_srl32_n_0\,
      Q31 => \NLW_line_delay_reg[1792][0]_srl32_Q31_UNCONNECTED\
    );
\line_delay_reg[1798][1]_srl7\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"00110",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[1791][1]_srl32_n_0\,
      Q => \line_delay_reg[1798][1]_srl7_n_0\,
      Q31 => \NLW_line_delay_reg[1798][1]_srl7_Q31_UNCONNECTED\
    );
\line_delay_reg[1799][0]_srl7\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"00110",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[1792][0]_srl32_n_0\,
      Q => \line_delay_reg[1799][0]_srl7_n_0\,
      Q31 => \NLW_line_delay_reg[1799][0]_srl7_Q31_UNCONNECTED\
    );
\line_delay_reg[1799][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PixelClk,
      CE => '1',
      D => \line_delay_reg[1798][1]_srl7_n_0\,
      Q => vde_line,
      R => '0'
    );
\line_delay_reg[191][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[159][1]_srl32_n_1\,
      Q => \NLW_line_delay_reg[191][1]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[191][1]_srl32_n_1\
    );
\line_delay_reg[192][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[160][0]_srl32_n_1\,
      Q => \NLW_line_delay_reg[192][0]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[192][0]_srl32_n_1\
    );
\line_delay_reg[223][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[191][1]_srl32_n_1\,
      Q => \NLW_line_delay_reg[223][1]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[223][1]_srl32_n_1\
    );
\line_delay_reg[224][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[192][0]_srl32_n_1\,
      Q => \NLW_line_delay_reg[224][0]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[224][0]_srl32_n_1\
    );
\line_delay_reg[255][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[223][1]_srl32_n_1\,
      Q => \line_delay_reg[255][1]_srl32_n_0\,
      Q31 => \NLW_line_delay_reg[255][1]_srl32_Q31_UNCONNECTED\
    );
\line_delay_reg[256][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[224][0]_srl32_n_1\,
      Q => \line_delay_reg[256][0]_srl32_n_0\,
      Q31 => \NLW_line_delay_reg[256][0]_srl32_Q31_UNCONNECTED\
    );
\line_delay_reg[287][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[255][1]_srl32_n_0\,
      Q => \NLW_line_delay_reg[287][1]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[287][1]_srl32_n_1\
    );
\line_delay_reg[288][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[256][0]_srl32_n_0\,
      Q => \NLW_line_delay_reg[288][0]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[288][0]_srl32_n_1\
    );
\line_delay_reg[319][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[287][1]_srl32_n_1\,
      Q => \NLW_line_delay_reg[319][1]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[319][1]_srl32_n_1\
    );
\line_delay_reg[31][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => VDE_in,
      Q => \NLW_line_delay_reg[31][1]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[31][1]_srl32_n_1\
    );
\line_delay_reg[320][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[288][0]_srl32_n_1\,
      Q => \NLW_line_delay_reg[320][0]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[320][0]_srl32_n_1\
    );
\line_delay_reg[32][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg_n_0_[0][0]\,
      Q => \NLW_line_delay_reg[32][0]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[32][0]_srl32_n_1\
    );
\line_delay_reg[351][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[319][1]_srl32_n_1\,
      Q => \NLW_line_delay_reg[351][1]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[351][1]_srl32_n_1\
    );
\line_delay_reg[352][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[320][0]_srl32_n_1\,
      Q => \NLW_line_delay_reg[352][0]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[352][0]_srl32_n_1\
    );
\line_delay_reg[383][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[351][1]_srl32_n_1\,
      Q => \line_delay_reg[383][1]_srl32_n_0\,
      Q31 => \NLW_line_delay_reg[383][1]_srl32_Q31_UNCONNECTED\
    );
\line_delay_reg[384][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[352][0]_srl32_n_1\,
      Q => \line_delay_reg[384][0]_srl32_n_0\,
      Q31 => \NLW_line_delay_reg[384][0]_srl32_Q31_UNCONNECTED\
    );
\line_delay_reg[415][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[383][1]_srl32_n_0\,
      Q => \NLW_line_delay_reg[415][1]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[415][1]_srl32_n_1\
    );
\line_delay_reg[416][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[384][0]_srl32_n_0\,
      Q => \NLW_line_delay_reg[416][0]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[416][0]_srl32_n_1\
    );
\line_delay_reg[447][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[415][1]_srl32_n_1\,
      Q => \NLW_line_delay_reg[447][1]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[447][1]_srl32_n_1\
    );
\line_delay_reg[448][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[416][0]_srl32_n_1\,
      Q => \NLW_line_delay_reg[448][0]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[448][0]_srl32_n_1\
    );
\line_delay_reg[479][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[447][1]_srl32_n_1\,
      Q => \NLW_line_delay_reg[479][1]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[479][1]_srl32_n_1\
    );
\line_delay_reg[480][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[448][0]_srl32_n_1\,
      Q => \NLW_line_delay_reg[480][0]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[480][0]_srl32_n_1\
    );
\line_delay_reg[511][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[479][1]_srl32_n_1\,
      Q => \line_delay_reg[511][1]_srl32_n_0\,
      Q31 => \NLW_line_delay_reg[511][1]_srl32_Q31_UNCONNECTED\
    );
\line_delay_reg[512][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[480][0]_srl32_n_1\,
      Q => \line_delay_reg[512][0]_srl32_n_0\,
      Q31 => \NLW_line_delay_reg[512][0]_srl32_Q31_UNCONNECTED\
    );
\line_delay_reg[543][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[511][1]_srl32_n_0\,
      Q => \NLW_line_delay_reg[543][1]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[543][1]_srl32_n_1\
    );
\line_delay_reg[544][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[512][0]_srl32_n_0\,
      Q => \NLW_line_delay_reg[544][0]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[544][0]_srl32_n_1\
    );
\line_delay_reg[575][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[543][1]_srl32_n_1\,
      Q => \NLW_line_delay_reg[575][1]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[575][1]_srl32_n_1\
    );
\line_delay_reg[576][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[544][0]_srl32_n_1\,
      Q => \NLW_line_delay_reg[576][0]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[576][0]_srl32_n_1\
    );
\line_delay_reg[607][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[575][1]_srl32_n_1\,
      Q => \NLW_line_delay_reg[607][1]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[607][1]_srl32_n_1\
    );
\line_delay_reg[608][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[576][0]_srl32_n_1\,
      Q => \NLW_line_delay_reg[608][0]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[608][0]_srl32_n_1\
    );
\line_delay_reg[639][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[607][1]_srl32_n_1\,
      Q => \line_delay_reg[639][1]_srl32_n_0\,
      Q31 => \NLW_line_delay_reg[639][1]_srl32_Q31_UNCONNECTED\
    );
\line_delay_reg[63][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[31][1]_srl32_n_1\,
      Q => \NLW_line_delay_reg[63][1]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[63][1]_srl32_n_1\
    );
\line_delay_reg[640][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[608][0]_srl32_n_1\,
      Q => \line_delay_reg[640][0]_srl32_n_0\,
      Q31 => \NLW_line_delay_reg[640][0]_srl32_Q31_UNCONNECTED\
    );
\line_delay_reg[64][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[32][0]_srl32_n_1\,
      Q => \NLW_line_delay_reg[64][0]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[64][0]_srl32_n_1\
    );
\line_delay_reg[671][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[639][1]_srl32_n_0\,
      Q => \NLW_line_delay_reg[671][1]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[671][1]_srl32_n_1\
    );
\line_delay_reg[672][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[640][0]_srl32_n_0\,
      Q => \NLW_line_delay_reg[672][0]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[672][0]_srl32_n_1\
    );
\line_delay_reg[703][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[671][1]_srl32_n_1\,
      Q => \NLW_line_delay_reg[703][1]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[703][1]_srl32_n_1\
    );
\line_delay_reg[704][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[672][0]_srl32_n_1\,
      Q => \NLW_line_delay_reg[704][0]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[704][0]_srl32_n_1\
    );
\line_delay_reg[735][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[703][1]_srl32_n_1\,
      Q => \NLW_line_delay_reg[735][1]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[735][1]_srl32_n_1\
    );
\line_delay_reg[736][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[704][0]_srl32_n_1\,
      Q => \NLW_line_delay_reg[736][0]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[736][0]_srl32_n_1\
    );
\line_delay_reg[767][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[735][1]_srl32_n_1\,
      Q => \line_delay_reg[767][1]_srl32_n_0\,
      Q31 => \NLW_line_delay_reg[767][1]_srl32_Q31_UNCONNECTED\
    );
\line_delay_reg[768][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[736][0]_srl32_n_1\,
      Q => \line_delay_reg[768][0]_srl32_n_0\,
      Q31 => \NLW_line_delay_reg[768][0]_srl32_Q31_UNCONNECTED\
    );
\line_delay_reg[799][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[767][1]_srl32_n_0\,
      Q => \NLW_line_delay_reg[799][1]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[799][1]_srl32_n_1\
    );
\line_delay_reg[800][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[768][0]_srl32_n_0\,
      Q => \NLW_line_delay_reg[800][0]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[800][0]_srl32_n_1\
    );
\line_delay_reg[831][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[799][1]_srl32_n_1\,
      Q => \NLW_line_delay_reg[831][1]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[831][1]_srl32_n_1\
    );
\line_delay_reg[832][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[800][0]_srl32_n_1\,
      Q => \NLW_line_delay_reg[832][0]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[832][0]_srl32_n_1\
    );
\line_delay_reg[863][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[831][1]_srl32_n_1\,
      Q => \NLW_line_delay_reg[863][1]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[863][1]_srl32_n_1\
    );
\line_delay_reg[864][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[832][0]_srl32_n_1\,
      Q => \NLW_line_delay_reg[864][0]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[864][0]_srl32_n_1\
    );
\line_delay_reg[895][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[863][1]_srl32_n_1\,
      Q => \line_delay_reg[895][1]_srl32_n_0\,
      Q31 => \NLW_line_delay_reg[895][1]_srl32_Q31_UNCONNECTED\
    );
\line_delay_reg[896][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[864][0]_srl32_n_1\,
      Q => \line_delay_reg[896][0]_srl32_n_0\,
      Q31 => \NLW_line_delay_reg[896][0]_srl32_Q31_UNCONNECTED\
    );
\line_delay_reg[927][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[895][1]_srl32_n_0\,
      Q => \NLW_line_delay_reg[927][1]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[927][1]_srl32_n_1\
    );
\line_delay_reg[928][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[896][0]_srl32_n_0\,
      Q => \NLW_line_delay_reg[928][0]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[928][0]_srl32_n_1\
    );
\line_delay_reg[959][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[927][1]_srl32_n_1\,
      Q => \NLW_line_delay_reg[959][1]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[959][1]_srl32_n_1\
    );
\line_delay_reg[95][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[63][1]_srl32_n_1\,
      Q => \NLW_line_delay_reg[95][1]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[95][1]_srl32_n_1\
    );
\line_delay_reg[960][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[928][0]_srl32_n_1\,
      Q => \NLW_line_delay_reg[960][0]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[960][0]_srl32_n_1\
    );
\line_delay_reg[96][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[64][0]_srl32_n_1\,
      Q => \NLW_line_delay_reg[96][0]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[96][0]_srl32_n_1\
    );
\line_delay_reg[991][1]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[959][1]_srl32_n_1\,
      Q => \NLW_line_delay_reg[991][1]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[991][1]_srl32_n_1\
    );
\line_delay_reg[992][0]_srl32\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11111",
      CE => '1',
      CLK => PixelClk,
      D => \line_delay_reg[960][0]_srl32_n_1\,
      Q => \NLW_line_delay_reg[992][0]_srl32_Q_UNCONNECTED\,
      Q31 => \line_delay_reg[992][0]_srl32_n_1\
    );
reversed_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF10"
    )
        port map (
      I0 => VDE_in,
      I1 => vde_line,
      I2 => win_d,
      I3 => reversed,
      O => reversed_i_1_n_0
    );
reversed_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PixelClk,
      CE => '1',
      D => reversed_i_1_n_0,
      Q => reversed,
      R => '0'
    );
win_d_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => VDE_in,
      I1 => vde_line,
      O => win
    );
win_d_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PixelClk,
      CE => '1',
      D => win,
      Q => win_d,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    PixelClk : in STD_LOGIC;
    VSync_in : in STD_LOGIC;
    VDE_in : in STD_LOGIC;
    HSync_in : in STD_LOGIC;
    VSync_out : out STD_LOGIC;
    VDE_out : out STD_LOGIC;
    HSync_out : out STD_LOGIC;
    address : out STD_LOGIC_VECTOR ( 10 downto 0 );
    wea : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "HDMI_bd_miroir_0_0,miroir,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "miroir,Vivado 2018.2.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \^vde_in\ : STD_LOGIC;
begin
  \^vde_in\ <= VDE_in;
  wea(0) <= \^vde_in\;
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_miroir
     port map (
      HSync_in => HSync_in,
      HSync_out => HSync_out,
      PixelClk => PixelClk,
      VDE_in => \^vde_in\,
      VDE_out => VDE_out,
      VSync_in => VSync_in,
      VSync_out => VSync_out,
      address(10 downto 0) => address(10 downto 0)
    );
end STRUCTURE;
