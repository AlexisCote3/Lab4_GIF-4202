-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2.1 (win64) Build 2288692 Thu Jul 26 18:24:02 MDT 2018
-- Date        : Sun Nov 22 20:06:06 2026
-- Host        : pcetu-129 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               U:/Documents/FPGA/Lab4_GIF-4202/project_lab4/project_lab4.srcs/sources_1/bd/HDMI_bd/ip/HDMI_bd_Pixel_counter_0_0/HDMI_bd_Pixel_counter_0_0_sim_netlist.vhdl
-- Design      : HDMI_bd_Pixel_counter_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity HDMI_bd_Pixel_counter_0_0_Pixel_counter is
  port (
    pixel_x : out STD_LOGIC_VECTOR ( 11 downto 0 );
    pixel_y : out STD_LOGIC_VECTOR ( 11 downto 0 );
    vde : in STD_LOGIC;
    clk_pixel : in STD_LOGIC;
    vsync : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of HDMI_bd_Pixel_counter_0_0_Pixel_counter : entity is "Pixel_counter";
end HDMI_bd_Pixel_counter_0_0_Pixel_counter;

architecture STRUCTURE of HDMI_bd_Pixel_counter_0_0_Pixel_counter is
  signal clear : STD_LOGIC;
  signal \^pixel_x\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \^pixel_y\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal vde_prev : STD_LOGIC;
  signal \x_cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \x_cnt_reg[11]_i_2_n_1\ : STD_LOGIC;
  signal \x_cnt_reg[11]_i_2_n_2\ : STD_LOGIC;
  signal \x_cnt_reg[11]_i_2_n_3\ : STD_LOGIC;
  signal \x_cnt_reg[11]_i_2_n_4\ : STD_LOGIC;
  signal \x_cnt_reg[11]_i_2_n_5\ : STD_LOGIC;
  signal \x_cnt_reg[11]_i_2_n_6\ : STD_LOGIC;
  signal \x_cnt_reg[11]_i_2_n_7\ : STD_LOGIC;
  signal \x_cnt_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \x_cnt_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \x_cnt_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \x_cnt_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \x_cnt_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \x_cnt_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \x_cnt_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \x_cnt_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \x_cnt_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \x_cnt_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \x_cnt_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \x_cnt_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \x_cnt_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \x_cnt_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \x_cnt_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \x_cnt_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \y_cnt[11]_i_1_n_0\ : STD_LOGIC;
  signal \y_cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \y_cnt_reg[11]_i_2_n_1\ : STD_LOGIC;
  signal \y_cnt_reg[11]_i_2_n_2\ : STD_LOGIC;
  signal \y_cnt_reg[11]_i_2_n_3\ : STD_LOGIC;
  signal \y_cnt_reg[11]_i_2_n_4\ : STD_LOGIC;
  signal \y_cnt_reg[11]_i_2_n_5\ : STD_LOGIC;
  signal \y_cnt_reg[11]_i_2_n_6\ : STD_LOGIC;
  signal \y_cnt_reg[11]_i_2_n_7\ : STD_LOGIC;
  signal \y_cnt_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \y_cnt_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \y_cnt_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \y_cnt_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \y_cnt_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \y_cnt_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \y_cnt_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \y_cnt_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \y_cnt_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \y_cnt_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \y_cnt_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \y_cnt_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \y_cnt_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \y_cnt_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \y_cnt_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \y_cnt_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_x_cnt_reg[11]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_y_cnt_reg[11]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  pixel_x(11 downto 0) <= \^pixel_x\(11 downto 0);
  pixel_y(11 downto 0) <= \^pixel_y\(11 downto 0);
vde_prev_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => '1',
      D => vde,
      Q => vde_prev,
      R => '0'
    );
\x_cnt[11]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => vde,
      O => clear
    );
\x_cnt[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^pixel_x\(0),
      O => \x_cnt[3]_i_2_n_0\
    );
\x_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => '1',
      D => \x_cnt_reg[3]_i_1_n_7\,
      Q => \^pixel_x\(0),
      R => clear
    );
\x_cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => '1',
      D => \x_cnt_reg[11]_i_2_n_5\,
      Q => \^pixel_x\(10),
      R => clear
    );
\x_cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => '1',
      D => \x_cnt_reg[11]_i_2_n_4\,
      Q => \^pixel_x\(11),
      R => clear
    );
\x_cnt_reg[11]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \x_cnt_reg[7]_i_1_n_0\,
      CO(3) => \NLW_x_cnt_reg[11]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \x_cnt_reg[11]_i_2_n_1\,
      CO(1) => \x_cnt_reg[11]_i_2_n_2\,
      CO(0) => \x_cnt_reg[11]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \x_cnt_reg[11]_i_2_n_4\,
      O(2) => \x_cnt_reg[11]_i_2_n_5\,
      O(1) => \x_cnt_reg[11]_i_2_n_6\,
      O(0) => \x_cnt_reg[11]_i_2_n_7\,
      S(3 downto 0) => \^pixel_x\(11 downto 8)
    );
\x_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => '1',
      D => \x_cnt_reg[3]_i_1_n_6\,
      Q => \^pixel_x\(1),
      R => clear
    );
\x_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => '1',
      D => \x_cnt_reg[3]_i_1_n_5\,
      Q => \^pixel_x\(2),
      R => clear
    );
\x_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => '1',
      D => \x_cnt_reg[3]_i_1_n_4\,
      Q => \^pixel_x\(3),
      R => clear
    );
\x_cnt_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \x_cnt_reg[3]_i_1_n_0\,
      CO(2) => \x_cnt_reg[3]_i_1_n_1\,
      CO(1) => \x_cnt_reg[3]_i_1_n_2\,
      CO(0) => \x_cnt_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \x_cnt_reg[3]_i_1_n_4\,
      O(2) => \x_cnt_reg[3]_i_1_n_5\,
      O(1) => \x_cnt_reg[3]_i_1_n_6\,
      O(0) => \x_cnt_reg[3]_i_1_n_7\,
      S(3 downto 1) => \^pixel_x\(3 downto 1),
      S(0) => \x_cnt[3]_i_2_n_0\
    );
\x_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => '1',
      D => \x_cnt_reg[7]_i_1_n_7\,
      Q => \^pixel_x\(4),
      R => clear
    );
\x_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => '1',
      D => \x_cnt_reg[7]_i_1_n_6\,
      Q => \^pixel_x\(5),
      R => clear
    );
\x_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => '1',
      D => \x_cnt_reg[7]_i_1_n_5\,
      Q => \^pixel_x\(6),
      R => clear
    );
\x_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => '1',
      D => \x_cnt_reg[7]_i_1_n_4\,
      Q => \^pixel_x\(7),
      R => clear
    );
\x_cnt_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \x_cnt_reg[3]_i_1_n_0\,
      CO(3) => \x_cnt_reg[7]_i_1_n_0\,
      CO(2) => \x_cnt_reg[7]_i_1_n_1\,
      CO(1) => \x_cnt_reg[7]_i_1_n_2\,
      CO(0) => \x_cnt_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \x_cnt_reg[7]_i_1_n_4\,
      O(2) => \x_cnt_reg[7]_i_1_n_5\,
      O(1) => \x_cnt_reg[7]_i_1_n_6\,
      O(0) => \x_cnt_reg[7]_i_1_n_7\,
      S(3 downto 0) => \^pixel_x\(7 downto 4)
    );
\x_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => '1',
      D => \x_cnt_reg[11]_i_2_n_7\,
      Q => \^pixel_x\(8),
      R => clear
    );
\x_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => '1',
      D => \x_cnt_reg[11]_i_2_n_6\,
      Q => \^pixel_x\(9),
      R => clear
    );
\y_cnt[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => vde_prev,
      I1 => vde,
      O => \y_cnt[11]_i_1_n_0\
    );
\y_cnt[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^pixel_y\(0),
      O => \y_cnt[3]_i_2_n_0\
    );
\y_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \y_cnt[11]_i_1_n_0\,
      D => \y_cnt_reg[3]_i_1_n_7\,
      Q => \^pixel_y\(0),
      R => vsync
    );
\y_cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \y_cnt[11]_i_1_n_0\,
      D => \y_cnt_reg[11]_i_2_n_5\,
      Q => \^pixel_y\(10),
      R => vsync
    );
\y_cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \y_cnt[11]_i_1_n_0\,
      D => \y_cnt_reg[11]_i_2_n_4\,
      Q => \^pixel_y\(11),
      R => vsync
    );
\y_cnt_reg[11]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_cnt_reg[7]_i_1_n_0\,
      CO(3) => \NLW_y_cnt_reg[11]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \y_cnt_reg[11]_i_2_n_1\,
      CO(1) => \y_cnt_reg[11]_i_2_n_2\,
      CO(0) => \y_cnt_reg[11]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \y_cnt_reg[11]_i_2_n_4\,
      O(2) => \y_cnt_reg[11]_i_2_n_5\,
      O(1) => \y_cnt_reg[11]_i_2_n_6\,
      O(0) => \y_cnt_reg[11]_i_2_n_7\,
      S(3 downto 0) => \^pixel_y\(11 downto 8)
    );
\y_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \y_cnt[11]_i_1_n_0\,
      D => \y_cnt_reg[3]_i_1_n_6\,
      Q => \^pixel_y\(1),
      R => vsync
    );
\y_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \y_cnt[11]_i_1_n_0\,
      D => \y_cnt_reg[3]_i_1_n_5\,
      Q => \^pixel_y\(2),
      R => vsync
    );
\y_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \y_cnt[11]_i_1_n_0\,
      D => \y_cnt_reg[3]_i_1_n_4\,
      Q => \^pixel_y\(3),
      R => vsync
    );
\y_cnt_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \y_cnt_reg[3]_i_1_n_0\,
      CO(2) => \y_cnt_reg[3]_i_1_n_1\,
      CO(1) => \y_cnt_reg[3]_i_1_n_2\,
      CO(0) => \y_cnt_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \y_cnt_reg[3]_i_1_n_4\,
      O(2) => \y_cnt_reg[3]_i_1_n_5\,
      O(1) => \y_cnt_reg[3]_i_1_n_6\,
      O(0) => \y_cnt_reg[3]_i_1_n_7\,
      S(3 downto 1) => \^pixel_y\(3 downto 1),
      S(0) => \y_cnt[3]_i_2_n_0\
    );
\y_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \y_cnt[11]_i_1_n_0\,
      D => \y_cnt_reg[7]_i_1_n_7\,
      Q => \^pixel_y\(4),
      R => vsync
    );
\y_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \y_cnt[11]_i_1_n_0\,
      D => \y_cnt_reg[7]_i_1_n_6\,
      Q => \^pixel_y\(5),
      R => vsync
    );
\y_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \y_cnt[11]_i_1_n_0\,
      D => \y_cnt_reg[7]_i_1_n_5\,
      Q => \^pixel_y\(6),
      R => vsync
    );
\y_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \y_cnt[11]_i_1_n_0\,
      D => \y_cnt_reg[7]_i_1_n_4\,
      Q => \^pixel_y\(7),
      R => vsync
    );
\y_cnt_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_cnt_reg[3]_i_1_n_0\,
      CO(3) => \y_cnt_reg[7]_i_1_n_0\,
      CO(2) => \y_cnt_reg[7]_i_1_n_1\,
      CO(1) => \y_cnt_reg[7]_i_1_n_2\,
      CO(0) => \y_cnt_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \y_cnt_reg[7]_i_1_n_4\,
      O(2) => \y_cnt_reg[7]_i_1_n_5\,
      O(1) => \y_cnt_reg[7]_i_1_n_6\,
      O(0) => \y_cnt_reg[7]_i_1_n_7\,
      S(3 downto 0) => \^pixel_y\(7 downto 4)
    );
\y_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \y_cnt[11]_i_1_n_0\,
      D => \y_cnt_reg[11]_i_2_n_7\,
      Q => \^pixel_y\(8),
      R => vsync
    );
\y_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \y_cnt[11]_i_1_n_0\,
      D => \y_cnt_reg[11]_i_2_n_6\,
      Q => \^pixel_y\(9),
      R => vsync
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity HDMI_bd_Pixel_counter_0_0 is
  port (
    clk_pixel : in STD_LOGIC;
    vsync : in STD_LOGIC;
    vde : in STD_LOGIC;
    pixel_x : out STD_LOGIC_VECTOR ( 11 downto 0 );
    pixel_y : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of HDMI_bd_Pixel_counter_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of HDMI_bd_Pixel_counter_0_0 : entity is "HDMI_bd_Pixel_counter_0_0,Pixel_counter,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of HDMI_bd_Pixel_counter_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of HDMI_bd_Pixel_counter_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of HDMI_bd_Pixel_counter_0_0 : entity is "Pixel_counter,Vivado 2018.2.1";
end HDMI_bd_Pixel_counter_0_0;

architecture STRUCTURE of HDMI_bd_Pixel_counter_0_0 is
begin
U0: entity work.HDMI_bd_Pixel_counter_0_0_Pixel_counter
     port map (
      clk_pixel => clk_pixel,
      pixel_x(11 downto 0) => pixel_x(11 downto 0),
      pixel_y(11 downto 0) => pixel_y(11 downto 0),
      vde => vde,
      vsync => vsync
    );
end STRUCTURE;
