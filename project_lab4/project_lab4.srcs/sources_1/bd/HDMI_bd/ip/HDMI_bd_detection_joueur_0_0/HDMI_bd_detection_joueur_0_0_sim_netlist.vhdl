-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2.1 (win64) Build 2288692 Thu Jul 26 18:24:02 MDT 2018
-- Date        : Sun Nov 22 20:06:08 2026
-- Host        : pcetu-129 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               u:/Documents/FPGA/Lab4_GIF-4202/project_lab4/project_lab4.srcs/sources_1/bd/HDMI_bd/ip/HDMI_bd_detection_joueur_0_0/HDMI_bd_detection_joueur_0_0_sim_netlist.vhdl
-- Design      : HDMI_bd_detection_joueur_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity HDMI_bd_detection_joueur_0_0_detection_joueur is
  port (
    is_pixel_joueur : out STD_LOGIC;
    rgb_in : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of HDMI_bd_detection_joueur_0_0_detection_joueur : entity is "detection_joueur";
end HDMI_bd_detection_joueur_0_0_detection_joueur;

architecture STRUCTURE of HDMI_bd_detection_joueur_0_0_detection_joueur is
  signal is_pixel_joueur_INST_0_i_1_n_0 : STD_LOGIC;
  signal luminosity : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal \luminosity__0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \luminosity__0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \luminosity__0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \luminosity__0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \luminosity__0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \luminosity__0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \luminosity__0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \luminosity__0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \luminosity__0_carry__0_n_0\ : STD_LOGIC;
  signal \luminosity__0_carry__0_n_1\ : STD_LOGIC;
  signal \luminosity__0_carry__0_n_2\ : STD_LOGIC;
  signal \luminosity__0_carry__0_n_3\ : STD_LOGIC;
  signal \luminosity__0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \luminosity__0_carry_i_1_n_0\ : STD_LOGIC;
  signal \luminosity__0_carry_i_2_n_0\ : STD_LOGIC;
  signal \luminosity__0_carry_i_3_n_0\ : STD_LOGIC;
  signal \luminosity__0_carry_i_4_n_0\ : STD_LOGIC;
  signal \luminosity__0_carry_i_5_n_0\ : STD_LOGIC;
  signal \luminosity__0_carry_i_6_n_0\ : STD_LOGIC;
  signal \luminosity__0_carry_i_7_n_0\ : STD_LOGIC;
  signal \luminosity__0_carry_n_0\ : STD_LOGIC;
  signal \luminosity__0_carry_n_1\ : STD_LOGIC;
  signal \luminosity__0_carry_n_2\ : STD_LOGIC;
  signal \luminosity__0_carry_n_3\ : STD_LOGIC;
  signal \NLW_luminosity__0_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_luminosity__0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_luminosity__0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute HLUTNM : string;
  attribute HLUTNM of \luminosity__0_carry__0_i_1\ : label is "lutpair6";
  attribute HLUTNM of \luminosity__0_carry__0_i_2\ : label is "lutpair5";
  attribute HLUTNM of \luminosity__0_carry__0_i_3\ : label is "lutpair4";
  attribute HLUTNM of \luminosity__0_carry__0_i_4\ : label is "lutpair3";
  attribute HLUTNM of \luminosity__0_carry__0_i_6\ : label is "lutpair6";
  attribute HLUTNM of \luminosity__0_carry__0_i_7\ : label is "lutpair5";
  attribute HLUTNM of \luminosity__0_carry__0_i_8\ : label is "lutpair4";
  attribute HLUTNM of \luminosity__0_carry_i_1\ : label is "lutpair2";
  attribute HLUTNM of \luminosity__0_carry_i_2\ : label is "lutpair1";
  attribute HLUTNM of \luminosity__0_carry_i_3\ : label is "lutpair0";
  attribute HLUTNM of \luminosity__0_carry_i_4\ : label is "lutpair3";
  attribute HLUTNM of \luminosity__0_carry_i_5\ : label is "lutpair2";
  attribute HLUTNM of \luminosity__0_carry_i_6\ : label is "lutpair1";
  attribute HLUTNM of \luminosity__0_carry_i_7\ : label is "lutpair0";
begin
is_pixel_joueur_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000F0F0F7F"
    )
        port map (
      I0 => luminosity(3),
      I1 => luminosity(4),
      I2 => luminosity(7),
      I3 => luminosity(5),
      I4 => luminosity(6),
      I5 => is_pixel_joueur_INST_0_i_1_n_0,
      O => is_pixel_joueur
    );
is_pixel_joueur_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEEEEEEEEEEEEE"
    )
        port map (
      I0 => luminosity(8),
      I1 => luminosity(9),
      I2 => luminosity(7),
      I3 => luminosity(4),
      I4 => luminosity(1),
      I5 => luminosity(2),
      O => is_pixel_joueur_INST_0_i_1_n_0
    );
\luminosity__0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \luminosity__0_carry_n_0\,
      CO(2) => \luminosity__0_carry_n_1\,
      CO(1) => \luminosity__0_carry_n_2\,
      CO(0) => \luminosity__0_carry_n_3\,
      CYINIT => '0',
      DI(3) => \luminosity__0_carry_i_1_n_0\,
      DI(2) => \luminosity__0_carry_i_2_n_0\,
      DI(1) => \luminosity__0_carry_i_3_n_0\,
      DI(0) => '0',
      O(3 downto 1) => luminosity(3 downto 1),
      O(0) => \NLW_luminosity__0_carry_O_UNCONNECTED\(0),
      S(3) => \luminosity__0_carry_i_4_n_0\,
      S(2) => \luminosity__0_carry_i_5_n_0\,
      S(1) => \luminosity__0_carry_i_6_n_0\,
      S(0) => \luminosity__0_carry_i_7_n_0\
    );
\luminosity__0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \luminosity__0_carry_n_0\,
      CO(3) => \luminosity__0_carry__0_n_0\,
      CO(2) => \luminosity__0_carry__0_n_1\,
      CO(1) => \luminosity__0_carry__0_n_2\,
      CO(0) => \luminosity__0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \luminosity__0_carry__0_i_1_n_0\,
      DI(2) => \luminosity__0_carry__0_i_2_n_0\,
      DI(1) => \luminosity__0_carry__0_i_3_n_0\,
      DI(0) => \luminosity__0_carry__0_i_4_n_0\,
      O(3 downto 0) => luminosity(7 downto 4),
      S(3) => \luminosity__0_carry__0_i_5_n_0\,
      S(2) => \luminosity__0_carry__0_i_6_n_0\,
      S(1) => \luminosity__0_carry__0_i_7_n_0\,
      S(0) => \luminosity__0_carry__0_i_8_n_0\
    );
\luminosity__0_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => rgb_in(14),
      I1 => rgb_in(6),
      I2 => rgb_in(22),
      O => \luminosity__0_carry__0_i_1_n_0\
    );
\luminosity__0_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => rgb_in(13),
      I1 => rgb_in(5),
      I2 => rgb_in(21),
      O => \luminosity__0_carry__0_i_2_n_0\
    );
\luminosity__0_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => rgb_in(12),
      I1 => rgb_in(4),
      I2 => rgb_in(20),
      O => \luminosity__0_carry__0_i_3_n_0\
    );
\luminosity__0_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => rgb_in(11),
      I1 => rgb_in(3),
      I2 => rgb_in(19),
      O => \luminosity__0_carry__0_i_4_n_0\
    );
\luminosity__0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \luminosity__0_carry__0_i_1_n_0\,
      I1 => rgb_in(7),
      I2 => rgb_in(15),
      I3 => rgb_in(23),
      O => \luminosity__0_carry__0_i_5_n_0\
    );
\luminosity__0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => rgb_in(14),
      I1 => rgb_in(6),
      I2 => rgb_in(22),
      I3 => \luminosity__0_carry__0_i_2_n_0\,
      O => \luminosity__0_carry__0_i_6_n_0\
    );
\luminosity__0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => rgb_in(13),
      I1 => rgb_in(5),
      I2 => rgb_in(21),
      I3 => \luminosity__0_carry__0_i_3_n_0\,
      O => \luminosity__0_carry__0_i_7_n_0\
    );
\luminosity__0_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => rgb_in(12),
      I1 => rgb_in(4),
      I2 => rgb_in(20),
      I3 => \luminosity__0_carry__0_i_4_n_0\,
      O => \luminosity__0_carry__0_i_8_n_0\
    );
\luminosity__0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \luminosity__0_carry__0_n_0\,
      CO(3 downto 2) => \NLW_luminosity__0_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => luminosity(9),
      CO(0) => \NLW_luminosity__0_carry__1_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_luminosity__0_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => luminosity(8),
      S(3 downto 1) => B"001",
      S(0) => \luminosity__0_carry__1_i_1_n_0\
    );
\luminosity__0_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => rgb_in(15),
      I1 => rgb_in(7),
      I2 => rgb_in(23),
      O => \luminosity__0_carry__1_i_1_n_0\
    );
\luminosity__0_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => rgb_in(10),
      I1 => rgb_in(2),
      I2 => rgb_in(18),
      O => \luminosity__0_carry_i_1_n_0\
    );
\luminosity__0_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => rgb_in(9),
      I1 => rgb_in(1),
      I2 => rgb_in(17),
      O => \luminosity__0_carry_i_2_n_0\
    );
\luminosity__0_carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => rgb_in(8),
      I1 => rgb_in(0),
      I2 => rgb_in(16),
      O => \luminosity__0_carry_i_3_n_0\
    );
\luminosity__0_carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => rgb_in(11),
      I1 => rgb_in(3),
      I2 => rgb_in(19),
      I3 => \luminosity__0_carry_i_1_n_0\,
      O => \luminosity__0_carry_i_4_n_0\
    );
\luminosity__0_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => rgb_in(10),
      I1 => rgb_in(2),
      I2 => rgb_in(18),
      I3 => \luminosity__0_carry_i_2_n_0\,
      O => \luminosity__0_carry_i_5_n_0\
    );
\luminosity__0_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => rgb_in(9),
      I1 => rgb_in(1),
      I2 => rgb_in(17),
      I3 => \luminosity__0_carry_i_3_n_0\,
      O => \luminosity__0_carry_i_6_n_0\
    );
\luminosity__0_carry_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => rgb_in(8),
      I1 => rgb_in(0),
      I2 => rgb_in(16),
      O => \luminosity__0_carry_i_7_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity HDMI_bd_detection_joueur_0_0 is
  port (
    rgb_in : in STD_LOGIC_VECTOR ( 23 downto 0 );
    is_pixel_joueur : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of HDMI_bd_detection_joueur_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of HDMI_bd_detection_joueur_0_0 : entity is "HDMI_bd_detection_joueur_0_0,detection_joueur,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of HDMI_bd_detection_joueur_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of HDMI_bd_detection_joueur_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of HDMI_bd_detection_joueur_0_0 : entity is "detection_joueur,Vivado 2018.2.1";
end HDMI_bd_detection_joueur_0_0;

architecture STRUCTURE of HDMI_bd_detection_joueur_0_0 is
begin
U0: entity work.HDMI_bd_detection_joueur_0_0_detection_joueur
     port map (
      is_pixel_joueur => is_pixel_joueur,
      rgb_in(23 downto 0) => rgb_in(23 downto 0)
    );
end STRUCTURE;
