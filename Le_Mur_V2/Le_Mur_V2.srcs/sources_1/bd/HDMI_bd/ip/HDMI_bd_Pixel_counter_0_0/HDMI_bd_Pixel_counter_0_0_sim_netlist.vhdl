-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2.1 (win64) Build 2288692 Thu Jul 26 18:24:02 MDT 2018
-- Date        : Mon Nov 23 16:36:48 2026
-- Host        : pcetu-129 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               U:/Documents/FPGA/Lab4_GIF-4202/Le_Mur_V2/Le_Mur_V2.srcs/sources_1/bd/HDMI_bd/ip/HDMI_bd_Pixel_counter_0_0/HDMI_bd_Pixel_counter_0_0_sim_netlist.vhdl
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
    pixel_x : out STD_LOGIC_VECTOR ( 10 downto 0 );
    pixel_y : out STD_LOGIC_VECTOR ( 10 downto 0 );
    vde : in STD_LOGIC;
    clk_pixel : in STD_LOGIC;
    vsync : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of HDMI_bd_Pixel_counter_0_0_Pixel_counter : entity is "Pixel_counter";
end HDMI_bd_Pixel_counter_0_0_Pixel_counter;

architecture STRUCTURE of HDMI_bd_Pixel_counter_0_0_Pixel_counter is
  signal clear : STD_LOGIC;
  signal \^pixel_x\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \^pixel_y\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal vde_prev : STD_LOGIC;
  signal \x_cnt[10]_i_3_n_0\ : STD_LOGIC;
  signal \y_cnt[10]_i_1_n_0\ : STD_LOGIC;
  signal \y_cnt[10]_i_3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \x_cnt[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \x_cnt[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \x_cnt[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \x_cnt[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \x_cnt[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \x_cnt[7]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \x_cnt[8]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \x_cnt[9]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \y_cnt[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \y_cnt[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \y_cnt[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \y_cnt[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \y_cnt[6]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \y_cnt[7]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \y_cnt[8]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \y_cnt[9]_i_1\ : label is "soft_lutpair2";
begin
  pixel_x(10 downto 0) <= \^pixel_x\(10 downto 0);
  pixel_y(10 downto 0) <= \^pixel_y\(10 downto 0);
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
\x_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^pixel_x\(0),
      O => plusOp(0)
    );
\x_cnt[10]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => vde,
      O => clear
    );
\x_cnt[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^pixel_x\(8),
      I1 => \^pixel_x\(6),
      I2 => \x_cnt[10]_i_3_n_0\,
      I3 => \^pixel_x\(7),
      I4 => \^pixel_x\(9),
      I5 => \^pixel_x\(10),
      O => plusOp(10)
    );
\x_cnt[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^pixel_x\(5),
      I1 => \^pixel_x\(3),
      I2 => \^pixel_x\(1),
      I3 => \^pixel_x\(0),
      I4 => \^pixel_x\(2),
      I5 => \^pixel_x\(4),
      O => \x_cnt[10]_i_3_n_0\
    );
\x_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^pixel_x\(0),
      I1 => \^pixel_x\(1),
      O => plusOp(1)
    );
\x_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^pixel_x\(0),
      I1 => \^pixel_x\(1),
      I2 => \^pixel_x\(2),
      O => plusOp(2)
    );
\x_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^pixel_x\(1),
      I1 => \^pixel_x\(0),
      I2 => \^pixel_x\(2),
      I3 => \^pixel_x\(3),
      O => plusOp(3)
    );
\x_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^pixel_x\(2),
      I1 => \^pixel_x\(0),
      I2 => \^pixel_x\(1),
      I3 => \^pixel_x\(3),
      I4 => \^pixel_x\(4),
      O => plusOp(4)
    );
\x_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^pixel_x\(3),
      I1 => \^pixel_x\(1),
      I2 => \^pixel_x\(0),
      I3 => \^pixel_x\(2),
      I4 => \^pixel_x\(4),
      I5 => \^pixel_x\(5),
      O => plusOp(5)
    );
\x_cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_cnt[10]_i_3_n_0\,
      I1 => \^pixel_x\(6),
      O => plusOp(6)
    );
\x_cnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \x_cnt[10]_i_3_n_0\,
      I1 => \^pixel_x\(6),
      I2 => \^pixel_x\(7),
      O => plusOp(7)
    );
\x_cnt[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^pixel_x\(6),
      I1 => \x_cnt[10]_i_3_n_0\,
      I2 => \^pixel_x\(7),
      I3 => \^pixel_x\(8),
      O => plusOp(8)
    );
\x_cnt[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^pixel_x\(7),
      I1 => \x_cnt[10]_i_3_n_0\,
      I2 => \^pixel_x\(6),
      I3 => \^pixel_x\(8),
      I4 => \^pixel_x\(9),
      O => plusOp(9)
    );
\x_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => '1',
      D => plusOp(0),
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
      D => plusOp(10),
      Q => \^pixel_x\(10),
      R => clear
    );
\x_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => '1',
      D => plusOp(1),
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
      D => plusOp(2),
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
      D => plusOp(3),
      Q => \^pixel_x\(3),
      R => clear
    );
\x_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => '1',
      D => plusOp(4),
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
      D => plusOp(5),
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
      D => plusOp(6),
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
      D => plusOp(7),
      Q => \^pixel_x\(7),
      R => clear
    );
\x_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => '1',
      D => plusOp(8),
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
      D => plusOp(9),
      Q => \^pixel_x\(9),
      R => clear
    );
\y_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^pixel_y\(0),
      O => \plusOp__0\(0)
    );
\y_cnt[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => vde_prev,
      I1 => vde,
      O => \y_cnt[10]_i_1_n_0\
    );
\y_cnt[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^pixel_y\(8),
      I1 => \^pixel_y\(6),
      I2 => \y_cnt[10]_i_3_n_0\,
      I3 => \^pixel_y\(7),
      I4 => \^pixel_y\(9),
      I5 => \^pixel_y\(10),
      O => \plusOp__0\(10)
    );
\y_cnt[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^pixel_y\(5),
      I1 => \^pixel_y\(3),
      I2 => \^pixel_y\(1),
      I3 => \^pixel_y\(0),
      I4 => \^pixel_y\(2),
      I5 => \^pixel_y\(4),
      O => \y_cnt[10]_i_3_n_0\
    );
\y_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^pixel_y\(0),
      I1 => \^pixel_y\(1),
      O => \plusOp__0\(1)
    );
\y_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^pixel_y\(0),
      I1 => \^pixel_y\(1),
      I2 => \^pixel_y\(2),
      O => \plusOp__0\(2)
    );
\y_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^pixel_y\(1),
      I1 => \^pixel_y\(0),
      I2 => \^pixel_y\(2),
      I3 => \^pixel_y\(3),
      O => \plusOp__0\(3)
    );
\y_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^pixel_y\(2),
      I1 => \^pixel_y\(0),
      I2 => \^pixel_y\(1),
      I3 => \^pixel_y\(3),
      I4 => \^pixel_y\(4),
      O => \plusOp__0\(4)
    );
\y_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^pixel_y\(3),
      I1 => \^pixel_y\(1),
      I2 => \^pixel_y\(0),
      I3 => \^pixel_y\(2),
      I4 => \^pixel_y\(4),
      I5 => \^pixel_y\(5),
      O => \plusOp__0\(5)
    );
\y_cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \y_cnt[10]_i_3_n_0\,
      I1 => \^pixel_y\(6),
      O => \plusOp__0\(6)
    );
\y_cnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \y_cnt[10]_i_3_n_0\,
      I1 => \^pixel_y\(6),
      I2 => \^pixel_y\(7),
      O => \plusOp__0\(7)
    );
\y_cnt[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^pixel_y\(6),
      I1 => \y_cnt[10]_i_3_n_0\,
      I2 => \^pixel_y\(7),
      I3 => \^pixel_y\(8),
      O => \plusOp__0\(8)
    );
\y_cnt[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^pixel_y\(7),
      I1 => \y_cnt[10]_i_3_n_0\,
      I2 => \^pixel_y\(6),
      I3 => \^pixel_y\(8),
      I4 => \^pixel_y\(9),
      O => \plusOp__0\(9)
    );
\y_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \y_cnt[10]_i_1_n_0\,
      D => \plusOp__0\(0),
      Q => \^pixel_y\(0),
      R => vsync
    );
\y_cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \y_cnt[10]_i_1_n_0\,
      D => \plusOp__0\(10),
      Q => \^pixel_y\(10),
      R => vsync
    );
\y_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \y_cnt[10]_i_1_n_0\,
      D => \plusOp__0\(1),
      Q => \^pixel_y\(1),
      R => vsync
    );
\y_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \y_cnt[10]_i_1_n_0\,
      D => \plusOp__0\(2),
      Q => \^pixel_y\(2),
      R => vsync
    );
\y_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \y_cnt[10]_i_1_n_0\,
      D => \plusOp__0\(3),
      Q => \^pixel_y\(3),
      R => vsync
    );
\y_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \y_cnt[10]_i_1_n_0\,
      D => \plusOp__0\(4),
      Q => \^pixel_y\(4),
      R => vsync
    );
\y_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \y_cnt[10]_i_1_n_0\,
      D => \plusOp__0\(5),
      Q => \^pixel_y\(5),
      R => vsync
    );
\y_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \y_cnt[10]_i_1_n_0\,
      D => \plusOp__0\(6),
      Q => \^pixel_y\(6),
      R => vsync
    );
\y_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \y_cnt[10]_i_1_n_0\,
      D => \plusOp__0\(7),
      Q => \^pixel_y\(7),
      R => vsync
    );
\y_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \y_cnt[10]_i_1_n_0\,
      D => \plusOp__0\(8),
      Q => \^pixel_y\(8),
      R => vsync
    );
\y_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_pixel,
      CE => \y_cnt[10]_i_1_n_0\,
      D => \plusOp__0\(9),
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
    pixel_x : out STD_LOGIC_VECTOR ( 10 downto 0 );
    pixel_y : out STD_LOGIC_VECTOR ( 10 downto 0 )
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
      pixel_x(10 downto 0) => pixel_x(10 downto 0),
      pixel_y(10 downto 0) => pixel_y(10 downto 0),
      vde => vde,
      vsync => vsync
    );
end STRUCTURE;
