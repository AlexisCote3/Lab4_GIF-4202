-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2.1 (win64) Build 2288692 Thu Jul 26 18:24:02 MDT 2018
-- Date        : Mon Nov 23 16:36:48 2026
-- Host        : pcetu-129 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               U:/Documents/FPGA/Lab4_GIF-4202/Le_Mur_V2/Le_Mur_V2.srcs/sources_1/bd/HDMI_bd/ip/HDMI_bd_Presence_mur_0_0/HDMI_bd_Presence_mur_0_0_sim_netlist.vhdl
-- Design      : HDMI_bd_Presence_mur_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity HDMI_bd_Presence_mur_0_0_Presence_mur is
  port (
    is_mur : out STD_LOGIC;
    pixel_x : in STD_LOGIC_VECTOR ( 10 downto 0 );
    pixel_x_10_sp_1 : in STD_LOGIC;
    pixel_y : in STD_LOGIC_VECTOR ( 10 downto 0 );
    pixel_y_7_sp_1 : in STD_LOGIC;
    wall_mask : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of HDMI_bd_Presence_mur_0_0_Presence_mur : entity is "Presence_mur";
end HDMI_bd_Presence_mur_0_0_Presence_mur;

architecture STRUCTURE of HDMI_bd_Presence_mur_0_0_Presence_mur is
  signal \col0__24_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \col0__24_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \col0__24_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \col0__24_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \col0__24_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \col0__24_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \col0__24_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \col0__24_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \col0__24_carry__0_n_0\ : STD_LOGIC;
  signal \col0__24_carry__0_n_1\ : STD_LOGIC;
  signal \col0__24_carry__0_n_2\ : STD_LOGIC;
  signal \col0__24_carry__0_n_3\ : STD_LOGIC;
  signal \col0__24_carry_i_1_n_0\ : STD_LOGIC;
  signal \col0__24_carry_i_2_n_0\ : STD_LOGIC;
  signal \col0__24_carry_i_3_n_0\ : STD_LOGIC;
  signal \col0__24_carry_i_4_n_0\ : STD_LOGIC;
  signal \col0__24_carry_i_5_n_0\ : STD_LOGIC;
  signal \col0__24_carry_i_6_n_0\ : STD_LOGIC;
  signal \col0__24_carry_i_7_n_0\ : STD_LOGIC;
  signal \col0__24_carry_i_8_n_3\ : STD_LOGIC;
  signal \col0__24_carry_n_0\ : STD_LOGIC;
  signal \col0__24_carry_n_1\ : STD_LOGIC;
  signal \col0__24_carry_n_2\ : STD_LOGIC;
  signal \col0__24_carry_n_3\ : STD_LOGIC;
  signal \col0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \col0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \col0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \col0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \col0_carry__0_n_0\ : STD_LOGIC;
  signal \col0_carry__0_n_1\ : STD_LOGIC;
  signal \col0_carry__0_n_2\ : STD_LOGIC;
  signal \col0_carry__0_n_3\ : STD_LOGIC;
  signal \col0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \col0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \col0_carry__1_n_0\ : STD_LOGIC;
  signal \col0_carry__1_n_1\ : STD_LOGIC;
  signal \col0_carry__1_n_2\ : STD_LOGIC;
  signal \col0_carry__1_n_3\ : STD_LOGIC;
  signal \col0_carry__1_n_4\ : STD_LOGIC;
  signal \col0_carry__1_n_5\ : STD_LOGIC;
  signal \col0_carry__1_n_6\ : STD_LOGIC;
  signal col0_carry_i_1_n_0 : STD_LOGIC;
  signal col0_carry_i_2_n_0 : STD_LOGIC;
  signal col0_carry_i_3_n_0 : STD_LOGIC;
  signal col0_carry_n_0 : STD_LOGIC;
  signal col0_carry_n_1 : STD_LOGIC;
  signal col0_carry_n_2 : STD_LOGIC;
  signal col0_carry_n_3 : STD_LOGIC;
  signal is_mur_INST_0_i_10_n_0 : STD_LOGIC;
  signal is_mur_INST_0_i_12_n_0 : STD_LOGIC;
  signal is_mur_INST_0_i_13_n_0 : STD_LOGIC;
  signal is_mur_INST_0_i_14_n_0 : STD_LOGIC;
  signal is_mur_INST_0_i_15_n_0 : STD_LOGIC;
  signal is_mur_INST_0_i_16_n_0 : STD_LOGIC;
  signal is_mur_INST_0_i_17_n_0 : STD_LOGIC;
  signal is_mur_INST_0_i_18_n_0 : STD_LOGIC;
  signal is_mur_INST_0_i_19_n_0 : STD_LOGIC;
  signal is_mur_INST_0_i_1_n_0 : STD_LOGIC;
  signal is_mur_INST_0_i_20_n_0 : STD_LOGIC;
  signal is_mur_INST_0_i_21_n_0 : STD_LOGIC;
  signal is_mur_INST_0_i_22_n_0 : STD_LOGIC;
  signal is_mur_INST_0_i_23_n_0 : STD_LOGIC;
  signal is_mur_INST_0_i_24_n_0 : STD_LOGIC;
  signal is_mur_INST_0_i_25_n_0 : STD_LOGIC;
  signal is_mur_INST_0_i_26_n_0 : STD_LOGIC;
  signal is_mur_INST_0_i_27_n_0 : STD_LOGIC;
  signal is_mur_INST_0_i_28_n_0 : STD_LOGIC;
  signal is_mur_INST_0_i_29_n_0 : STD_LOGIC;
  signal is_mur_INST_0_i_2_n_0 : STD_LOGIC;
  signal is_mur_INST_0_i_30_n_0 : STD_LOGIC;
  signal is_mur_INST_0_i_3_n_0 : STD_LOGIC;
  signal is_mur_INST_0_i_4_n_0 : STD_LOGIC;
  signal is_mur_INST_0_i_6_n_0 : STD_LOGIC;
  signal is_mur_INST_0_i_7_n_0 : STD_LOGIC;
  signal is_mur_INST_0_i_8_n_0 : STD_LOGIC;
  signal is_mur_INST_0_i_9_n_0 : STD_LOGIC;
  signal pixel_x_10_sn_1 : STD_LOGIC;
  signal pixel_y_7_sn_1 : STD_LOGIC;
  signal \row0__24_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \row0__24_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \row0__24_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \row0__24_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \row0__24_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \row0__24_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \row0__24_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \row0__24_carry__0_n_0\ : STD_LOGIC;
  signal \row0__24_carry__0_n_1\ : STD_LOGIC;
  signal \row0__24_carry__0_n_2\ : STD_LOGIC;
  signal \row0__24_carry__0_n_3\ : STD_LOGIC;
  signal \row0__24_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \row0__24_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \row0__24_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \row0__24_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \row0__24_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \row0__24_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \row0__24_carry__1_n_1\ : STD_LOGIC;
  signal \row0__24_carry__1_n_2\ : STD_LOGIC;
  signal \row0__24_carry__1_n_3\ : STD_LOGIC;
  signal \row0__24_carry_i_1_n_0\ : STD_LOGIC;
  signal \row0__24_carry_i_2_n_0\ : STD_LOGIC;
  signal \row0__24_carry_i_3_n_0\ : STD_LOGIC;
  signal \row0__24_carry_i_4_n_0\ : STD_LOGIC;
  signal \row0__24_carry_i_5_n_0\ : STD_LOGIC;
  signal \row0__24_carry_i_6_n_0\ : STD_LOGIC;
  signal \row0__24_carry_i_7_n_0\ : STD_LOGIC;
  signal \row0__24_carry_i_8_n_3\ : STD_LOGIC;
  signal \row0__24_carry_n_0\ : STD_LOGIC;
  signal \row0__24_carry_n_1\ : STD_LOGIC;
  signal \row0__24_carry_n_2\ : STD_LOGIC;
  signal \row0__24_carry_n_3\ : STD_LOGIC;
  signal \row0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \row0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \row0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \row0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \row0_carry__0_n_0\ : STD_LOGIC;
  signal \row0_carry__0_n_1\ : STD_LOGIC;
  signal \row0_carry__0_n_2\ : STD_LOGIC;
  signal \row0_carry__0_n_3\ : STD_LOGIC;
  signal \row0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \row0_carry__1_n_0\ : STD_LOGIC;
  signal \row0_carry__1_n_1\ : STD_LOGIC;
  signal \row0_carry__1_n_2\ : STD_LOGIC;
  signal \row0_carry__1_n_3\ : STD_LOGIC;
  signal \row0_carry__1_n_4\ : STD_LOGIC;
  signal \row0_carry__1_n_5\ : STD_LOGIC;
  signal \row0_carry__1_n_6\ : STD_LOGIC;
  signal row0_carry_i_1_n_0 : STD_LOGIC;
  signal row0_carry_i_2_n_0 : STD_LOGIC;
  signal row0_carry_i_3_n_0 : STD_LOGIC;
  signal row0_carry_n_0 : STD_LOGIC;
  signal row0_carry_n_1 : STD_LOGIC;
  signal row0_carry_n_2 : STD_LOGIC;
  signal row0_carry_n_3 : STD_LOGIC;
  signal \NLW_col0__24_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_col0__24_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_col0__24_carry_i_8_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_col0__24_carry_i_8_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_col0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_col0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_col0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_row0__24_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_row0__24_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_row0__24_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_row0__24_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_row0__24_carry_i_8_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_row0__24_carry_i_8_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_row0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_row0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_row0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute HLUTNM : string;
  attribute HLUTNM of \col0__24_carry_i_1\ : label is "lutpair0";
  attribute HLUTNM of \col0__24_carry_i_5\ : label is "lutpair0";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of is_mur_INST_0_i_14 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of is_mur_INST_0_i_16 : label is "soft_lutpair0";
begin
  pixel_x_10_sn_1 <= pixel_x_10_sp_1;
  pixel_y_7_sn_1 <= pixel_y_7_sp_1;
\col0__24_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \col0__24_carry_n_0\,
      CO(2) => \col0__24_carry_n_1\,
      CO(1) => \col0__24_carry_n_2\,
      CO(0) => \col0__24_carry_n_3\,
      CYINIT => '0',
      DI(3) => \col0__24_carry_i_1_n_0\,
      DI(2) => \col0__24_carry_i_2_n_0\,
      DI(1) => \col0__24_carry_i_3_n_0\,
      DI(0) => '0',
      O(3 downto 0) => \NLW_col0__24_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \col0__24_carry_i_4_n_0\,
      S(2) => \col0__24_carry_i_5_n_0\,
      S(1) => \col0__24_carry_i_6_n_0\,
      S(0) => \col0__24_carry_i_7_n_0\
    );
\col0__24_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \col0__24_carry_n_0\,
      CO(3) => \col0__24_carry__0_n_0\,
      CO(2) => \col0__24_carry__0_n_1\,
      CO(1) => \col0__24_carry__0_n_2\,
      CO(0) => \col0__24_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \col0__24_carry__0_i_1_n_0\,
      DI(2) => \col0__24_carry__0_i_2_n_0\,
      DI(1) => \col0__24_carry__0_i_3_n_0\,
      DI(0) => \col0__24_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_col0__24_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \col0__24_carry__0_i_5_n_0\,
      S(2) => \col0__24_carry__0_i_6_n_0\,
      S(1) => \col0__24_carry__0_i_7_n_0\,
      S(0) => \col0__24_carry__0_i_8_n_0\
    );
\col0__24_carry__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000D69C"
    )
        port map (
      I0 => \col0_carry__1_n_5\,
      I1 => \col0__24_carry_i_8_n_3\,
      I2 => \col0_carry__1_n_4\,
      I3 => \col0_carry__1_n_6\,
      I4 => pixel_x(9),
      O => \col0__24_carry__0_i_1_n_0\
    );
\col0__24_carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000996C"
    )
        port map (
      I0 => \col0_carry__1_n_6\,
      I1 => \col0_carry__1_n_4\,
      I2 => \col0__24_carry_i_8_n_3\,
      I3 => \col0_carry__1_n_5\,
      I4 => pixel_x(8),
      O => \col0__24_carry__0_i_2_n_0\
    );
\col0__24_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9AFF"
    )
        port map (
      I0 => \col0_carry__1_n_5\,
      I1 => \col0__24_carry_i_8_n_3\,
      I2 => \col0_carry__1_n_6\,
      I3 => pixel_x(7),
      O => \col0__24_carry__0_i_3_n_0\
    );
\col0__24_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6F"
    )
        port map (
      I0 => \col0_carry__1_n_6\,
      I1 => \col0__24_carry_i_8_n_3\,
      I2 => pixel_x(6),
      O => \col0__24_carry__0_i_4_n_0\
    );
\col0__24_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"54F52A40AB0AD5BF"
    )
        port map (
      I0 => pixel_x(9),
      I1 => \col0_carry__1_n_6\,
      I2 => \col0_carry__1_n_5\,
      I3 => \col0__24_carry_i_8_n_3\,
      I4 => \col0_carry__1_n_4\,
      I5 => pixel_x(10),
      O => \col0__24_carry__0_i_5_n_0\
    );
\col0__24_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24DDBA04DB2245F"
    )
        port map (
      I0 => pixel_x(8),
      I1 => \col0_carry__1_n_6\,
      I2 => \col0_carry__1_n_4\,
      I3 => \col0__24_carry_i_8_n_3\,
      I4 => \col0_carry__1_n_5\,
      I5 => pixel_x(9),
      O => \col0__24_carry__0_i_6_n_0\
    );
\col0__24_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"18E7EE11E71811EE"
    )
        port map (
      I0 => pixel_x(7),
      I1 => \col0_carry__1_n_5\,
      I2 => \col0__24_carry_i_8_n_3\,
      I3 => \col0_carry__1_n_4\,
      I4 => \col0_carry__1_n_6\,
      I5 => pixel_x(8),
      O => \col0__24_carry__0_i_7_n_0\
    );
\col0__24_carry__0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"718E8E71"
    )
        port map (
      I0 => pixel_x(6),
      I1 => \col0_carry__1_n_6\,
      I2 => \col0__24_carry_i_8_n_3\,
      I3 => \col0_carry__1_n_5\,
      I4 => pixel_x(7),
      O => \col0__24_carry__0_i_8_n_0\
    );
\col0__24_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \col0_carry__1_n_4\,
      I1 => pixel_x(5),
      O => \col0__24_carry_i_1_n_0\
    );
\col0__24_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \col0_carry__1_n_5\,
      I1 => pixel_x(4),
      O => \col0__24_carry_i_2_n_0\
    );
\col0__24_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \col0_carry__1_n_6\,
      I1 => pixel_x(3),
      O => \col0__24_carry_i_3_n_0\
    );
\col0__24_carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \col0__24_carry_i_1_n_0\,
      I1 => \col0__24_carry_i_8_n_3\,
      I2 => \col0_carry__1_n_6\,
      I3 => pixel_x(6),
      O => \col0__24_carry_i_4_n_0\
    );
\col0__24_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9699"
    )
        port map (
      I0 => \col0_carry__1_n_4\,
      I1 => pixel_x(5),
      I2 => pixel_x(4),
      I3 => \col0_carry__1_n_5\,
      O => \col0__24_carry_i_5_n_0\
    );
\col0__24_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => pixel_x(3),
      I1 => \col0_carry__1_n_6\,
      I2 => \col0_carry__1_n_5\,
      I3 => pixel_x(4),
      O => \col0__24_carry_i_6_n_0\
    );
\col0__24_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pixel_x(3),
      I1 => \col0_carry__1_n_6\,
      O => \col0__24_carry_i_7_n_0\
    );
\col0__24_carry_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => \col0_carry__1_n_0\,
      CO(3 downto 1) => \NLW_col0__24_carry_i_8_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \col0__24_carry_i_8_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_col0__24_carry_i_8_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
col0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => col0_carry_n_0,
      CO(2) => col0_carry_n_1,
      CO(1) => col0_carry_n_2,
      CO(0) => col0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 1) => pixel_x(4 downto 2),
      DI(0) => '0',
      O(3 downto 0) => NLW_col0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => col0_carry_i_1_n_0,
      S(2) => col0_carry_i_2_n_0,
      S(1) => col0_carry_i_3_n_0,
      S(0) => pixel_x(1)
    );
\col0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => col0_carry_n_0,
      CO(3) => \col0_carry__0_n_0\,
      CO(2) => \col0_carry__0_n_1\,
      CO(1) => \col0_carry__0_n_2\,
      CO(0) => \col0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => pixel_x(8 downto 5),
      O(3 downto 0) => \NLW_col0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \col0_carry__0_i_1_n_0\,
      S(2) => \col0_carry__0_i_2_n_0\,
      S(1) => \col0_carry__0_i_3_n_0\,
      S(0) => \col0_carry__0_i_4_n_0\
    );
\col0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pixel_x(8),
      I1 => pixel_x(6),
      O => \col0_carry__0_i_1_n_0\
    );
\col0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pixel_x(7),
      I1 => pixel_x(5),
      O => \col0_carry__0_i_2_n_0\
    );
\col0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pixel_x(6),
      I1 => pixel_x(4),
      O => \col0_carry__0_i_3_n_0\
    );
\col0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pixel_x(5),
      I1 => pixel_x(3),
      O => \col0_carry__0_i_4_n_0\
    );
\col0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \col0_carry__0_n_0\,
      CO(3) => \col0_carry__1_n_0\,
      CO(2) => \col0_carry__1_n_1\,
      CO(1) => \col0_carry__1_n_2\,
      CO(0) => \col0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => pixel_x(10 downto 9),
      O(3) => \col0_carry__1_n_4\,
      O(2) => \col0_carry__1_n_5\,
      O(1) => \col0_carry__1_n_6\,
      O(0) => \NLW_col0_carry__1_O_UNCONNECTED\(0),
      S(3 downto 2) => pixel_x(10 downto 9),
      S(1) => \col0_carry__1_i_1_n_0\,
      S(0) => \col0_carry__1_i_2_n_0\
    );
\col0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pixel_x(10),
      I1 => pixel_x(8),
      O => \col0_carry__1_i_1_n_0\
    );
\col0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pixel_x(9),
      I1 => pixel_x(7),
      O => \col0_carry__1_i_2_n_0\
    );
col0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pixel_x(4),
      I1 => pixel_x(2),
      O => col0_carry_i_1_n_0
    );
col0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pixel_x(3),
      I1 => pixel_x(1),
      O => col0_carry_i_2_n_0
    );
col0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pixel_x(2),
      I1 => pixel_x(0),
      O => col0_carry_i_3_n_0
    );
is_mur_INST_0: unisim.vcomponents.MUXF8
     port map (
      I0 => is_mur_INST_0_i_2_n_0,
      I1 => is_mur_INST_0_i_3_n_0,
      O => is_mur,
      S => is_mur_INST_0_i_1_n_0
    );
is_mur_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A6FF"
    )
        port map (
      I0 => \row0_carry__1_n_5\,
      I1 => \row0_carry__1_n_6\,
      I2 => is_mur_INST_0_i_4_n_0,
      I3 => pixel_y_7_sn_1,
      O => is_mur_INST_0_i_1_n_0
    );
is_mur_INST_0_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => is_mur_INST_0_i_26_n_0,
      I1 => is_mur_INST_0_i_27_n_0,
      I2 => is_mur_INST_0_i_14_n_0,
      I3 => is_mur_INST_0_i_28_n_0,
      I4 => is_mur_INST_0_i_16_n_0,
      I5 => is_mur_INST_0_i_29_n_0,
      O => is_mur_INST_0_i_10_n_0
    );
is_mur_INST_0_i_12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEAA82AA"
    )
        port map (
      I0 => wall_mask(24),
      I1 => \col0_carry__1_n_6\,
      I2 => is_mur_INST_0_i_30_n_0,
      I3 => pixel_x_10_sn_1,
      I4 => wall_mask(25),
      O => is_mur_INST_0_i_12_n_0
    );
is_mur_INST_0_i_13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEAA82AA"
    )
        port map (
      I0 => wall_mask(26),
      I1 => \col0_carry__1_n_6\,
      I2 => is_mur_INST_0_i_30_n_0,
      I3 => pixel_x_10_sn_1,
      I4 => wall_mask(27),
      O => is_mur_INST_0_i_13_n_0
    );
is_mur_INST_0_i_14: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA6AFFFF"
    )
        port map (
      I0 => \col0_carry__1_n_4\,
      I1 => \col0_carry__1_n_5\,
      I2 => \col0_carry__1_n_6\,
      I3 => is_mur_INST_0_i_30_n_0,
      I4 => pixel_x_10_sn_1,
      O => is_mur_INST_0_i_14_n_0
    );
is_mur_INST_0_i_15: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEAA82AA"
    )
        port map (
      I0 => wall_mask(28),
      I1 => \col0_carry__1_n_6\,
      I2 => is_mur_INST_0_i_30_n_0,
      I3 => pixel_x_10_sn_1,
      I4 => wall_mask(29),
      O => is_mur_INST_0_i_15_n_0
    );
is_mur_INST_0_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A6FF"
    )
        port map (
      I0 => \col0_carry__1_n_5\,
      I1 => \col0_carry__1_n_6\,
      I2 => is_mur_INST_0_i_30_n_0,
      I3 => pixel_x_10_sn_1,
      O => is_mur_INST_0_i_16_n_0
    );
is_mur_INST_0_i_17: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEAA82AA"
    )
        port map (
      I0 => wall_mask(30),
      I1 => \col0_carry__1_n_6\,
      I2 => is_mur_INST_0_i_30_n_0,
      I3 => pixel_x_10_sn_1,
      I4 => wall_mask(31),
      O => is_mur_INST_0_i_17_n_0
    );
is_mur_INST_0_i_18: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEAA82AA"
    )
        port map (
      I0 => wall_mask(16),
      I1 => \col0_carry__1_n_6\,
      I2 => is_mur_INST_0_i_30_n_0,
      I3 => pixel_x_10_sn_1,
      I4 => wall_mask(17),
      O => is_mur_INST_0_i_18_n_0
    );
is_mur_INST_0_i_19: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEAA82AA"
    )
        port map (
      I0 => wall_mask(18),
      I1 => \col0_carry__1_n_6\,
      I2 => is_mur_INST_0_i_30_n_0,
      I3 => pixel_x_10_sn_1,
      I4 => wall_mask(19),
      O => is_mur_INST_0_i_19_n_0
    );
is_mur_INST_0_i_2: unisim.vcomponents.MUXF7
     port map (
      I0 => is_mur_INST_0_i_7_n_0,
      I1 => is_mur_INST_0_i_8_n_0,
      O => is_mur_INST_0_i_2_n_0,
      S => is_mur_INST_0_i_6_n_0
    );
is_mur_INST_0_i_20: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEAA82AA"
    )
        port map (
      I0 => wall_mask(20),
      I1 => \col0_carry__1_n_6\,
      I2 => is_mur_INST_0_i_30_n_0,
      I3 => pixel_x_10_sn_1,
      I4 => wall_mask(21),
      O => is_mur_INST_0_i_20_n_0
    );
is_mur_INST_0_i_21: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEAA82AA"
    )
        port map (
      I0 => wall_mask(22),
      I1 => \col0_carry__1_n_6\,
      I2 => is_mur_INST_0_i_30_n_0,
      I3 => pixel_x_10_sn_1,
      I4 => wall_mask(23),
      O => is_mur_INST_0_i_21_n_0
    );
is_mur_INST_0_i_22: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEAA82AA"
    )
        port map (
      I0 => wall_mask(8),
      I1 => \col0_carry__1_n_6\,
      I2 => is_mur_INST_0_i_30_n_0,
      I3 => pixel_x_10_sn_1,
      I4 => wall_mask(9),
      O => is_mur_INST_0_i_22_n_0
    );
is_mur_INST_0_i_23: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEAA82AA"
    )
        port map (
      I0 => wall_mask(10),
      I1 => \col0_carry__1_n_6\,
      I2 => is_mur_INST_0_i_30_n_0,
      I3 => pixel_x_10_sn_1,
      I4 => wall_mask(11),
      O => is_mur_INST_0_i_23_n_0
    );
is_mur_INST_0_i_24: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEAA82AA"
    )
        port map (
      I0 => wall_mask(12),
      I1 => \col0_carry__1_n_6\,
      I2 => is_mur_INST_0_i_30_n_0,
      I3 => pixel_x_10_sn_1,
      I4 => wall_mask(13),
      O => is_mur_INST_0_i_24_n_0
    );
is_mur_INST_0_i_25: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEAA82AA"
    )
        port map (
      I0 => wall_mask(14),
      I1 => \col0_carry__1_n_6\,
      I2 => is_mur_INST_0_i_30_n_0,
      I3 => pixel_x_10_sn_1,
      I4 => wall_mask(15),
      O => is_mur_INST_0_i_25_n_0
    );
is_mur_INST_0_i_26: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEAA82AA"
    )
        port map (
      I0 => wall_mask(0),
      I1 => \col0_carry__1_n_6\,
      I2 => is_mur_INST_0_i_30_n_0,
      I3 => pixel_x_10_sn_1,
      I4 => wall_mask(1),
      O => is_mur_INST_0_i_26_n_0
    );
is_mur_INST_0_i_27: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEAA82AA"
    )
        port map (
      I0 => wall_mask(2),
      I1 => \col0_carry__1_n_6\,
      I2 => is_mur_INST_0_i_30_n_0,
      I3 => pixel_x_10_sn_1,
      I4 => wall_mask(3),
      O => is_mur_INST_0_i_27_n_0
    );
is_mur_INST_0_i_28: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEAA82AA"
    )
        port map (
      I0 => wall_mask(4),
      I1 => \col0_carry__1_n_6\,
      I2 => is_mur_INST_0_i_30_n_0,
      I3 => pixel_x_10_sn_1,
      I4 => wall_mask(5),
      O => is_mur_INST_0_i_28_n_0
    );
is_mur_INST_0_i_29: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEAA82AA"
    )
        port map (
      I0 => wall_mask(6),
      I1 => \col0_carry__1_n_6\,
      I2 => is_mur_INST_0_i_30_n_0,
      I3 => pixel_x_10_sn_1,
      I4 => wall_mask(7),
      O => is_mur_INST_0_i_29_n_0
    );
is_mur_INST_0_i_3: unisim.vcomponents.MUXF7
     port map (
      I0 => is_mur_INST_0_i_9_n_0,
      I1 => is_mur_INST_0_i_10_n_0,
      O => is_mur_INST_0_i_3_n_0,
      S => is_mur_INST_0_i_6_n_0
    );
is_mur_INST_0_i_30: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABBAAABBBAAAA"
    )
        port map (
      I0 => \col0__24_carry__0_n_0\,
      I1 => pixel_x(10),
      I2 => \col0_carry__1_n_6\,
      I3 => \col0_carry__1_n_5\,
      I4 => \col0__24_carry_i_8_n_3\,
      I5 => \col0_carry__1_n_4\,
      O => is_mur_INST_0_i_30_n_0
    );
is_mur_INST_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABBBABAABAAABAA"
    )
        port map (
      I0 => \row0__24_carry__1_n_1\,
      I1 => pixel_y(10),
      I2 => \row0_carry__1_n_5\,
      I3 => \row0__24_carry_i_8_n_3\,
      I4 => \row0_carry__1_n_6\,
      I5 => \row0_carry__1_n_4\,
      O => is_mur_INST_0_i_4_n_0
    );
is_mur_INST_0_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9F"
    )
        port map (
      I0 => \row0_carry__1_n_6\,
      I1 => is_mur_INST_0_i_4_n_0,
      I2 => pixel_y_7_sn_1,
      O => is_mur_INST_0_i_6_n_0
    );
is_mur_INST_0_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => is_mur_INST_0_i_12_n_0,
      I1 => is_mur_INST_0_i_13_n_0,
      I2 => is_mur_INST_0_i_14_n_0,
      I3 => is_mur_INST_0_i_15_n_0,
      I4 => is_mur_INST_0_i_16_n_0,
      I5 => is_mur_INST_0_i_17_n_0,
      O => is_mur_INST_0_i_7_n_0
    );
is_mur_INST_0_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => is_mur_INST_0_i_18_n_0,
      I1 => is_mur_INST_0_i_19_n_0,
      I2 => is_mur_INST_0_i_14_n_0,
      I3 => is_mur_INST_0_i_20_n_0,
      I4 => is_mur_INST_0_i_16_n_0,
      I5 => is_mur_INST_0_i_21_n_0,
      O => is_mur_INST_0_i_8_n_0
    );
is_mur_INST_0_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => is_mur_INST_0_i_22_n_0,
      I1 => is_mur_INST_0_i_23_n_0,
      I2 => is_mur_INST_0_i_14_n_0,
      I3 => is_mur_INST_0_i_24_n_0,
      I4 => is_mur_INST_0_i_16_n_0,
      I5 => is_mur_INST_0_i_25_n_0,
      O => is_mur_INST_0_i_9_n_0
    );
\row0__24_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \row0__24_carry_n_0\,
      CO(2) => \row0__24_carry_n_1\,
      CO(1) => \row0__24_carry_n_2\,
      CO(0) => \row0__24_carry_n_3\,
      CYINIT => '0',
      DI(3) => \row0__24_carry_i_1_n_0\,
      DI(2) => \row0__24_carry_i_2_n_0\,
      DI(1) => \row0__24_carry_i_3_n_0\,
      DI(0) => '0',
      O(3 downto 0) => \NLW_row0__24_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \row0__24_carry_i_4_n_0\,
      S(2) => \row0__24_carry_i_5_n_0\,
      S(1) => \row0__24_carry_i_6_n_0\,
      S(0) => \row0__24_carry_i_7_n_0\
    );
\row0__24_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \row0__24_carry_n_0\,
      CO(3) => \row0__24_carry__0_n_0\,
      CO(2) => \row0__24_carry__0_n_1\,
      CO(1) => \row0__24_carry__0_n_2\,
      CO(0) => \row0__24_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \row0__24_carry__0_i_1_n_0\,
      DI(2) => \row0__24_carry__0_i_2_n_0\,
      DI(1) => '0',
      DI(0) => \row0__24_carry__0_i_3_n_0\,
      O(3 downto 0) => \NLW_row0__24_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \row0__24_carry__0_i_4_n_0\,
      S(2) => \row0__24_carry__0_i_5_n_0\,
      S(1) => \row0__24_carry__0_i_6_n_0\,
      S(0) => \row0__24_carry__0_i_7_n_0\
    );
\row0__24_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6F"
    )
        port map (
      I0 => \row0_carry__1_n_6\,
      I1 => \row0_carry__1_n_5\,
      I2 => pixel_y(6),
      O => \row0__24_carry__0_i_1_n_0\
    );
\row0__24_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \row0_carry__1_n_6\,
      I1 => pixel_y(5),
      O => \row0__24_carry__0_i_2_n_0\
    );
\row0__24_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \row0__24_carry_i_8_n_3\,
      I1 => pixel_y(3),
      O => \row0__24_carry__0_i_3_n_0\
    );
\row0__24_carry__0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"817E7E81"
    )
        port map (
      I0 => pixel_y(6),
      I1 => \row0_carry__1_n_5\,
      I2 => \row0_carry__1_n_6\,
      I3 => \row0_carry__1_n_4\,
      I4 => pixel_y(7),
      O => \row0__24_carry__0_i_4_n_0\
    );
\row0__24_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"36C9"
    )
        port map (
      I0 => pixel_y(5),
      I1 => \row0_carry__1_n_5\,
      I2 => \row0_carry__1_n_6\,
      I3 => pixel_y(6),
      O => \row0__24_carry__0_i_5_n_0\
    );
\row0__24_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pixel_y(5),
      I1 => \row0_carry__1_n_6\,
      O => \row0__24_carry__0_i_6_n_0\
    );
\row0__24_carry__0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => pixel_y(3),
      I1 => \row0__24_carry_i_8_n_3\,
      I2 => pixel_y(4),
      O => \row0__24_carry__0_i_7_n_0\
    );
\row0__24_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \row0__24_carry__0_n_0\,
      CO(3) => \NLW_row0__24_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \row0__24_carry__1_n_1\,
      CO(1) => \row0__24_carry__1_n_2\,
      CO(0) => \row0__24_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \row0__24_carry__1_i_1_n_0\,
      DI(1) => \row0__24_carry__1_i_2_n_0\,
      DI(0) => \row0__24_carry__1_i_3_n_0\,
      O(3 downto 0) => \NLW_row0__24_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \row0__24_carry__1_i_4_n_0\,
      S(1) => \row0__24_carry__1_i_5_n_0\,
      S(0) => \row0__24_carry__1_i_6_n_0\
    );
\row0__24_carry__1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006564"
    )
        port map (
      I0 => \row0_carry__1_n_5\,
      I1 => \row0__24_carry_i_8_n_3\,
      I2 => \row0_carry__1_n_6\,
      I3 => \row0_carry__1_n_4\,
      I4 => pixel_y(9),
      O => \row0__24_carry__1_i_1_n_0\
    );
\row0__24_carry__1_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000999A"
    )
        port map (
      I0 => \row0__24_carry_i_8_n_3\,
      I1 => \row0_carry__1_n_6\,
      I2 => \row0_carry__1_n_5\,
      I3 => \row0_carry__1_n_4\,
      I4 => pixel_y(8),
      O => \row0__24_carry__1_i_2_n_0\
    );
\row0__24_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56FF"
    )
        port map (
      I0 => \row0_carry__1_n_4\,
      I1 => \row0_carry__1_n_6\,
      I2 => \row0_carry__1_n_5\,
      I3 => pixel_y(7),
      O => \row0__24_carry__1_i_3_n_0\
    );
\row0__24_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DBDD24202422DBDF"
    )
        port map (
      I0 => pixel_y(9),
      I1 => \row0_carry__1_n_5\,
      I2 => \row0__24_carry_i_8_n_3\,
      I3 => \row0_carry__1_n_6\,
      I4 => \row0_carry__1_n_4\,
      I5 => pixel_y(10),
      O => \row0__24_carry__1_i_4_n_0\
    );
\row0__24_carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"50F5AE08AF0A51F7"
    )
        port map (
      I0 => pixel_y(8),
      I1 => \row0_carry__1_n_4\,
      I2 => \row0_carry__1_n_6\,
      I3 => \row0__24_carry_i_8_n_3\,
      I4 => \row0_carry__1_n_5\,
      I5 => pixel_y(9),
      O => \row0__24_carry__1_i_5_n_0\
    );
\row0__24_carry__1_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"887E77817781887E"
    )
        port map (
      I0 => pixel_y(7),
      I1 => \row0_carry__1_n_4\,
      I2 => \row0_carry__1_n_5\,
      I3 => \row0_carry__1_n_6\,
      I4 => \row0__24_carry_i_8_n_3\,
      I5 => pixel_y(8),
      O => \row0__24_carry__1_i_6_n_0\
    );
\row0__24_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \row0_carry__1_n_4\,
      I1 => pixel_y(2),
      O => \row0__24_carry_i_1_n_0\
    );
\row0__24_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \row0_carry__1_n_5\,
      I1 => pixel_y(1),
      O => \row0__24_carry_i_2_n_0\
    );
\row0__24_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \row0_carry__1_n_6\,
      I1 => pixel_y(0),
      O => \row0__24_carry_i_3_n_0\
    );
\row0__24_carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => pixel_y(2),
      I1 => \row0_carry__1_n_4\,
      I2 => \row0__24_carry_i_8_n_3\,
      I3 => pixel_y(3),
      O => \row0__24_carry_i_4_n_0\
    );
\row0__24_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => pixel_y(1),
      I1 => \row0_carry__1_n_5\,
      I2 => \row0_carry__1_n_4\,
      I3 => pixel_y(2),
      O => \row0__24_carry_i_5_n_0\
    );
\row0__24_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => pixel_y(0),
      I1 => \row0_carry__1_n_6\,
      I2 => \row0_carry__1_n_5\,
      I3 => pixel_y(1),
      O => \row0__24_carry_i_6_n_0\
    );
\row0__24_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pixel_y(0),
      I1 => \row0_carry__1_n_6\,
      O => \row0__24_carry_i_7_n_0\
    );
\row0__24_carry_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => \row0_carry__1_n_0\,
      CO(3 downto 1) => \NLW_row0__24_carry_i_8_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \row0__24_carry_i_8_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_row0__24_carry_i_8_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
row0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => row0_carry_n_0,
      CO(2) => row0_carry_n_1,
      CO(1) => row0_carry_n_2,
      CO(0) => row0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 1) => pixel_y(5 downto 3),
      DI(0) => '0',
      O(3 downto 0) => NLW_row0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => row0_carry_i_1_n_0,
      S(2) => row0_carry_i_2_n_0,
      S(1) => row0_carry_i_3_n_0,
      S(0) => pixel_y(2)
    );
\row0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => row0_carry_n_0,
      CO(3) => \row0_carry__0_n_0\,
      CO(2) => \row0_carry__0_n_1\,
      CO(1) => \row0_carry__0_n_2\,
      CO(0) => \row0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => pixel_y(9 downto 6),
      O(3 downto 0) => \NLW_row0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \row0_carry__0_i_1_n_0\,
      S(2) => \row0_carry__0_i_2_n_0\,
      S(1) => \row0_carry__0_i_3_n_0\,
      S(0) => \row0_carry__0_i_4_n_0\
    );
\row0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pixel_y(9),
      I1 => pixel_y(6),
      O => \row0_carry__0_i_1_n_0\
    );
\row0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pixel_y(8),
      I1 => pixel_y(5),
      O => \row0_carry__0_i_2_n_0\
    );
\row0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pixel_y(7),
      I1 => pixel_y(4),
      O => \row0_carry__0_i_3_n_0\
    );
\row0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pixel_y(6),
      I1 => pixel_y(3),
      O => \row0_carry__0_i_4_n_0\
    );
\row0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \row0_carry__0_n_0\,
      CO(3) => \row0_carry__1_n_0\,
      CO(2) => \row0_carry__1_n_1\,
      CO(1) => \row0_carry__1_n_2\,
      CO(0) => \row0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => pixel_y(10),
      O(3) => \row0_carry__1_n_4\,
      O(2) => \row0_carry__1_n_5\,
      O(1) => \row0_carry__1_n_6\,
      O(0) => \NLW_row0_carry__1_O_UNCONNECTED\(0),
      S(3 downto 1) => pixel_y(10 downto 8),
      S(0) => \row0_carry__1_i_1_n_0\
    );
\row0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pixel_y(10),
      I1 => pixel_y(7),
      O => \row0_carry__1_i_1_n_0\
    );
row0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pixel_y(5),
      I1 => pixel_y(2),
      O => row0_carry_i_1_n_0
    );
row0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pixel_y(4),
      I1 => pixel_y(1),
      O => row0_carry_i_2_n_0
    );
row0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pixel_y(3),
      I1 => pixel_y(0),
      O => row0_carry_i_3_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity HDMI_bd_Presence_mur_0_0 is
  port (
    pixel_x : in STD_LOGIC_VECTOR ( 10 downto 0 );
    pixel_y : in STD_LOGIC_VECTOR ( 10 downto 0 );
    wall_mask : in STD_LOGIC_VECTOR ( 31 downto 0 );
    is_mur : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of HDMI_bd_Presence_mur_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of HDMI_bd_Presence_mur_0_0 : entity is "HDMI_bd_Presence_mur_0_0,Presence_mur,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of HDMI_bd_Presence_mur_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of HDMI_bd_Presence_mur_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of HDMI_bd_Presence_mur_0_0 : entity is "Presence_mur,Vivado 2018.2.1";
end HDMI_bd_Presence_mur_0_0;

architecture STRUCTURE of HDMI_bd_Presence_mur_0_0 is
  signal is_mur_INST_0_i_11_n_0 : STD_LOGIC;
  signal is_mur_INST_0_i_31_n_0 : STD_LOGIC;
  signal is_mur_INST_0_i_5_n_0 : STD_LOGIC;
begin
U0: entity work.HDMI_bd_Presence_mur_0_0_Presence_mur
     port map (
      is_mur => is_mur,
      pixel_x(10 downto 0) => pixel_x(10 downto 0),
      pixel_x_10_sp_1 => is_mur_INST_0_i_31_n_0,
      pixel_y(10 downto 0) => pixel_y(10 downto 0),
      pixel_y_7_sp_1 => is_mur_INST_0_i_5_n_0,
      wall_mask(31 downto 0) => wall_mask(31 downto 0)
    );
is_mur_INST_0_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => pixel_y(5),
      I1 => pixel_y(3),
      I2 => pixel_y(2),
      I3 => pixel_y(4),
      I4 => pixel_y(6),
      I5 => pixel_y(7),
      O => is_mur_INST_0_i_11_n_0
    );
is_mur_INST_0_i_31: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FFFFFF"
    )
        port map (
      I0 => pixel_x(7),
      I1 => pixel_x(6),
      I2 => pixel_x(8),
      I3 => pixel_x(9),
      I4 => pixel_x(10),
      O => is_mur_INST_0_i_31_n_0
    );
is_mur_INST_0_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F7"
    )
        port map (
      I0 => pixel_y(9),
      I1 => pixel_y(8),
      I2 => is_mur_INST_0_i_11_n_0,
      I3 => pixel_y(10),
      O => is_mur_INST_0_i_5_n_0
    );
end STRUCTURE;
