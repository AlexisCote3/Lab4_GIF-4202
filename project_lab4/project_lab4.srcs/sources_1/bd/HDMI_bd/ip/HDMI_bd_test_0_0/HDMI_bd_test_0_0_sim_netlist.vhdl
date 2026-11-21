-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2.1 (win64) Build 2288692 Thu Jul 26 18:24:02 MDT 2018
-- Date        : Fri Nov 20 19:12:47 2026
-- Host        : pcetu-149 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/juroy185/Documents/project_lab4/project_lab4.srcs/sources_1/bd/HDMI_bd/ip/HDMI_bd_test_0_0/HDMI_bd_test_0_0_sim_netlist.vhdl
-- Design      : HDMI_bd_test_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity HDMI_bd_test_0_0 is
  port (
    is_mur : in STD_LOGIC;
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
\rbg_out[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => is_mur,
      I1 => rbg_in(0),
      O => rbg_out(0)
    );
\rbg_out[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => is_mur,
      I1 => rbg_in(10),
      O => rbg_out(10)
    );
\rbg_out[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => is_mur,
      I1 => rbg_in(11),
      O => rbg_out(11)
    );
\rbg_out[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => is_mur,
      I1 => rbg_in(12),
      O => rbg_out(12)
    );
\rbg_out[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => is_mur,
      I1 => rbg_in(13),
      O => rbg_out(13)
    );
\rbg_out[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => is_mur,
      I1 => rbg_in(14),
      O => rbg_out(14)
    );
\rbg_out[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => is_mur,
      I1 => rbg_in(15),
      O => rbg_out(15)
    );
\rbg_out[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => is_mur,
      I1 => rbg_in(16),
      O => rbg_out(16)
    );
\rbg_out[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => is_mur,
      I1 => rbg_in(17),
      O => rbg_out(17)
    );
\rbg_out[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => is_mur,
      I1 => rbg_in(18),
      O => rbg_out(18)
    );
\rbg_out[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => is_mur,
      I1 => rbg_in(19),
      O => rbg_out(19)
    );
\rbg_out[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => is_mur,
      I1 => rbg_in(1),
      O => rbg_out(1)
    );
\rbg_out[20]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => is_mur,
      I1 => rbg_in(20),
      O => rbg_out(20)
    );
\rbg_out[21]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => is_mur,
      I1 => rbg_in(21),
      O => rbg_out(21)
    );
\rbg_out[22]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => is_mur,
      I1 => rbg_in(22),
      O => rbg_out(22)
    );
\rbg_out[23]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => is_mur,
      I1 => rbg_in(23),
      O => rbg_out(23)
    );
\rbg_out[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => is_mur,
      I1 => rbg_in(2),
      O => rbg_out(2)
    );
\rbg_out[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => is_mur,
      I1 => rbg_in(3),
      O => rbg_out(3)
    );
\rbg_out[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => is_mur,
      I1 => rbg_in(4),
      O => rbg_out(4)
    );
\rbg_out[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => is_mur,
      I1 => rbg_in(5),
      O => rbg_out(5)
    );
\rbg_out[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => is_mur,
      I1 => rbg_in(6),
      O => rbg_out(6)
    );
\rbg_out[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => is_mur,
      I1 => rbg_in(7),
      O => rbg_out(7)
    );
\rbg_out[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => is_mur,
      I1 => rbg_in(8),
      O => rbg_out(8)
    );
\rbg_out[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => is_mur,
      I1 => rbg_in(9),
      O => rbg_out(9)
    );
end STRUCTURE;
