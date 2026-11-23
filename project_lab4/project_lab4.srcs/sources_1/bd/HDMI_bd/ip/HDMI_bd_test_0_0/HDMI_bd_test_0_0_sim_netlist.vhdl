-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2.1 (win64) Build 2288692 Thu Jul 26 18:24:02 MDT 2018
-- Date        : Sun Nov 22 20:06:06 2026
-- Host        : pcetu-129 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               U:/Documents/FPGA/Lab4_GIF-4202/project_lab4/project_lab4.srcs/sources_1/bd/HDMI_bd/ip/HDMI_bd_test_0_0/HDMI_bd_test_0_0_sim_netlist.vhdl
-- Design      : HDMI_bd_test_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity HDMI_bd_test_0_0_test is
  port (
    rbg_out : out STD_LOGIC_VECTOR ( 23 downto 0 );
    rbg_in : in STD_LOGIC_VECTOR ( 23 downto 0 );
    is_pixel_joueur : in STD_LOGIC;
    is_mur : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of HDMI_bd_test_0_0_test : entity is "test";
end HDMI_bd_test_0_0_test;

architecture STRUCTURE of HDMI_bd_test_0_0_test is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \rbg_out[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rbg_out[10]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rbg_out[11]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rbg_out[12]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rbg_out[13]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rbg_out[14]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \rbg_out[15]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \rbg_out[16]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rbg_out[17]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rbg_out[18]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rbg_out[19]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rbg_out[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rbg_out[20]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rbg_out[21]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rbg_out[22]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rbg_out[23]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rbg_out[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rbg_out[3]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rbg_out[4]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rbg_out[5]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rbg_out[6]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rbg_out[7]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rbg_out[8]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \rbg_out[9]_INST_0\ : label is "soft_lutpair11";
begin
\rbg_out[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => rbg_in(0),
      I1 => is_pixel_joueur,
      I2 => is_mur,
      O => rbg_out(0)
    );
\rbg_out[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"32"
    )
        port map (
      I0 => rbg_in(10),
      I1 => is_pixel_joueur,
      I2 => is_mur,
      O => rbg_out(10)
    );
\rbg_out[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"32"
    )
        port map (
      I0 => rbg_in(11),
      I1 => is_pixel_joueur,
      I2 => is_mur,
      O => rbg_out(11)
    );
\rbg_out[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"32"
    )
        port map (
      I0 => rbg_in(12),
      I1 => is_pixel_joueur,
      I2 => is_mur,
      O => rbg_out(12)
    );
\rbg_out[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"32"
    )
        port map (
      I0 => rbg_in(13),
      I1 => is_pixel_joueur,
      I2 => is_mur,
      O => rbg_out(13)
    );
\rbg_out[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"32"
    )
        port map (
      I0 => rbg_in(14),
      I1 => is_pixel_joueur,
      I2 => is_mur,
      O => rbg_out(14)
    );
\rbg_out[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"32"
    )
        port map (
      I0 => rbg_in(15),
      I1 => is_pixel_joueur,
      I2 => is_mur,
      O => rbg_out(15)
    );
\rbg_out[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"98"
    )
        port map (
      I0 => is_mur,
      I1 => is_pixel_joueur,
      I2 => rbg_in(16),
      O => rbg_out(16)
    );
\rbg_out[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"98"
    )
        port map (
      I0 => is_mur,
      I1 => is_pixel_joueur,
      I2 => rbg_in(17),
      O => rbg_out(17)
    );
\rbg_out[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"98"
    )
        port map (
      I0 => is_mur,
      I1 => is_pixel_joueur,
      I2 => rbg_in(18),
      O => rbg_out(18)
    );
\rbg_out[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"98"
    )
        port map (
      I0 => is_mur,
      I1 => is_pixel_joueur,
      I2 => rbg_in(19),
      O => rbg_out(19)
    );
\rbg_out[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => rbg_in(1),
      I1 => is_pixel_joueur,
      I2 => is_mur,
      O => rbg_out(1)
    );
\rbg_out[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"98"
    )
        port map (
      I0 => is_mur,
      I1 => is_pixel_joueur,
      I2 => rbg_in(20),
      O => rbg_out(20)
    );
\rbg_out[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"98"
    )
        port map (
      I0 => is_mur,
      I1 => is_pixel_joueur,
      I2 => rbg_in(21),
      O => rbg_out(21)
    );
\rbg_out[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"98"
    )
        port map (
      I0 => is_mur,
      I1 => is_pixel_joueur,
      I2 => rbg_in(22),
      O => rbg_out(22)
    );
\rbg_out[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"98"
    )
        port map (
      I0 => is_mur,
      I1 => is_pixel_joueur,
      I2 => rbg_in(23),
      O => rbg_out(23)
    );
\rbg_out[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => rbg_in(2),
      I1 => is_pixel_joueur,
      I2 => is_mur,
      O => rbg_out(2)
    );
\rbg_out[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => rbg_in(3),
      I1 => is_pixel_joueur,
      I2 => is_mur,
      O => rbg_out(3)
    );
\rbg_out[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => rbg_in(4),
      I1 => is_pixel_joueur,
      I2 => is_mur,
      O => rbg_out(4)
    );
\rbg_out[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => rbg_in(5),
      I1 => is_pixel_joueur,
      I2 => is_mur,
      O => rbg_out(5)
    );
\rbg_out[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => rbg_in(6),
      I1 => is_pixel_joueur,
      I2 => is_mur,
      O => rbg_out(6)
    );
\rbg_out[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => rbg_in(7),
      I1 => is_pixel_joueur,
      I2 => is_mur,
      O => rbg_out(7)
    );
\rbg_out[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"32"
    )
        port map (
      I0 => rbg_in(8),
      I1 => is_pixel_joueur,
      I2 => is_mur,
      O => rbg_out(8)
    );
\rbg_out[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"32"
    )
        port map (
      I0 => rbg_in(9),
      I1 => is_pixel_joueur,
      I2 => is_mur,
      O => rbg_out(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity HDMI_bd_test_0_0 is
  port (
    is_mur : in STD_LOGIC;
    is_pixel_joueur : in STD_LOGIC;
    rbg_in : in STD_LOGIC_VECTOR ( 23 downto 0 );
    rbg_out : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of HDMI_bd_test_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of HDMI_bd_test_0_0 : entity is "HDMI_bd_test_0_0,test,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of HDMI_bd_test_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of HDMI_bd_test_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of HDMI_bd_test_0_0 : entity is "test,Vivado 2018.2.1";
end HDMI_bd_test_0_0;

architecture STRUCTURE of HDMI_bd_test_0_0 is
begin
U0: entity work.HDMI_bd_test_0_0_test
     port map (
      is_mur => is_mur,
      is_pixel_joueur => is_pixel_joueur,
      rbg_in(23 downto 0) => rbg_in(23 downto 0),
      rbg_out(23 downto 0) => rbg_out(23 downto 0)
    );
end STRUCTURE;
