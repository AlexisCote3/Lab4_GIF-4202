-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2.1 (win64) Build 2288692 Thu Jul 26 18:24:02 MDT 2018
-- Date        : Fri Nov 20 19:14:23 2026
-- Host        : pcetu-149 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/juroy185/Documents/project_lab4/project_lab4.srcs/sources_1/bd/HDMI_bd/ip/HDMI_bd_Presence_mur_0_0/HDMI_bd_Presence_mur_0_0_sim_netlist.vhdl
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
    pixel_x : in STD_LOGIC_VECTOR ( 11 downto 0 );
    pixel_y : in STD_LOGIC_VECTOR ( 11 downto 0 );
    wall_mask : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of HDMI_bd_Presence_mur_0_0_Presence_mur : entity is "Presence_mur";
end HDMI_bd_Presence_mur_0_0_Presence_mur;

architecture STRUCTURE of HDMI_bd_Presence_mur_0_0_Presence_mur is
  signal \col0__27_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \col0__27_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \col0__27_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \col0__27_carry__0_n_3\ : STD_LOGIC;
  signal \col0__27_carry__0_n_6\ : STD_LOGIC;
  signal \col0__27_carry__0_n_7\ : STD_LOGIC;
  signal \col0__27_carry_i_1_n_0\ : STD_LOGIC;
  signal \col0__27_carry_i_2_n_0\ : STD_LOGIC;
  signal \col0__27_carry_i_3_n_0\ : STD_LOGIC;
  signal \col0__27_carry_i_4_n_0\ : STD_LOGIC;
  signal \col0__27_carry_i_5_n_0\ : STD_LOGIC;
  signal \col0__27_carry_i_6_n_0\ : STD_LOGIC;
  signal \col0__27_carry_i_7_n_0\ : STD_LOGIC;
  signal \col0__27_carry_n_0\ : STD_LOGIC;
  signal \col0__27_carry_n_1\ : STD_LOGIC;
  signal \col0__27_carry_n_2\ : STD_LOGIC;
  signal \col0__27_carry_n_3\ : STD_LOGIC;
  signal \col0__27_carry_n_4\ : STD_LOGIC;
  signal \col0__27_carry_n_5\ : STD_LOGIC;
  signal \col0__27_carry_n_6\ : STD_LOGIC;
  signal \col0__27_carry_n_7\ : STD_LOGIC;
  signal \col0__43_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \col0__43_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \col0__43_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \col0__43_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \col0__43_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \col0__43_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \col0__43_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \col0__43_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \col0__43_carry__0_n_0\ : STD_LOGIC;
  signal \col0__43_carry__0_n_1\ : STD_LOGIC;
  signal \col0__43_carry__0_n_2\ : STD_LOGIC;
  signal \col0__43_carry__0_n_3\ : STD_LOGIC;
  signal \col0__43_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \col0__43_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \col0__43_carry__1_n_3\ : STD_LOGIC;
  signal \col0__43_carry_i_1_n_0\ : STD_LOGIC;
  signal \col0__43_carry_i_2_n_0\ : STD_LOGIC;
  signal \col0__43_carry_i_3_n_0\ : STD_LOGIC;
  signal \col0__43_carry_i_4_n_0\ : STD_LOGIC;
  signal \col0__43_carry_i_5_n_0\ : STD_LOGIC;
  signal \col0__43_carry_i_6_n_0\ : STD_LOGIC;
  signal \col0__43_carry_i_7_n_0\ : STD_LOGIC;
  signal \col0__43_carry_n_0\ : STD_LOGIC;
  signal \col0__43_carry_n_1\ : STD_LOGIC;
  signal \col0__43_carry_n_2\ : STD_LOGIC;
  signal \col0__43_carry_n_3\ : STD_LOGIC;
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
  signal \col0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \col0_carry__1_n_0\ : STD_LOGIC;
  signal \col0_carry__1_n_1\ : STD_LOGIC;
  signal \col0_carry__1_n_2\ : STD_LOGIC;
  signal \col0_carry__1_n_3\ : STD_LOGIC;
  signal \col0_carry__1_n_4\ : STD_LOGIC;
  signal \col0_carry__1_n_5\ : STD_LOGIC;
  signal \col0_carry__1_n_6\ : STD_LOGIC;
  signal \col0_carry__2_n_2\ : STD_LOGIC;
  signal \col0_carry__2_n_7\ : STD_LOGIC;
  signal col0_carry_i_1_n_0 : STD_LOGIC;
  signal col0_carry_i_2_n_0 : STD_LOGIC;
  signal col0_carry_i_3_n_0 : STD_LOGIC;
  signal col0_carry_n_0 : STD_LOGIC;
  signal col0_carry_n_1 : STD_LOGIC;
  signal col0_carry_n_2 : STD_LOGIC;
  signal col0_carry_n_3 : STD_LOGIC;
  signal col1_carry_i_1_n_0 : STD_LOGIC;
  signal col1_carry_i_2_n_0 : STD_LOGIC;
  signal col1_carry_i_3_n_0 : STD_LOGIC;
  signal col1_carry_i_4_n_0 : STD_LOGIC;
  signal col1_carry_i_5_n_0 : STD_LOGIC;
  signal col1_carry_i_6_n_0 : STD_LOGIC;
  signal col1_carry_n_1 : STD_LOGIC;
  signal col1_carry_n_2 : STD_LOGIC;
  signal col1_carry_n_3 : STD_LOGIC;
  signal is_mur_INST_0_i_10_n_0 : STD_LOGIC;
  signal is_mur_INST_0_i_11_n_0 : STD_LOGIC;
  signal is_mur_INST_0_i_12_n_0 : STD_LOGIC;
  signal is_mur_INST_0_i_13_n_0 : STD_LOGIC;
  signal is_mur_INST_0_i_14_n_0 : STD_LOGIC;
  signal is_mur_INST_0_i_15_n_0 : STD_LOGIC;
  signal is_mur_INST_0_i_16_n_0 : STD_LOGIC;
  signal is_mur_INST_0_i_1_n_0 : STD_LOGIC;
  signal is_mur_INST_0_i_2_n_0 : STD_LOGIC;
  signal is_mur_INST_0_i_3_n_0 : STD_LOGIC;
  signal is_mur_INST_0_i_4_n_0 : STD_LOGIC;
  signal is_mur_INST_0_i_5_n_0 : STD_LOGIC;
  signal is_mur_INST_0_i_6_n_0 : STD_LOGIC;
  signal is_mur_INST_0_i_7_n_0 : STD_LOGIC;
  signal is_mur_INST_0_i_8_n_0 : STD_LOGIC;
  signal is_mur_INST_0_i_9_n_0 : STD_LOGIC;
  signal \row0__25_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \row0__25_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \row0__25_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \row0__25_carry__0_n_2\ : STD_LOGIC;
  signal \row0__25_carry__0_n_3\ : STD_LOGIC;
  signal \row0__25_carry__0_n_5\ : STD_LOGIC;
  signal \row0__25_carry__0_n_6\ : STD_LOGIC;
  signal \row0__25_carry__0_n_7\ : STD_LOGIC;
  signal \row0__25_carry_i_1_n_0\ : STD_LOGIC;
  signal \row0__25_carry_i_2_n_0\ : STD_LOGIC;
  signal \row0__25_carry_i_3_n_0\ : STD_LOGIC;
  signal \row0__25_carry_n_0\ : STD_LOGIC;
  signal \row0__25_carry_n_1\ : STD_LOGIC;
  signal \row0__25_carry_n_2\ : STD_LOGIC;
  signal \row0__25_carry_n_3\ : STD_LOGIC;
  signal \row0__25_carry_n_4\ : STD_LOGIC;
  signal \row0__25_carry_n_5\ : STD_LOGIC;
  signal \row0__25_carry_n_6\ : STD_LOGIC;
  signal \row0__25_carry_n_7\ : STD_LOGIC;
  signal \row0__41_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \row0__41_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \row0__41_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \row0__41_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \row0__41_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \row0__41_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \row0__41_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \row0__41_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \row0__41_carry__0_n_0\ : STD_LOGIC;
  signal \row0__41_carry__0_n_1\ : STD_LOGIC;
  signal \row0__41_carry__0_n_2\ : STD_LOGIC;
  signal \row0__41_carry__0_n_3\ : STD_LOGIC;
  signal \row0__41_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \row0__41_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \row0__41_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \row0__41_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \row0__41_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \row0__41_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \row0__41_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \row0__41_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \row0__41_carry__1_n_0\ : STD_LOGIC;
  signal \row0__41_carry__1_n_1\ : STD_LOGIC;
  signal \row0__41_carry__1_n_2\ : STD_LOGIC;
  signal \row0__41_carry__1_n_3\ : STD_LOGIC;
  signal \row0__41_carry_i_1_n_0\ : STD_LOGIC;
  signal \row0__41_carry_i_2_n_0\ : STD_LOGIC;
  signal \row0__41_carry_i_3_n_0\ : STD_LOGIC;
  signal \row0__41_carry_i_4_n_0\ : STD_LOGIC;
  signal \row0__41_carry_i_5_n_0\ : STD_LOGIC;
  signal \row0__41_carry_i_6_n_0\ : STD_LOGIC;
  signal \row0__41_carry_i_7_n_0\ : STD_LOGIC;
  signal \row0__41_carry_n_0\ : STD_LOGIC;
  signal \row0__41_carry_n_1\ : STD_LOGIC;
  signal \row0__41_carry_n_2\ : STD_LOGIC;
  signal \row0__41_carry_n_3\ : STD_LOGIC;
  signal \row0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \row0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \row0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \row0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \row0_carry__0_n_0\ : STD_LOGIC;
  signal \row0_carry__0_n_1\ : STD_LOGIC;
  signal \row0_carry__0_n_2\ : STD_LOGIC;
  signal \row0_carry__0_n_3\ : STD_LOGIC;
  signal \row0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \row0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \row0_carry__1_n_0\ : STD_LOGIC;
  signal \row0_carry__1_n_1\ : STD_LOGIC;
  signal \row0_carry__1_n_2\ : STD_LOGIC;
  signal \row0_carry__1_n_3\ : STD_LOGIC;
  signal \row0_carry__1_n_4\ : STD_LOGIC;
  signal \row0_carry__1_n_5\ : STD_LOGIC;
  signal \row0_carry__1_n_6\ : STD_LOGIC;
  signal \row0_carry__2_n_2\ : STD_LOGIC;
  signal \row0_carry__2_n_7\ : STD_LOGIC;
  signal row0_carry_i_1_n_0 : STD_LOGIC;
  signal row0_carry_i_2_n_0 : STD_LOGIC;
  signal row0_carry_i_3_n_0 : STD_LOGIC;
  signal row0_carry_n_0 : STD_LOGIC;
  signal row0_carry_n_1 : STD_LOGIC;
  signal row0_carry_n_2 : STD_LOGIC;
  signal row0_carry_n_3 : STD_LOGIC;
  signal \row1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \row1_carry__0_n_3\ : STD_LOGIC;
  signal row1_carry_i_1_n_0 : STD_LOGIC;
  signal row1_carry_i_2_n_0 : STD_LOGIC;
  signal row1_carry_i_3_n_0 : STD_LOGIC;
  signal row1_carry_i_4_n_0 : STD_LOGIC;
  signal row1_carry_i_5_n_0 : STD_LOGIC;
  signal row1_carry_i_6_n_0 : STD_LOGIC;
  signal row1_carry_i_7_n_0 : STD_LOGIC;
  signal row1_carry_n_0 : STD_LOGIC;
  signal row1_carry_n_1 : STD_LOGIC;
  signal row1_carry_n_2 : STD_LOGIC;
  signal row1_carry_n_3 : STD_LOGIC;
  signal \NLW_col0__27_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_col0__27_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_col0__43_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_col0__43_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_col0__43_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_col0__43_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_col0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_col0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_col0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_col0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_col0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_col1_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_col1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_row0__25_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_row0__25_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_row0__41_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_row0__41_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_row0__41_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_row0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_row0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_row0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_row0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_row0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_row1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_row1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_row1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of is_mur_INST_0_i_15 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of is_mur_INST_0_i_16 : label is "soft_lutpair0";
begin
\col0__27_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \col0__27_carry_n_0\,
      CO(2) => \col0__27_carry_n_1\,
      CO(1) => \col0__27_carry_n_2\,
      CO(0) => \col0__27_carry_n_3\,
      CYINIT => '0',
      DI(3) => \col0__27_carry_i_1_n_0\,
      DI(2) => \col0__27_carry_i_2_n_0\,
      DI(1) => \col0__27_carry_i_3_n_0\,
      DI(0) => '0',
      O(3) => \col0__27_carry_n_4\,
      O(2) => \col0__27_carry_n_5\,
      O(1) => \col0__27_carry_n_6\,
      O(0) => \col0__27_carry_n_7\,
      S(3) => \col0__27_carry_i_4_n_0\,
      S(2) => \col0__27_carry_i_5_n_0\,
      S(1) => \col0__27_carry_i_6_n_0\,
      S(0) => \col0__27_carry_i_7_n_0\
    );
\col0__27_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \col0__27_carry_n_0\,
      CO(3 downto 1) => \NLW_col0__27_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \col0__27_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \col0__27_carry__0_i_1_n_0\,
      O(3 downto 2) => \NLW_col0__27_carry__0_O_UNCONNECTED\(3 downto 2),
      O(1) => \col0__27_carry__0_n_6\,
      O(0) => \col0__27_carry__0_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \col0__27_carry__0_i_2_n_0\,
      S(0) => \col0__27_carry__0_i_3_n_0\
    );
\col0__27_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \col0_carry__1_n_5\,
      I1 => \col0_carry__2_n_7\,
      O => \col0__27_carry__0_i_1_n_0\
    );
\col0__27_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4B"
    )
        port map (
      I0 => \col0_carry__2_n_2\,
      I1 => \col0_carry__1_n_4\,
      I2 => \col0_carry__2_n_7\,
      O => \col0__27_carry__0_i_2_n_0\
    );
\col0__27_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \col0_carry__2_n_7\,
      I1 => \col0_carry__1_n_5\,
      I2 => \col0_carry__2_n_2\,
      I3 => \col0_carry__1_n_4\,
      O => \col0__27_carry__0_i_3_n_0\
    );
\col0__27_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \col0_carry__1_n_6\,
      I1 => \col0_carry__1_n_4\,
      O => \col0__27_carry_i_1_n_0\
    );
\col0__27_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \col0_carry__2_n_2\,
      I1 => \col0_carry__1_n_5\,
      O => \col0__27_carry_i_2_n_0\
    );
\col0__27_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \col0_carry__2_n_7\,
      I1 => \col0_carry__1_n_6\,
      O => \col0__27_carry_i_3_n_0\
    );
\col0__27_carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \col0_carry__1_n_4\,
      I1 => \col0_carry__1_n_6\,
      I2 => \col0_carry__2_n_7\,
      I3 => \col0_carry__1_n_5\,
      O => \col0__27_carry_i_4_n_0\
    );
\col0__27_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \col0_carry__1_n_5\,
      I1 => \col0_carry__2_n_2\,
      I2 => \col0_carry__1_n_4\,
      I3 => \col0_carry__1_n_6\,
      O => \col0__27_carry_i_5_n_0\
    );
\col0__27_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => \col0_carry__1_n_6\,
      I1 => \col0_carry__2_n_7\,
      I2 => \col0_carry__1_n_5\,
      I3 => \col0_carry__2_n_2\,
      O => \col0__27_carry_i_6_n_0\
    );
\col0__27_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \col0_carry__2_n_7\,
      I1 => \col0_carry__1_n_6\,
      O => \col0__27_carry_i_7_n_0\
    );
\col0__43_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \col0__43_carry_n_0\,
      CO(2) => \col0__43_carry_n_1\,
      CO(1) => \col0__43_carry_n_2\,
      CO(0) => \col0__43_carry_n_3\,
      CYINIT => '0',
      DI(3) => \col0__43_carry_i_1_n_0\,
      DI(2) => \col0__43_carry_i_2_n_0\,
      DI(1) => \col0__43_carry_i_3_n_0\,
      DI(0) => '0',
      O(3 downto 0) => \NLW_col0__43_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \col0__43_carry_i_4_n_0\,
      S(2) => \col0__43_carry_i_5_n_0\,
      S(1) => \col0__43_carry_i_6_n_0\,
      S(0) => \col0__43_carry_i_7_n_0\
    );
\col0__43_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \col0__43_carry_n_0\,
      CO(3) => \col0__43_carry__0_n_0\,
      CO(2) => \col0__43_carry__0_n_1\,
      CO(1) => \col0__43_carry__0_n_2\,
      CO(0) => \col0__43_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \col0__43_carry__0_i_1_n_0\,
      DI(2) => \col0__43_carry__0_i_2_n_0\,
      DI(1) => \col0__43_carry__0_i_3_n_0\,
      DI(0) => \col0__43_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_col0__43_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \col0__43_carry__0_i_5_n_0\,
      S(2) => \col0__43_carry__0_i_6_n_0\,
      S(1) => \col0__43_carry__0_i_7_n_0\,
      S(0) => \col0__43_carry__0_i_8_n_0\
    );
\col0__43_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \col0__27_carry_n_4\,
      I1 => pixel_x(9),
      O => \col0__43_carry__0_i_1_n_0\
    );
\col0__43_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \col0__27_carry_n_5\,
      I1 => pixel_x(8),
      O => \col0__43_carry__0_i_2_n_0\
    );
\col0__43_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \col0__27_carry_n_6\,
      I1 => pixel_x(7),
      O => \col0__43_carry__0_i_3_n_0\
    );
\col0__43_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \col0__27_carry_n_7\,
      I1 => pixel_x(6),
      O => \col0__43_carry__0_i_4_n_0\
    );
\col0__43_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => pixel_x(9),
      I1 => \col0__27_carry_n_4\,
      I2 => \col0__27_carry__0_n_7\,
      I3 => pixel_x(10),
      O => \col0__43_carry__0_i_5_n_0\
    );
\col0__43_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => pixel_x(8),
      I1 => \col0__27_carry_n_5\,
      I2 => \col0__27_carry_n_4\,
      I3 => pixel_x(9),
      O => \col0__43_carry__0_i_6_n_0\
    );
\col0__43_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => pixel_x(7),
      I1 => \col0__27_carry_n_6\,
      I2 => \col0__27_carry_n_5\,
      I3 => pixel_x(8),
      O => \col0__43_carry__0_i_7_n_0\
    );
\col0__43_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => pixel_x(6),
      I1 => \col0__27_carry_n_7\,
      I2 => \col0__27_carry_n_6\,
      I3 => pixel_x(7),
      O => \col0__43_carry__0_i_8_n_0\
    );
\col0__43_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \col0__43_carry__0_n_0\,
      CO(3 downto 1) => \NLW_col0__43_carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \col0__43_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \col0__43_carry__1_i_1_n_0\,
      O(3 downto 0) => \NLW_col0__43_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \col0__43_carry__1_i_2_n_0\
    );
\col0__43_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \col0__27_carry__0_n_7\,
      I1 => pixel_x(10),
      O => \col0__43_carry__1_i_1_n_0\
    );
\col0__43_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => pixel_x(10),
      I1 => \col0__27_carry__0_n_7\,
      I2 => \col0__27_carry__0_n_6\,
      I3 => pixel_x(11),
      O => \col0__43_carry__1_i_2_n_0\
    );
\col0__43_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \col0_carry__1_n_4\,
      I1 => pixel_x(5),
      O => \col0__43_carry_i_1_n_0\
    );
\col0__43_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \col0_carry__1_n_5\,
      I1 => pixel_x(4),
      O => \col0__43_carry_i_2_n_0\
    );
\col0__43_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \col0_carry__1_n_6\,
      I1 => pixel_x(3),
      O => \col0__43_carry_i_3_n_0\
    );
\col0__43_carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4BB4"
    )
        port map (
      I0 => pixel_x(5),
      I1 => \col0_carry__1_n_4\,
      I2 => \col0__27_carry_n_7\,
      I3 => pixel_x(6),
      O => \col0__43_carry_i_4_n_0\
    );
\col0__43_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => pixel_x(4),
      I1 => \col0_carry__1_n_5\,
      I2 => \col0_carry__1_n_4\,
      I3 => pixel_x(5),
      O => \col0__43_carry_i_5_n_0\
    );
\col0__43_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => pixel_x(3),
      I1 => \col0_carry__1_n_6\,
      I2 => \col0_carry__1_n_5\,
      I3 => pixel_x(4),
      O => \col0__43_carry_i_6_n_0\
    );
\col0__43_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pixel_x(3),
      I1 => \col0_carry__1_n_6\,
      O => \col0__43_carry_i_7_n_0\
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
      DI(3) => '0',
      DI(2 downto 0) => pixel_x(11 downto 9),
      O(3) => \col0_carry__1_n_4\,
      O(2) => \col0_carry__1_n_5\,
      O(1) => \col0_carry__1_n_6\,
      O(0) => \NLW_col0_carry__1_O_UNCONNECTED\(0),
      S(3) => pixel_x(10),
      S(2) => \col0_carry__1_i_1_n_0\,
      S(1) => \col0_carry__1_i_2_n_0\,
      S(0) => \col0_carry__1_i_3_n_0\
    );
\col0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pixel_x(11),
      I1 => pixel_x(9),
      O => \col0_carry__1_i_1_n_0\
    );
\col0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pixel_x(10),
      I1 => pixel_x(8),
      O => \col0_carry__1_i_2_n_0\
    );
\col0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pixel_x(9),
      I1 => pixel_x(7),
      O => \col0_carry__1_i_3_n_0\
    );
\col0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \col0_carry__1_n_0\,
      CO(3 downto 2) => \NLW_col0_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \col0_carry__2_n_2\,
      CO(0) => \NLW_col0_carry__2_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_col0_carry__2_O_UNCONNECTED\(3 downto 1),
      O(0) => \col0_carry__2_n_7\,
      S(3 downto 1) => B"001",
      S(0) => pixel_x(11)
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
col1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => NLW_col1_carry_CO_UNCONNECTED(3),
      CO(2) => col1_carry_n_1,
      CO(1) => col1_carry_n_2,
      CO(0) => col1_carry_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => col1_carry_i_1_n_0,
      DI(1) => col1_carry_i_2_n_0,
      DI(0) => col1_carry_i_3_n_0,
      O(3 downto 0) => NLW_col1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => '0',
      S(2) => col1_carry_i_4_n_0,
      S(1) => col1_carry_i_5_n_0,
      S(0) => col1_carry_i_6_n_0
    );
col1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pixel_x(10),
      I1 => pixel_x(11),
      O => col1_carry_i_1_n_0
    );
col1_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pixel_x(9),
      O => col1_carry_i_2_n_0
    );
col1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pixel_x(6),
      I1 => pixel_x(7),
      O => col1_carry_i_3_n_0
    );
col1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_x(10),
      I1 => pixel_x(11),
      O => col1_carry_i_4_n_0
    );
col1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_x(9),
      I1 => pixel_x(8),
      O => col1_carry_i_5_n_0
    );
col1_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_x(6),
      I1 => pixel_x(7),
      O => col1_carry_i_6_n_0
    );
is_mur_INST_0: unisim.vcomponents.MUXF7
     port map (
      I0 => is_mur_INST_0_i_2_n_0,
      I1 => is_mur_INST_0_i_3_n_0,
      O => is_mur,
      S => is_mur_INST_0_i_1_n_0
    );
is_mur_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA66A6FFFFFFFF"
    )
        port map (
      I0 => \row0_carry__1_n_5\,
      I1 => \row0_carry__1_n_6\,
      I2 => \row0__25_carry__0_n_5\,
      I3 => pixel_y(11),
      I4 => \row0__41_carry__1_n_0\,
      I5 => \row1_carry__0_n_3\,
      O => is_mur_INST_0_i_1_n_0
    );
is_mur_INST_0_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => wall_mask(0),
      I1 => wall_mask(1),
      I2 => is_mur_INST_0_i_14_n_0,
      I3 => wall_mask(2),
      I4 => is_mur_INST_0_i_15_n_0,
      I5 => wall_mask(3),
      O => is_mur_INST_0_i_10_n_0
    );
is_mur_INST_0_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => wall_mask(4),
      I1 => wall_mask(5),
      I2 => is_mur_INST_0_i_14_n_0,
      I3 => wall_mask(6),
      I4 => is_mur_INST_0_i_15_n_0,
      I5 => wall_mask(7),
      O => is_mur_INST_0_i_11_n_0
    );
is_mur_INST_0_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => wall_mask(8),
      I1 => wall_mask(9),
      I2 => is_mur_INST_0_i_14_n_0,
      I3 => wall_mask(10),
      I4 => is_mur_INST_0_i_15_n_0,
      I5 => wall_mask(11),
      O => is_mur_INST_0_i_12_n_0
    );
is_mur_INST_0_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => wall_mask(12),
      I1 => wall_mask(13),
      I2 => is_mur_INST_0_i_14_n_0,
      I3 => wall_mask(14),
      I4 => is_mur_INST_0_i_15_n_0,
      I5 => wall_mask(15),
      O => is_mur_INST_0_i_13_n_0
    );
is_mur_INST_0_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA66A6FFFFFFFF"
    )
        port map (
      I0 => \col0_carry__1_n_5\,
      I1 => \col0_carry__1_n_6\,
      I2 => \col0__27_carry__0_n_6\,
      I3 => pixel_x(11),
      I4 => \col0__43_carry__1_n_3\,
      I5 => col1_carry_n_1,
      O => is_mur_INST_0_i_14_n_0
    );
is_mur_INST_0_i_15: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9A99FFFF"
    )
        port map (
      I0 => \col0_carry__1_n_6\,
      I1 => \col0__43_carry__1_n_3\,
      I2 => pixel_x(11),
      I3 => \col0__27_carry__0_n_6\,
      I4 => col1_carry_n_1,
      O => is_mur_INST_0_i_15_n_0
    );
is_mur_INST_0_i_16: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \col0__43_carry__1_n_3\,
      I1 => pixel_x(11),
      I2 => \col0__27_carry__0_n_6\,
      O => is_mur_INST_0_i_16_n_0
    );
is_mur_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => is_mur_INST_0_i_4_n_0,
      I1 => is_mur_INST_0_i_5_n_0,
      I2 => is_mur_INST_0_i_6_n_0,
      I3 => is_mur_INST_0_i_7_n_0,
      I4 => is_mur_INST_0_i_8_n_0,
      I5 => is_mur_INST_0_i_9_n_0,
      O => is_mur_INST_0_i_2_n_0
    );
is_mur_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => is_mur_INST_0_i_10_n_0,
      I1 => is_mur_INST_0_i_11_n_0,
      I2 => is_mur_INST_0_i_6_n_0,
      I3 => is_mur_INST_0_i_12_n_0,
      I4 => is_mur_INST_0_i_8_n_0,
      I5 => is_mur_INST_0_i_13_n_0,
      O => is_mur_INST_0_i_3_n_0
    );
is_mur_INST_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => wall_mask(16),
      I1 => wall_mask(17),
      I2 => is_mur_INST_0_i_14_n_0,
      I3 => wall_mask(18),
      I4 => is_mur_INST_0_i_15_n_0,
      I5 => wall_mask(19),
      O => is_mur_INST_0_i_4_n_0
    );
is_mur_INST_0_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => wall_mask(20),
      I1 => wall_mask(21),
      I2 => is_mur_INST_0_i_14_n_0,
      I3 => wall_mask(22),
      I4 => is_mur_INST_0_i_15_n_0,
      I5 => wall_mask(23),
      O => is_mur_INST_0_i_5_n_0
    );
is_mur_INST_0_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9A99FFFF"
    )
        port map (
      I0 => \row0_carry__1_n_6\,
      I1 => \row0__41_carry__1_n_0\,
      I2 => pixel_y(11),
      I3 => \row0__25_carry__0_n_5\,
      I4 => \row1_carry__0_n_3\,
      O => is_mur_INST_0_i_6_n_0
    );
is_mur_INST_0_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => wall_mask(24),
      I1 => wall_mask(25),
      I2 => is_mur_INST_0_i_14_n_0,
      I3 => wall_mask(26),
      I4 => is_mur_INST_0_i_15_n_0,
      I5 => wall_mask(27),
      O => is_mur_INST_0_i_7_n_0
    );
is_mur_INST_0_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA6AFFFF"
    )
        port map (
      I0 => \col0_carry__1_n_4\,
      I1 => \col0_carry__1_n_5\,
      I2 => \col0_carry__1_n_6\,
      I3 => is_mur_INST_0_i_16_n_0,
      I4 => col1_carry_n_1,
      O => is_mur_INST_0_i_8_n_0
    );
is_mur_INST_0_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => wall_mask(28),
      I1 => wall_mask(29),
      I2 => is_mur_INST_0_i_14_n_0,
      I3 => wall_mask(30),
      I4 => is_mur_INST_0_i_15_n_0,
      I5 => wall_mask(31),
      O => is_mur_INST_0_i_9_n_0
    );
\row0__25_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \row0__25_carry_n_0\,
      CO(2) => \row0__25_carry_n_1\,
      CO(1) => \row0__25_carry_n_2\,
      CO(0) => \row0__25_carry_n_3\,
      CYINIT => '0',
      DI(3) => \row0_carry__1_n_6\,
      DI(2 downto 0) => B"001",
      O(3) => \row0__25_carry_n_4\,
      O(2) => \row0__25_carry_n_5\,
      O(1) => \row0__25_carry_n_6\,
      O(0) => \row0__25_carry_n_7\,
      S(3) => \row0__25_carry_i_1_n_0\,
      S(2) => \row0__25_carry_i_2_n_0\,
      S(1) => \row0__25_carry_i_3_n_0\,
      S(0) => \row0_carry__1_n_6\
    );
\row0__25_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \row0__25_carry_n_0\,
      CO(3 downto 2) => \NLW_row0__25_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \row0__25_carry__0_n_2\,
      CO(0) => \row0__25_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \row0_carry__1_n_4\,
      DI(0) => \row0_carry__1_n_5\,
      O(3) => \NLW_row0__25_carry__0_O_UNCONNECTED\(3),
      O(2) => \row0__25_carry__0_n_5\,
      O(1) => \row0__25_carry__0_n_6\,
      O(0) => \row0__25_carry__0_n_7\,
      S(3) => '0',
      S(2) => \row0__25_carry__0_i_1_n_0\,
      S(1) => \row0__25_carry__0_i_2_n_0\,
      S(0) => \row0__25_carry__0_i_3_n_0\
    );
\row0__25_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \row0_carry__2_n_7\,
      O => \row0__25_carry__0_i_1_n_0\
    );
\row0__25_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \row0_carry__1_n_4\,
      O => \row0__25_carry__0_i_2_n_0\
    );
\row0__25_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \row0_carry__1_n_5\,
      I1 => \row0_carry__2_n_2\,
      O => \row0__25_carry__0_i_3_n_0\
    );
\row0__25_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \row0_carry__1_n_6\,
      I1 => \row0_carry__2_n_7\,
      O => \row0__25_carry_i_1_n_0\
    );
\row0__25_carry_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \row0_carry__1_n_4\,
      O => \row0__25_carry_i_2_n_0\
    );
\row0__25_carry_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \row0_carry__1_n_5\,
      O => \row0__25_carry_i_3_n_0\
    );
\row0__41_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \row0__41_carry_n_0\,
      CO(2) => \row0__41_carry_n_1\,
      CO(1) => \row0__41_carry_n_2\,
      CO(0) => \row0__41_carry_n_3\,
      CYINIT => '0',
      DI(3) => \row0__41_carry_i_1_n_0\,
      DI(2) => \row0__41_carry_i_2_n_0\,
      DI(1) => \row0__41_carry_i_3_n_0\,
      DI(0) => '0',
      O(3 downto 0) => \NLW_row0__41_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \row0__41_carry_i_4_n_0\,
      S(2) => \row0__41_carry_i_5_n_0\,
      S(1) => \row0__41_carry_i_6_n_0\,
      S(0) => \row0__41_carry_i_7_n_0\
    );
\row0__41_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \row0__41_carry_n_0\,
      CO(3) => \row0__41_carry__0_n_0\,
      CO(2) => \row0__41_carry__0_n_1\,
      CO(1) => \row0__41_carry__0_n_2\,
      CO(0) => \row0__41_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \row0__41_carry__0_i_1_n_0\,
      DI(2) => \row0__41_carry__0_i_2_n_0\,
      DI(1) => \row0__41_carry__0_i_3_n_0\,
      DI(0) => \row0__41_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_row0__41_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \row0__41_carry__0_i_5_n_0\,
      S(2) => \row0__41_carry__0_i_6_n_0\,
      S(1) => \row0__41_carry__0_i_7_n_0\,
      S(0) => \row0__41_carry__0_i_8_n_0\
    );
\row0__41_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \row0__25_carry_n_6\,
      I1 => pixel_y(6),
      O => \row0__41_carry__0_i_1_n_0\
    );
\row0__41_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \row0__25_carry_n_7\,
      I1 => pixel_y(5),
      O => \row0__41_carry__0_i_2_n_0\
    );
\row0__41_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \row0_carry__2_n_2\,
      I1 => pixel_y(4),
      O => \row0__41_carry__0_i_3_n_0\
    );
\row0__41_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \row0_carry__2_n_7\,
      I1 => pixel_y(3),
      O => \row0__41_carry__0_i_4_n_0\
    );
\row0__41_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => pixel_y(6),
      I1 => \row0__25_carry_n_6\,
      I2 => \row0__25_carry_n_5\,
      I3 => pixel_y(7),
      O => \row0__41_carry__0_i_5_n_0\
    );
\row0__41_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => pixel_y(5),
      I1 => \row0__25_carry_n_7\,
      I2 => \row0__25_carry_n_6\,
      I3 => pixel_y(6),
      O => \row0__41_carry__0_i_6_n_0\
    );
\row0__41_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4BB4"
    )
        port map (
      I0 => pixel_y(4),
      I1 => \row0_carry__2_n_2\,
      I2 => \row0__25_carry_n_7\,
      I3 => pixel_y(5),
      O => \row0__41_carry__0_i_7_n_0\
    );
\row0__41_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => pixel_y(3),
      I1 => \row0_carry__2_n_7\,
      I2 => \row0_carry__2_n_2\,
      I3 => pixel_y(4),
      O => \row0__41_carry__0_i_8_n_0\
    );
\row0__41_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \row0__41_carry__0_n_0\,
      CO(3) => \row0__41_carry__1_n_0\,
      CO(2) => \row0__41_carry__1_n_1\,
      CO(1) => \row0__41_carry__1_n_2\,
      CO(0) => \row0__41_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \row0__41_carry__1_i_1_n_0\,
      DI(2) => \row0__41_carry__1_i_2_n_0\,
      DI(1) => \row0__41_carry__1_i_3_n_0\,
      DI(0) => \row0__41_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_row0__41_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \row0__41_carry__1_i_5_n_0\,
      S(2) => \row0__41_carry__1_i_6_n_0\,
      S(1) => \row0__41_carry__1_i_7_n_0\,
      S(0) => \row0__41_carry__1_i_8_n_0\
    );
\row0__41_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \row0__25_carry__0_n_6\,
      I1 => pixel_y(10),
      O => \row0__41_carry__1_i_1_n_0\
    );
\row0__41_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \row0__25_carry__0_n_7\,
      I1 => pixel_y(9),
      O => \row0__41_carry__1_i_2_n_0\
    );
\row0__41_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \row0__25_carry_n_4\,
      I1 => pixel_y(8),
      O => \row0__41_carry__1_i_3_n_0\
    );
\row0__41_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \row0__25_carry_n_5\,
      I1 => pixel_y(7),
      O => \row0__41_carry__1_i_4_n_0\
    );
\row0__41_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => pixel_y(10),
      I1 => \row0__25_carry__0_n_6\,
      I2 => \row0__25_carry__0_n_5\,
      I3 => pixel_y(11),
      O => \row0__41_carry__1_i_5_n_0\
    );
\row0__41_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => pixel_y(9),
      I1 => \row0__25_carry__0_n_7\,
      I2 => \row0__25_carry__0_n_6\,
      I3 => pixel_y(10),
      O => \row0__41_carry__1_i_6_n_0\
    );
\row0__41_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => pixel_y(8),
      I1 => \row0__25_carry_n_4\,
      I2 => \row0__25_carry__0_n_7\,
      I3 => pixel_y(9),
      O => \row0__41_carry__1_i_7_n_0\
    );
\row0__41_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => pixel_y(7),
      I1 => \row0__25_carry_n_5\,
      I2 => \row0__25_carry_n_4\,
      I3 => pixel_y(8),
      O => \row0__41_carry__1_i_8_n_0\
    );
\row0__41_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \row0_carry__1_n_4\,
      I1 => pixel_y(2),
      O => \row0__41_carry_i_1_n_0\
    );
\row0__41_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \row0_carry__1_n_5\,
      I1 => pixel_y(1),
      O => \row0__41_carry_i_2_n_0\
    );
\row0__41_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \row0_carry__1_n_6\,
      I1 => pixel_y(0),
      O => \row0__41_carry_i_3_n_0\
    );
\row0__41_carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => pixel_y(2),
      I1 => \row0_carry__1_n_4\,
      I2 => \row0_carry__2_n_7\,
      I3 => pixel_y(3),
      O => \row0__41_carry_i_4_n_0\
    );
\row0__41_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => pixel_y(1),
      I1 => \row0_carry__1_n_5\,
      I2 => \row0_carry__1_n_4\,
      I3 => pixel_y(2),
      O => \row0__41_carry_i_5_n_0\
    );
\row0__41_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => pixel_y(0),
      I1 => \row0_carry__1_n_6\,
      I2 => \row0_carry__1_n_5\,
      I3 => pixel_y(1),
      O => \row0__41_carry_i_6_n_0\
    );
\row0__41_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pixel_y(0),
      I1 => \row0_carry__1_n_6\,
      O => \row0__41_carry_i_7_n_0\
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
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => pixel_y(11 downto 10),
      O(3) => \row0_carry__1_n_4\,
      O(2) => \row0_carry__1_n_5\,
      O(1) => \row0_carry__1_n_6\,
      O(0) => \NLW_row0_carry__1_O_UNCONNECTED\(0),
      S(3 downto 2) => pixel_y(10 downto 9),
      S(1) => \row0_carry__1_i_1_n_0\,
      S(0) => \row0_carry__1_i_2_n_0\
    );
\row0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pixel_y(11),
      I1 => pixel_y(8),
      O => \row0_carry__1_i_1_n_0\
    );
\row0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pixel_y(10),
      I1 => pixel_y(7),
      O => \row0_carry__1_i_2_n_0\
    );
\row0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \row0_carry__1_n_0\,
      CO(3 downto 2) => \NLW_row0_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \row0_carry__2_n_2\,
      CO(0) => \NLW_row0_carry__2_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_row0_carry__2_O_UNCONNECTED\(3 downto 1),
      O(0) => \row0_carry__2_n_7\,
      S(3 downto 1) => B"001",
      S(0) => pixel_y(11)
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
row1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => row1_carry_n_0,
      CO(2) => row1_carry_n_1,
      CO(1) => row1_carry_n_2,
      CO(0) => row1_carry_n_3,
      CYINIT => '0',
      DI(3) => row1_carry_i_1_n_0,
      DI(2) => row1_carry_i_2_n_0,
      DI(1) => '0',
      DI(0) => row1_carry_i_3_n_0,
      O(3 downto 0) => NLW_row1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => row1_carry_i_4_n_0,
      S(2) => row1_carry_i_5_n_0,
      S(1) => row1_carry_i_6_n_0,
      S(0) => row1_carry_i_7_n_0
    );
\row1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => row1_carry_n_0,
      CO(3 downto 1) => \NLW_row1_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \row1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_row1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \row1_carry__0_i_1_n_0\
    );
\row1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pixel_y(10),
      I1 => pixel_y(11),
      O => \row1_carry__0_i_1_n_0\
    );
row1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => pixel_y(8),
      I1 => pixel_y(9),
      O => row1_carry_i_1_n_0
    );
row1_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pixel_y(7),
      O => row1_carry_i_2_n_0
    );
row1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pixel_y(2),
      I1 => pixel_y(3),
      O => row1_carry_i_3_n_0
    );
row1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => pixel_y(8),
      I1 => pixel_y(9),
      O => row1_carry_i_4_n_0
    );
row1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_y(7),
      I1 => pixel_y(6),
      O => row1_carry_i_5_n_0
    );
row1_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pixel_y(4),
      I1 => pixel_y(5),
      O => row1_carry_i_6_n_0
    );
row1_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => pixel_y(2),
      I1 => pixel_y(3),
      O => row1_carry_i_7_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity HDMI_bd_Presence_mur_0_0 is
  port (
    pixel_x : in STD_LOGIC_VECTOR ( 11 downto 0 );
    pixel_y : in STD_LOGIC_VECTOR ( 11 downto 0 );
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
begin
U0: entity work.HDMI_bd_Presence_mur_0_0_Presence_mur
     port map (
      is_mur => is_mur,
      pixel_x(11 downto 0) => pixel_x(11 downto 0),
      pixel_y(11 downto 0) => pixel_y(11 downto 0),
      wall_mask(31 downto 0) => wall_mask(31 downto 0)
    );
end STRUCTURE;
