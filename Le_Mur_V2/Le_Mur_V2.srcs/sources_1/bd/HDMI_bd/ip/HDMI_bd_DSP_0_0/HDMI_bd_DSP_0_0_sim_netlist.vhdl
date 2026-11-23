-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2.1 (win64) Build 2288692 Thu Jul 26 18:24:02 MDT 2018
-- Date        : Mon Nov 23 13:35:11 2026
-- Host        : pcetu-129 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               u:/Documents/FPGA/Lab4_GIF-4202/Le_Mur_V2/Le_Mur_V2.srcs/sources_1/bd/HDMI_bd/ip/HDMI_bd_DSP_0_0/HDMI_bd_DSP_0_0_sim_netlist.vhdl
-- Design      : HDMI_bd_DSP_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity HDMI_bd_DSP_0_0_DSP is
  port (
    q_pass : out STD_LOGIC;
    player_present : out STD_LOGIC;
    player_pixels : out STD_LOGIC_VECTOR ( 20 downto 0 );
    collision_pixels : out STD_LOGIC_VECTOR ( 20 downto 0 );
    result_valid : out STD_LOGIC;
    reset : in STD_LOGIC;
    clk_pixel : in STD_LOGIC;
    vsync : in STD_LOGIC;
    is_pixel_joueur : in STD_LOGIC;
    vde : in STD_LOGIC;
    is_pixel_mur : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of HDMI_bd_DSP_0_0_DSP : entity is "DSP";
end HDMI_bd_DSP_0_0_DSP;

architecture STRUCTURE of HDMI_bd_DSP_0_0_DSP is
  signal collision_count : STD_LOGIC;
  signal \collision_count[0]_i_2_n_0\ : STD_LOGIC;
  signal \collision_count[0]_i_4_n_0\ : STD_LOGIC;
  signal \collision_count[0]_i_5_n_0\ : STD_LOGIC;
  signal \collision_count[0]_i_6_n_0\ : STD_LOGIC;
  signal \collision_count[0]_i_7_n_0\ : STD_LOGIC;
  signal \collision_count[0]_i_8_n_0\ : STD_LOGIC;
  signal collision_count_reg : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal \collision_count_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \collision_count_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \collision_count_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \collision_count_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \collision_count_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \collision_count_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \collision_count_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \collision_count_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \collision_count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \collision_count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \collision_count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \collision_count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \collision_count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \collision_count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \collision_count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \collision_count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \collision_count_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \collision_count_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \collision_count_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \collision_count_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \collision_count_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \collision_count_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \collision_count_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \collision_count_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \collision_count_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \collision_count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \collision_count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \collision_count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \collision_count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \collision_count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \collision_count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \collision_count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \collision_count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \collision_count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \collision_count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \collision_count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \collision_count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \collision_count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \collision_count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \collision_count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \collision_count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal frame_seen : STD_LOGIC;
  signal frame_seen_i_1_n_0 : STD_LOGIC;
  signal pass_reg : STD_LOGIC;
  signal pass_reg0 : STD_LOGIC;
  signal pass_reg_i_3_n_0 : STD_LOGIC;
  signal pass_reg_i_4_n_0 : STD_LOGIC;
  signal pass_reg_i_5_n_0 : STD_LOGIC;
  signal pass_reg_i_6_n_0 : STD_LOGIC;
  signal pass_reg_i_7_n_0 : STD_LOGIC;
  signal player_count : STD_LOGIC;
  signal \player_count[0]_i_3_n_0\ : STD_LOGIC;
  signal \player_count[0]_i_4_n_0\ : STD_LOGIC;
  signal \player_count[0]_i_5_n_0\ : STD_LOGIC;
  signal \player_count[0]_i_6_n_0\ : STD_LOGIC;
  signal \player_count[0]_i_7_n_0\ : STD_LOGIC;
  signal player_count_reg : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal \player_count_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \player_count_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \player_count_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \player_count_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \player_count_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \player_count_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \player_count_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \player_count_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \player_count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \player_count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \player_count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \player_count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \player_count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \player_count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \player_count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \player_count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \player_count_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \player_count_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \player_count_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \player_count_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \player_count_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \player_count_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \player_count_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \player_count_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \player_count_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \player_count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \player_count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \player_count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \player_count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \player_count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \player_count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \player_count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \player_count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \player_count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \player_count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \player_count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \player_count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \player_count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \player_count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \player_count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \player_count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal presence_ok : STD_LOGIC;
  signal present_reg_i_2_n_0 : STD_LOGIC;
  signal present_reg_i_3_n_0 : STD_LOGIC;
  signal present_reg_i_4_n_0 : STD_LOGIC;
  signal present_reg_i_5_n_0 : STD_LOGIC;
  signal present_reg_i_6_n_0 : STD_LOGIC;
  signal valid_reg_i_1_n_0 : STD_LOGIC;
  signal vsync_prev : STD_LOGIC;
  signal vsync_prev_i_1_n_0 : STD_LOGIC;
  signal \NLW_collision_count_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_collision_count_reg[20]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_player_count_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_player_count_reg[20]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \collision_count[0]_i_8\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of frame_seen_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of pass_reg_i_5 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of valid_reg_i_1 : label is "soft_lutpair1";
begin
\collision_count[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => reset,
      I1 => vsync_prev,
      I2 => vsync,
      O => collision_count
    );
\collision_count[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000080008000"
    )
        port map (
      I0 => is_pixel_joueur,
      I1 => vde,
      I2 => frame_seen,
      I3 => is_pixel_mur,
      I4 => \collision_count[0]_i_4_n_0\,
      I5 => \collision_count[0]_i_5_n_0\,
      O => \collision_count[0]_i_2_n_0\
    );
\collision_count[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFFFFFFF"
    )
        port map (
      I0 => \collision_count[0]_i_7_n_0\,
      I1 => \collision_count[0]_i_8_n_0\,
      I2 => collision_count_reg(17),
      I3 => collision_count_reg(18),
      I4 => collision_count_reg(13),
      I5 => pass_reg_i_7_n_0,
      O => \collision_count[0]_i_4_n_0\
    );
\collision_count[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => collision_count_reg(2),
      I1 => collision_count_reg(0),
      I2 => collision_count_reg(1),
      I3 => collision_count_reg(8),
      I4 => collision_count_reg(10),
      I5 => collision_count_reg(14),
      O => \collision_count[0]_i_5_n_0\
    );
\collision_count[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => collision_count_reg(0),
      O => \collision_count[0]_i_6_n_0\
    );
\collision_count[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => collision_count_reg(11),
      I1 => collision_count_reg(3),
      I2 => collision_count_reg(15),
      I3 => collision_count_reg(9),
      O => \collision_count[0]_i_7_n_0\
    );
\collision_count[0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => collision_count_reg(20),
      I1 => collision_count_reg(12),
      I2 => collision_count_reg(19),
      I3 => collision_count_reg(16),
      O => \collision_count[0]_i_8_n_0\
    );
\collision_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \collision_count[0]_i_2_n_0\,
      D => \collision_count_reg[0]_i_3_n_7\,
      Q => collision_count_reg(0),
      R => collision_count
    );
\collision_count_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \collision_count_reg[0]_i_3_n_0\,
      CO(2) => \collision_count_reg[0]_i_3_n_1\,
      CO(1) => \collision_count_reg[0]_i_3_n_2\,
      CO(0) => \collision_count_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \collision_count_reg[0]_i_3_n_4\,
      O(2) => \collision_count_reg[0]_i_3_n_5\,
      O(1) => \collision_count_reg[0]_i_3_n_6\,
      O(0) => \collision_count_reg[0]_i_3_n_7\,
      S(3 downto 1) => collision_count_reg(3 downto 1),
      S(0) => \collision_count[0]_i_6_n_0\
    );
\collision_count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \collision_count[0]_i_2_n_0\,
      D => \collision_count_reg[8]_i_1_n_5\,
      Q => collision_count_reg(10),
      R => collision_count
    );
\collision_count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \collision_count[0]_i_2_n_0\,
      D => \collision_count_reg[8]_i_1_n_4\,
      Q => collision_count_reg(11),
      R => collision_count
    );
\collision_count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \collision_count[0]_i_2_n_0\,
      D => \collision_count_reg[12]_i_1_n_7\,
      Q => collision_count_reg(12),
      R => collision_count
    );
\collision_count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \collision_count_reg[8]_i_1_n_0\,
      CO(3) => \collision_count_reg[12]_i_1_n_0\,
      CO(2) => \collision_count_reg[12]_i_1_n_1\,
      CO(1) => \collision_count_reg[12]_i_1_n_2\,
      CO(0) => \collision_count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \collision_count_reg[12]_i_1_n_4\,
      O(2) => \collision_count_reg[12]_i_1_n_5\,
      O(1) => \collision_count_reg[12]_i_1_n_6\,
      O(0) => \collision_count_reg[12]_i_1_n_7\,
      S(3 downto 0) => collision_count_reg(15 downto 12)
    );
\collision_count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \collision_count[0]_i_2_n_0\,
      D => \collision_count_reg[12]_i_1_n_6\,
      Q => collision_count_reg(13),
      R => collision_count
    );
\collision_count_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \collision_count[0]_i_2_n_0\,
      D => \collision_count_reg[12]_i_1_n_5\,
      Q => collision_count_reg(14),
      R => collision_count
    );
\collision_count_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \collision_count[0]_i_2_n_0\,
      D => \collision_count_reg[12]_i_1_n_4\,
      Q => collision_count_reg(15),
      R => collision_count
    );
\collision_count_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \collision_count[0]_i_2_n_0\,
      D => \collision_count_reg[16]_i_1_n_7\,
      Q => collision_count_reg(16),
      R => collision_count
    );
\collision_count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \collision_count_reg[12]_i_1_n_0\,
      CO(3) => \collision_count_reg[16]_i_1_n_0\,
      CO(2) => \collision_count_reg[16]_i_1_n_1\,
      CO(1) => \collision_count_reg[16]_i_1_n_2\,
      CO(0) => \collision_count_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \collision_count_reg[16]_i_1_n_4\,
      O(2) => \collision_count_reg[16]_i_1_n_5\,
      O(1) => \collision_count_reg[16]_i_1_n_6\,
      O(0) => \collision_count_reg[16]_i_1_n_7\,
      S(3 downto 0) => collision_count_reg(19 downto 16)
    );
\collision_count_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \collision_count[0]_i_2_n_0\,
      D => \collision_count_reg[16]_i_1_n_6\,
      Q => collision_count_reg(17),
      R => collision_count
    );
\collision_count_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \collision_count[0]_i_2_n_0\,
      D => \collision_count_reg[16]_i_1_n_5\,
      Q => collision_count_reg(18),
      R => collision_count
    );
\collision_count_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \collision_count[0]_i_2_n_0\,
      D => \collision_count_reg[16]_i_1_n_4\,
      Q => collision_count_reg(19),
      R => collision_count
    );
\collision_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \collision_count[0]_i_2_n_0\,
      D => \collision_count_reg[0]_i_3_n_6\,
      Q => collision_count_reg(1),
      R => collision_count
    );
\collision_count_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \collision_count[0]_i_2_n_0\,
      D => \collision_count_reg[20]_i_1_n_7\,
      Q => collision_count_reg(20),
      R => collision_count
    );
\collision_count_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \collision_count_reg[16]_i_1_n_0\,
      CO(3 downto 0) => \NLW_collision_count_reg[20]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_collision_count_reg[20]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \collision_count_reg[20]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => collision_count_reg(20)
    );
\collision_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \collision_count[0]_i_2_n_0\,
      D => \collision_count_reg[0]_i_3_n_5\,
      Q => collision_count_reg(2),
      R => collision_count
    );
\collision_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \collision_count[0]_i_2_n_0\,
      D => \collision_count_reg[0]_i_3_n_4\,
      Q => collision_count_reg(3),
      R => collision_count
    );
\collision_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \collision_count[0]_i_2_n_0\,
      D => \collision_count_reg[4]_i_1_n_7\,
      Q => collision_count_reg(4),
      R => collision_count
    );
\collision_count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \collision_count_reg[0]_i_3_n_0\,
      CO(3) => \collision_count_reg[4]_i_1_n_0\,
      CO(2) => \collision_count_reg[4]_i_1_n_1\,
      CO(1) => \collision_count_reg[4]_i_1_n_2\,
      CO(0) => \collision_count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \collision_count_reg[4]_i_1_n_4\,
      O(2) => \collision_count_reg[4]_i_1_n_5\,
      O(1) => \collision_count_reg[4]_i_1_n_6\,
      O(0) => \collision_count_reg[4]_i_1_n_7\,
      S(3 downto 0) => collision_count_reg(7 downto 4)
    );
\collision_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \collision_count[0]_i_2_n_0\,
      D => \collision_count_reg[4]_i_1_n_6\,
      Q => collision_count_reg(5),
      R => collision_count
    );
\collision_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \collision_count[0]_i_2_n_0\,
      D => \collision_count_reg[4]_i_1_n_5\,
      Q => collision_count_reg(6),
      R => collision_count
    );
\collision_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \collision_count[0]_i_2_n_0\,
      D => \collision_count_reg[4]_i_1_n_4\,
      Q => collision_count_reg(7),
      R => collision_count
    );
\collision_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \collision_count[0]_i_2_n_0\,
      D => \collision_count_reg[8]_i_1_n_7\,
      Q => collision_count_reg(8),
      R => collision_count
    );
\collision_count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \collision_count_reg[4]_i_1_n_0\,
      CO(3) => \collision_count_reg[8]_i_1_n_0\,
      CO(2) => \collision_count_reg[8]_i_1_n_1\,
      CO(1) => \collision_count_reg[8]_i_1_n_2\,
      CO(0) => \collision_count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \collision_count_reg[8]_i_1_n_4\,
      O(2) => \collision_count_reg[8]_i_1_n_5\,
      O(1) => \collision_count_reg[8]_i_1_n_6\,
      O(0) => \collision_count_reg[8]_i_1_n_7\,
      S(3 downto 0) => collision_count_reg(11 downto 8)
    );
\collision_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \collision_count[0]_i_2_n_0\,
      D => \collision_count_reg[8]_i_1_n_6\,
      Q => collision_count_reg(9),
      R => collision_count
    );
\collision_pixels_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => pass_reg,
      D => collision_count_reg(0),
      Q => collision_pixels(0),
      R => reset
    );
\collision_pixels_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => pass_reg,
      D => collision_count_reg(10),
      Q => collision_pixels(10),
      R => reset
    );
\collision_pixels_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => pass_reg,
      D => collision_count_reg(11),
      Q => collision_pixels(11),
      R => reset
    );
\collision_pixels_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => pass_reg,
      D => collision_count_reg(12),
      Q => collision_pixels(12),
      R => reset
    );
\collision_pixels_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => pass_reg,
      D => collision_count_reg(13),
      Q => collision_pixels(13),
      R => reset
    );
\collision_pixels_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => pass_reg,
      D => collision_count_reg(14),
      Q => collision_pixels(14),
      R => reset
    );
\collision_pixels_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => pass_reg,
      D => collision_count_reg(15),
      Q => collision_pixels(15),
      R => reset
    );
\collision_pixels_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => pass_reg,
      D => collision_count_reg(16),
      Q => collision_pixels(16),
      R => reset
    );
\collision_pixels_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => pass_reg,
      D => collision_count_reg(17),
      Q => collision_pixels(17),
      R => reset
    );
\collision_pixels_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => pass_reg,
      D => collision_count_reg(18),
      Q => collision_pixels(18),
      R => reset
    );
\collision_pixels_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => pass_reg,
      D => collision_count_reg(19),
      Q => collision_pixels(19),
      R => reset
    );
\collision_pixels_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => pass_reg,
      D => collision_count_reg(1),
      Q => collision_pixels(1),
      R => reset
    );
\collision_pixels_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => pass_reg,
      D => collision_count_reg(20),
      Q => collision_pixels(20),
      R => reset
    );
\collision_pixels_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => pass_reg,
      D => collision_count_reg(2),
      Q => collision_pixels(2),
      R => reset
    );
\collision_pixels_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => pass_reg,
      D => collision_count_reg(3),
      Q => collision_pixels(3),
      R => reset
    );
\collision_pixels_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => pass_reg,
      D => collision_count_reg(4),
      Q => collision_pixels(4),
      R => reset
    );
\collision_pixels_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => pass_reg,
      D => collision_count_reg(5),
      Q => collision_pixels(5),
      R => reset
    );
\collision_pixels_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => pass_reg,
      D => collision_count_reg(6),
      Q => collision_pixels(6),
      R => reset
    );
\collision_pixels_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => pass_reg,
      D => collision_count_reg(7),
      Q => collision_pixels(7),
      R => reset
    );
\collision_pixels_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => pass_reg,
      D => collision_count_reg(8),
      Q => collision_pixels(8),
      R => reset
    );
\collision_pixels_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => pass_reg,
      D => collision_count_reg(9),
      Q => collision_pixels(9),
      R => reset
    );
frame_seen_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AE"
    )
        port map (
      I0 => frame_seen,
      I1 => vsync,
      I2 => vsync_prev,
      I3 => reset,
      O => frame_seen_i_1_n_0
    );
frame_seen_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => '1',
      D => frame_seen_i_1_n_0,
      Q => frame_seen,
      R => '0'
    );
pass_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => frame_seen,
      I1 => vsync_prev,
      I2 => vsync,
      O => pass_reg
    );
pass_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => presence_ok,
      I1 => pass_reg_i_3_n_0,
      I2 => pass_reg_i_4_n_0,
      O => pass_reg0
    );
pass_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => collision_count_reg(10),
      I1 => collision_count_reg(11),
      I2 => collision_count_reg(12),
      I3 => collision_count_reg(13),
      I4 => pass_reg_i_5_n_0,
      I5 => pass_reg_i_6_n_0,
      O => pass_reg_i_3_n_0
    );
pass_reg_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFA80000"
    )
        port map (
      I0 => collision_count_reg(2),
      I1 => collision_count_reg(1),
      I2 => collision_count_reg(0),
      I3 => collision_count_reg(3),
      I4 => collision_count_reg(8),
      I5 => pass_reg_i_7_n_0,
      O => pass_reg_i_4_n_0
    );
pass_reg_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => collision_count_reg(19),
      I1 => collision_count_reg(20),
      I2 => collision_count_reg(17),
      I3 => collision_count_reg(16),
      O => pass_reg_i_5_n_0
    );
pass_reg_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => collision_count_reg(18),
      I1 => collision_count_reg(9),
      I2 => collision_count_reg(15),
      I3 => collision_count_reg(14),
      O => pass_reg_i_6_n_0
    );
pass_reg_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => collision_count_reg(5),
      I1 => collision_count_reg(4),
      I2 => collision_count_reg(7),
      I3 => collision_count_reg(6),
      O => pass_reg_i_7_n_0
    );
pass_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => pass_reg,
      D => pass_reg0,
      Q => q_pass,
      R => reset
    );
\player_count[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80008080"
    )
        port map (
      I0 => frame_seen,
      I1 => vde,
      I2 => is_pixel_joueur,
      I3 => \player_count[0]_i_3_n_0\,
      I4 => \player_count[0]_i_4_n_0\,
      O => player_count
    );
\player_count[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \player_count[0]_i_6_n_0\,
      I1 => \player_count[0]_i_7_n_0\,
      I2 => player_count_reg(15),
      I3 => player_count_reg(13),
      I4 => player_count_reg(10),
      I5 => present_reg_i_6_n_0,
      O => \player_count[0]_i_3_n_0\
    );
\player_count[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => player_count_reg(14),
      I1 => player_count_reg(2),
      I2 => player_count_reg(4),
      I3 => player_count_reg(18),
      I4 => player_count_reg(0),
      I5 => player_count_reg(7),
      O => \player_count[0]_i_4_n_0\
    );
\player_count[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => player_count_reg(0),
      O => \player_count[0]_i_5_n_0\
    );
\player_count[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => player_count_reg(19),
      I1 => player_count_reg(17),
      I2 => player_count_reg(12),
      I3 => player_count_reg(1),
      O => \player_count[0]_i_6_n_0\
    );
\player_count[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => player_count_reg(11),
      I1 => player_count_reg(3),
      I2 => player_count_reg(20),
      I3 => player_count_reg(16),
      O => \player_count[0]_i_7_n_0\
    );
\player_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => player_count,
      D => \player_count_reg[0]_i_2_n_7\,
      Q => player_count_reg(0),
      R => collision_count
    );
\player_count_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \player_count_reg[0]_i_2_n_0\,
      CO(2) => \player_count_reg[0]_i_2_n_1\,
      CO(1) => \player_count_reg[0]_i_2_n_2\,
      CO(0) => \player_count_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \player_count_reg[0]_i_2_n_4\,
      O(2) => \player_count_reg[0]_i_2_n_5\,
      O(1) => \player_count_reg[0]_i_2_n_6\,
      O(0) => \player_count_reg[0]_i_2_n_7\,
      S(3 downto 1) => player_count_reg(3 downto 1),
      S(0) => \player_count[0]_i_5_n_0\
    );
\player_count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => player_count,
      D => \player_count_reg[8]_i_1_n_5\,
      Q => player_count_reg(10),
      R => collision_count
    );
\player_count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => player_count,
      D => \player_count_reg[8]_i_1_n_4\,
      Q => player_count_reg(11),
      R => collision_count
    );
\player_count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => player_count,
      D => \player_count_reg[12]_i_1_n_7\,
      Q => player_count_reg(12),
      R => collision_count
    );
\player_count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \player_count_reg[8]_i_1_n_0\,
      CO(3) => \player_count_reg[12]_i_1_n_0\,
      CO(2) => \player_count_reg[12]_i_1_n_1\,
      CO(1) => \player_count_reg[12]_i_1_n_2\,
      CO(0) => \player_count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \player_count_reg[12]_i_1_n_4\,
      O(2) => \player_count_reg[12]_i_1_n_5\,
      O(1) => \player_count_reg[12]_i_1_n_6\,
      O(0) => \player_count_reg[12]_i_1_n_7\,
      S(3 downto 0) => player_count_reg(15 downto 12)
    );
\player_count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => player_count,
      D => \player_count_reg[12]_i_1_n_6\,
      Q => player_count_reg(13),
      R => collision_count
    );
\player_count_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => player_count,
      D => \player_count_reg[12]_i_1_n_5\,
      Q => player_count_reg(14),
      R => collision_count
    );
\player_count_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => player_count,
      D => \player_count_reg[12]_i_1_n_4\,
      Q => player_count_reg(15),
      R => collision_count
    );
\player_count_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => player_count,
      D => \player_count_reg[16]_i_1_n_7\,
      Q => player_count_reg(16),
      R => collision_count
    );
\player_count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \player_count_reg[12]_i_1_n_0\,
      CO(3) => \player_count_reg[16]_i_1_n_0\,
      CO(2) => \player_count_reg[16]_i_1_n_1\,
      CO(1) => \player_count_reg[16]_i_1_n_2\,
      CO(0) => \player_count_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \player_count_reg[16]_i_1_n_4\,
      O(2) => \player_count_reg[16]_i_1_n_5\,
      O(1) => \player_count_reg[16]_i_1_n_6\,
      O(0) => \player_count_reg[16]_i_1_n_7\,
      S(3 downto 0) => player_count_reg(19 downto 16)
    );
\player_count_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => player_count,
      D => \player_count_reg[16]_i_1_n_6\,
      Q => player_count_reg(17),
      R => collision_count
    );
\player_count_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => player_count,
      D => \player_count_reg[16]_i_1_n_5\,
      Q => player_count_reg(18),
      R => collision_count
    );
\player_count_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => player_count,
      D => \player_count_reg[16]_i_1_n_4\,
      Q => player_count_reg(19),
      R => collision_count
    );
\player_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => player_count,
      D => \player_count_reg[0]_i_2_n_6\,
      Q => player_count_reg(1),
      R => collision_count
    );
\player_count_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => player_count,
      D => \player_count_reg[20]_i_1_n_7\,
      Q => player_count_reg(20),
      R => collision_count
    );
\player_count_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \player_count_reg[16]_i_1_n_0\,
      CO(3 downto 0) => \NLW_player_count_reg[20]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_player_count_reg[20]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \player_count_reg[20]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => player_count_reg(20)
    );
\player_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => player_count,
      D => \player_count_reg[0]_i_2_n_5\,
      Q => player_count_reg(2),
      R => collision_count
    );
\player_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => player_count,
      D => \player_count_reg[0]_i_2_n_4\,
      Q => player_count_reg(3),
      R => collision_count
    );
\player_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => player_count,
      D => \player_count_reg[4]_i_1_n_7\,
      Q => player_count_reg(4),
      R => collision_count
    );
\player_count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \player_count_reg[0]_i_2_n_0\,
      CO(3) => \player_count_reg[4]_i_1_n_0\,
      CO(2) => \player_count_reg[4]_i_1_n_1\,
      CO(1) => \player_count_reg[4]_i_1_n_2\,
      CO(0) => \player_count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \player_count_reg[4]_i_1_n_4\,
      O(2) => \player_count_reg[4]_i_1_n_5\,
      O(1) => \player_count_reg[4]_i_1_n_6\,
      O(0) => \player_count_reg[4]_i_1_n_7\,
      S(3 downto 0) => player_count_reg(7 downto 4)
    );
\player_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => player_count,
      D => \player_count_reg[4]_i_1_n_6\,
      Q => player_count_reg(5),
      R => collision_count
    );
\player_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => player_count,
      D => \player_count_reg[4]_i_1_n_5\,
      Q => player_count_reg(6),
      R => collision_count
    );
\player_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => player_count,
      D => \player_count_reg[4]_i_1_n_4\,
      Q => player_count_reg(7),
      R => collision_count
    );
\player_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => player_count,
      D => \player_count_reg[8]_i_1_n_7\,
      Q => player_count_reg(8),
      R => collision_count
    );
\player_count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \player_count_reg[4]_i_1_n_0\,
      CO(3) => \player_count_reg[8]_i_1_n_0\,
      CO(2) => \player_count_reg[8]_i_1_n_1\,
      CO(1) => \player_count_reg[8]_i_1_n_2\,
      CO(0) => \player_count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \player_count_reg[8]_i_1_n_4\,
      O(2) => \player_count_reg[8]_i_1_n_5\,
      O(1) => \player_count_reg[8]_i_1_n_6\,
      O(0) => \player_count_reg[8]_i_1_n_7\,
      S(3 downto 0) => player_count_reg(11 downto 8)
    );
\player_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => player_count,
      D => \player_count_reg[8]_i_1_n_6\,
      Q => player_count_reg(9),
      R => collision_count
    );
\player_pixels_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => pass_reg,
      D => player_count_reg(0),
      Q => player_pixels(0),
      R => reset
    );
\player_pixels_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => pass_reg,
      D => player_count_reg(10),
      Q => player_pixels(10),
      R => reset
    );
\player_pixels_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => pass_reg,
      D => player_count_reg(11),
      Q => player_pixels(11),
      R => reset
    );
\player_pixels_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => pass_reg,
      D => player_count_reg(12),
      Q => player_pixels(12),
      R => reset
    );
\player_pixels_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => pass_reg,
      D => player_count_reg(13),
      Q => player_pixels(13),
      R => reset
    );
\player_pixels_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => pass_reg,
      D => player_count_reg(14),
      Q => player_pixels(14),
      R => reset
    );
\player_pixels_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => pass_reg,
      D => player_count_reg(15),
      Q => player_pixels(15),
      R => reset
    );
\player_pixels_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => pass_reg,
      D => player_count_reg(16),
      Q => player_pixels(16),
      R => reset
    );
\player_pixels_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => pass_reg,
      D => player_count_reg(17),
      Q => player_pixels(17),
      R => reset
    );
\player_pixels_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => pass_reg,
      D => player_count_reg(18),
      Q => player_pixels(18),
      R => reset
    );
\player_pixels_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => pass_reg,
      D => player_count_reg(19),
      Q => player_pixels(19),
      R => reset
    );
\player_pixels_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => pass_reg,
      D => player_count_reg(1),
      Q => player_pixels(1),
      R => reset
    );
\player_pixels_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => pass_reg,
      D => player_count_reg(20),
      Q => player_pixels(20),
      R => reset
    );
\player_pixels_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => pass_reg,
      D => player_count_reg(2),
      Q => player_pixels(2),
      R => reset
    );
\player_pixels_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => pass_reg,
      D => player_count_reg(3),
      Q => player_pixels(3),
      R => reset
    );
\player_pixels_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => pass_reg,
      D => player_count_reg(4),
      Q => player_pixels(4),
      R => reset
    );
\player_pixels_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => pass_reg,
      D => player_count_reg(5),
      Q => player_pixels(5),
      R => reset
    );
\player_pixels_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => pass_reg,
      D => player_count_reg(6),
      Q => player_pixels(6),
      R => reset
    );
\player_pixels_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => pass_reg,
      D => player_count_reg(7),
      Q => player_pixels(7),
      R => reset
    );
\player_pixels_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => pass_reg,
      D => player_count_reg(8),
      Q => player_pixels(8),
      R => reset
    );
\player_pixels_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => pass_reg,
      D => player_count_reg(9),
      Q => player_pixels(9),
      R => reset
    );
present_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFFEFE"
    )
        port map (
      I0 => present_reg_i_2_n_0,
      I1 => present_reg_i_3_n_0,
      I2 => present_reg_i_4_n_0,
      I3 => present_reg_i_5_n_0,
      I4 => present_reg_i_6_n_0,
      O => presence_ok
    );
present_reg_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => player_count_reg(14),
      I1 => player_count_reg(11),
      I2 => player_count_reg(20),
      I3 => player_count_reg(17),
      O => present_reg_i_2_n_0
    );
present_reg_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => player_count_reg(19),
      I1 => player_count_reg(16),
      I2 => player_count_reg(18),
      I3 => player_count_reg(15),
      O => present_reg_i_3_n_0
    );
present_reg_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => player_count_reg(12),
      I1 => player_count_reg(13),
      I2 => player_count_reg(10),
      O => present_reg_i_4_n_0
    );
present_reg_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"57"
    )
        port map (
      I0 => player_count_reg(7),
      I1 => player_count_reg(4),
      I2 => player_count_reg(3),
      O => present_reg_i_5_n_0
    );
present_reg_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => player_count_reg(6),
      I1 => player_count_reg(8),
      I2 => player_count_reg(5),
      I3 => player_count_reg(9),
      O => present_reg_i_6_n_0
    );
present_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => pass_reg,
      D => presence_ok,
      Q => player_present,
      R => reset
    );
valid_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => vsync,
      I1 => vsync_prev,
      I2 => frame_seen,
      I3 => reset,
      O => valid_reg_i_1_n_0
    );
valid_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => '1',
      D => valid_reg_i_1_n_0,
      Q => result_valid,
      R => '0'
    );
vsync_prev_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => vsync,
      I1 => reset,
      O => vsync_prev_i_1_n_0
    );
vsync_prev_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => '1',
      D => vsync_prev_i_1_n_0,
      Q => vsync_prev,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity HDMI_bd_DSP_0_0 is
  port (
    clk_pixel : in STD_LOGIC;
    reset : in STD_LOGIC;
    vde : in STD_LOGIC;
    vsync : in STD_LOGIC;
    hsync : in STD_LOGIC;
    is_pixel_joueur : in STD_LOGIC;
    is_pixel_mur : in STD_LOGIC;
    q_pass : out STD_LOGIC;
    player_present : out STD_LOGIC;
    result_valid : out STD_LOGIC;
    player_pixels : out STD_LOGIC_VECTOR ( 20 downto 0 );
    collision_pixels : out STD_LOGIC_VECTOR ( 20 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of HDMI_bd_DSP_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of HDMI_bd_DSP_0_0 : entity is "HDMI_bd_DSP_0_0,DSP,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of HDMI_bd_DSP_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of HDMI_bd_DSP_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of HDMI_bd_DSP_0_0 : entity is "DSP,Vivado 2018.2.1";
end HDMI_bd_DSP_0_0;

architecture STRUCTURE of HDMI_bd_DSP_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH";
begin
U0: entity work.HDMI_bd_DSP_0_0_DSP
     port map (
      clk_pixel => clk_pixel,
      collision_pixels(20 downto 0) => collision_pixels(20 downto 0),
      is_pixel_joueur => is_pixel_joueur,
      is_pixel_mur => is_pixel_mur,
      player_pixels(20 downto 0) => player_pixels(20 downto 0),
      player_present => player_present,
      q_pass => q_pass,
      reset => reset,
      result_valid => result_valid,
      vde => vde,
      vsync => vsync
    );
end STRUCTURE;
