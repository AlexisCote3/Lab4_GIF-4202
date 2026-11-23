-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2.1 (win64) Build 2288692 Thu Jul 26 18:24:02 MDT 2018
-- Date        : Sun Nov 22 20:53:10 2026
-- Host        : pcetu-129 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               u:/Documents/FPGA/Lab4_GIF-4202/Le_Mur_V2/Le_Mur_V2.srcs/sources_1/bd/HDMI_bd/ip/HDMI_bd_FSM_0_0/HDMI_bd_FSM_0_0_sim_netlist.vhdl
-- Design      : HDMI_bd_FSM_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity HDMI_bd_FSM_0_0_game_state is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    inc_score_sig : out STD_LOGIC;
    reset_score_sig : out STD_LOGIC;
    \diff_out[1]\ : out STD_LOGIC;
    \score_courant_sig_reg[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \record_perso_sig_reg[0]\ : out STD_LOGIC;
    mode_ui : out STD_LOGIC_VECTOR ( 2 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    run : in STD_LOGIC;
    \sec_reg_reg[3]\ : in STD_LOGIC;
    quit : in STD_LOGIC;
    \sec_reg_reg[2]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of HDMI_bd_FSM_0_0_game_state : entity is "game_state";
end HDMI_bd_FSM_0_0_game_state;

architecture STRUCTURE of HDMI_bd_FSM_0_0_game_state is
  signal \FSM_sequential_etat_courant[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_etat_courant[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_etat_courant[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_etat_courant[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_etat_courant[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_etat_courant[2]_i_2_n_0\ : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal diff : STD_LOGIC;
  signal \diff[1]_i_1_n_0\ : STD_LOGIC;
  signal \^diff_out[1]\ : STD_LOGIC;
  signal \etat_courant__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \etat_courant__0\ : signal is "yes";
  signal inc_score_i_1_n_0 : STD_LOGIC;
  signal \^inc_score_sig\ : STD_LOGIC;
  signal \mode_ui[1]_i_1_n_0\ : STD_LOGIC;
  signal \mode_ui[2]_i_1_n_0\ : STD_LOGIC;
  signal new_round_i_1_n_0 : STD_LOGIC;
  signal new_round_i_2_n_0 : STD_LOGIC;
  signal play_enable_i_1_n_0 : STD_LOGIC;
  signal \^reset_score_sig\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_etat_courant[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_etat_courant[1]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_etat_courant_reg[0]\ : label is "play_start:001,round_init:010,pause_state:100,game_over:110,wall_passed:101,play:011,menu:000";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_etat_courant_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_etat_courant_reg[1]\ : label is "play_start:001,round_init:010,pause_state:100,game_over:110,wall_passed:101,play:011,menu:000";
  attribute KEEP of \FSM_sequential_etat_courant_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_etat_courant_reg[2]\ : label is "play_start:001,round_init:010,pause_state:100,game_over:110,wall_passed:101,play:011,menu:000";
  attribute KEEP of \FSM_sequential_etat_courant_reg[2]\ : label is "yes";
  attribute SOFT_HLUTNM of \record_perso_sig[3]_i_7\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \score_courant_sig[3]_i_1\ : label is "soft_lutpair1";
begin
  SR(0) <= \^sr\(0);
  \diff_out[1]\ <= \^diff_out[1]\;
  inc_score_sig <= \^inc_score_sig\;
  reset_score_sig <= \^reset_score_sig\;
\FSM_sequential_etat_courant[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \FSM_sequential_etat_courant[0]_i_2_n_0\,
      I1 => \FSM_sequential_etat_courant[2]_i_2_n_0\,
      I2 => \etat_courant__0\(0),
      O => \FSM_sequential_etat_courant[0]_i_1_n_0\
    );
\FSM_sequential_etat_courant[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000800080F0F3F3F"
    )
        port map (
      I0 => run,
      I1 => \etat_courant__0\(1),
      I2 => \etat_courant__0\(2),
      I3 => \sec_reg_reg[3]\,
      I4 => quit,
      I5 => \etat_courant__0\(0),
      O => \FSM_sequential_etat_courant[0]_i_2_n_0\
    );
\FSM_sequential_etat_courant[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \FSM_sequential_etat_courant[1]_i_2_n_0\,
      I1 => \FSM_sequential_etat_courant[2]_i_2_n_0\,
      I2 => \etat_courant__0\(1),
      O => \FSM_sequential_etat_courant[1]_i_1_n_0\
    );
\FSM_sequential_etat_courant[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"51115111CCCCEEEE"
    )
        port map (
      I0 => \etat_courant__0\(2),
      I1 => \etat_courant__0\(0),
      I2 => run,
      I3 => \sec_reg_reg[3]\,
      I4 => quit,
      I5 => \etat_courant__0\(1),
      O => \FSM_sequential_etat_courant[1]_i_2_n_0\
    );
\FSM_sequential_etat_courant[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40FF4000"
    )
        port map (
      I0 => \etat_courant__0\(2),
      I1 => \etat_courant__0\(1),
      I2 => \etat_courant__0\(0),
      I3 => \FSM_sequential_etat_courant[2]_i_2_n_0\,
      I4 => \etat_courant__0\(2),
      O => \FSM_sequential_etat_courant[2]_i_1_n_0\
    );
\FSM_sequential_etat_courant[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F707FFFFFF0FFCCC"
    )
        port map (
      I0 => \sec_reg_reg[2]\,
      I1 => run,
      I2 => \etat_courant__0\(2),
      I3 => quit,
      I4 => \etat_courant__0\(1),
      I5 => \etat_courant__0\(0),
      O => \FSM_sequential_etat_courant[2]_i_2_n_0\
    );
\FSM_sequential_etat_courant_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \FSM_sequential_etat_courant[0]_i_1_n_0\,
      Q => \etat_courant__0\(0)
    );
\FSM_sequential_etat_courant_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \FSM_sequential_etat_courant[1]_i_1_n_0\,
      Q => \etat_courant__0\(1)
    );
\FSM_sequential_etat_courant_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \FSM_sequential_etat_courant[2]_i_1_n_0\,
      Q => \etat_courant__0\(2)
    );
\diff[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF04"
    )
        port map (
      I0 => \etat_courant__0\(2),
      I1 => \etat_courant__0\(0),
      I2 => \etat_courant__0\(1),
      I3 => \^diff_out[1]\,
      O => \diff[1]_i_1_n_0\
    );
\diff_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \diff[1]_i_1_n_0\,
      Q => \^diff_out[1]\
    );
inc_score_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \etat_courant__0\(1),
      I1 => \etat_courant__0\(0),
      I2 => \etat_courant__0\(2),
      O => inc_score_i_1_n_0
    );
inc_score_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => new_round_i_1_n_0,
      CLR => reset,
      D => inc_score_i_1_n_0,
      Q => \^inc_score_sig\
    );
\mode_ui[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \etat_courant__0\(2),
      I1 => \etat_courant__0\(1),
      O => \mode_ui[1]_i_1_n_0\
    );
\mode_ui[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \etat_courant__0\(2),
      I1 => \etat_courant__0\(0),
      O => \mode_ui[2]_i_1_n_0\
    );
\mode_ui_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => new_round_i_1_n_0,
      D => new_round_i_2_n_0,
      PRE => reset,
      Q => mode_ui(0)
    );
\mode_ui_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => new_round_i_1_n_0,
      D => \mode_ui[1]_i_1_n_0\,
      PRE => reset,
      Q => mode_ui(1)
    );
\mode_ui_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => new_round_i_1_n_0,
      D => \mode_ui[2]_i_1_n_0\,
      PRE => reset,
      Q => mode_ui(2)
    );
new_round_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \etat_courant__0\(2),
      I1 => \etat_courant__0\(1),
      I2 => \etat_courant__0\(0),
      O => new_round_i_1_n_0
    );
new_round_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \etat_courant__0\(0),
      I1 => \etat_courant__0\(1),
      O => new_round_i_2_n_0
    );
new_round_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => new_round_i_1_n_0,
      CLR => reset,
      D => new_round_i_2_n_0,
      Q => \^sr\(0)
    );
play_enable_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"32"
    )
        port map (
      I0 => \etat_courant__0\(0),
      I1 => \etat_courant__0\(2),
      I2 => \etat_courant__0\(1),
      O => play_enable_i_1_n_0
    );
play_enable_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => new_round_i_1_n_0,
      CLR => reset,
      D => play_enable_i_1_n_0,
      Q => E(0)
    );
\record_perso_sig[3]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^inc_score_sig\,
      I1 => \^reset_score_sig\,
      O => \record_perso_sig_reg[0]\
    );
reset_score_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \etat_courant__0\(1),
      I1 => \etat_courant__0\(0),
      I2 => \etat_courant__0\(2),
      O => diff
    );
reset_score_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => new_round_i_1_n_0,
      CLR => reset,
      D => diff,
      Q => \^reset_score_sig\
    );
\score_courant_sig[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^reset_score_sig\,
      I1 => \^inc_score_sig\,
      O => \score_courant_sig_reg[3]\(0)
    );
\sec_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => \^diff_out[1]\,
      I1 => \^sr\(0),
      I2 => Q(0),
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity HDMI_bd_FSM_0_0_score is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \record_perso[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    reset_score_sig : in STD_LOGIC;
    inc_score_reg : in STD_LOGIC;
    inc_score_sig : in STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of HDMI_bd_FSM_0_0_score : entity is "score";
end HDMI_bd_FSM_0_0_score;

architecture STRUCTURE of HDMI_bd_FSM_0_0_score is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal plusOp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^record_perso[3]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal record_perso_sig : STD_LOGIC;
  signal \record_perso_sig[3]_i_3_n_0\ : STD_LOGIC;
  signal \record_perso_sig[3]_i_4_n_0\ : STD_LOGIC;
  signal \record_perso_sig[3]_i_5_n_0\ : STD_LOGIC;
  signal \record_perso_sig[3]_i_6_n_0\ : STD_LOGIC;
  signal \record_perso_sig[3]_i_8_n_0\ : STD_LOGIC;
  signal \score_courant_sig[0]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \record_perso_sig[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \record_perso_sig[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \record_perso_sig[3]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \record_perso_sig[3]_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \record_perso_sig[3]_i_6\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \score_courant_sig[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \score_courant_sig[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \score_courant_sig[3]_i_2\ : label is "soft_lutpair3";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  \record_perso[3]\(3 downto 0) <= \^record_perso[3]\(3 downto 0);
\record_perso_sig[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => plusOp(0)
    );
\record_perso_sig[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => plusOp(1)
    );
\record_perso_sig[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => plusOp(2)
    );
\record_perso_sig[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEFEEEFEEEEE"
    )
        port map (
      I0 => \record_perso_sig[3]_i_3_n_0\,
      I1 => \record_perso_sig[3]_i_4_n_0\,
      I2 => \record_perso_sig[3]_i_5_n_0\,
      I3 => \^record_perso[3]\(1),
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => record_perso_sig
    );
\record_perso_sig[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      O => plusOp(3)
    );
\record_perso_sig[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0900BB4D00000000"
    )
        port map (
      I0 => \record_perso_sig[3]_i_6_n_0\,
      I1 => \^q\(2),
      I2 => \^record_perso[3]\(2),
      I3 => \^q\(3),
      I4 => \^record_perso[3]\(3),
      I5 => inc_score_reg,
      O => \record_perso_sig[3]_i_3_n_0\
    );
\record_perso_sig[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000008A"
    )
        port map (
      I0 => \record_perso_sig[3]_i_8_n_0\,
      I1 => \^q\(3),
      I2 => \^record_perso[3]\(3),
      I3 => \^record_perso[3]\(0),
      I4 => \^q\(0),
      O => \record_perso_sig[3]_i_4_n_0\
    );
\record_perso_sig[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000B0BB00000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^record_perso[3]\(3),
      I2 => \^q\(2),
      I3 => \^record_perso[3]\(2),
      I4 => reset_score_sig,
      I5 => inc_score_sig,
      O => \record_perso_sig[3]_i_5_n_0\
    );
\record_perso_sig[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \record_perso_sig[3]_i_6_n_0\
    );
\record_perso_sig[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B000B0000000B0"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^record_perso[3]\(2),
      I2 => inc_score_sig,
      I3 => reset_score_sig,
      I4 => \^record_perso[3]\(1),
      I5 => \^q\(1),
      O => \record_perso_sig[3]_i_8_n_0\
    );
\record_perso_sig_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => record_perso_sig,
      CLR => reset,
      D => plusOp(0),
      Q => \^record_perso[3]\(0)
    );
\record_perso_sig_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => record_perso_sig,
      CLR => reset,
      D => plusOp(1),
      Q => \^record_perso[3]\(1)
    );
\record_perso_sig_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => record_perso_sig,
      CLR => reset,
      D => plusOp(2),
      Q => \^record_perso[3]\(2)
    );
\record_perso_sig_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => record_perso_sig,
      CLR => reset,
      D => plusOp(3),
      Q => \^record_perso[3]\(3)
    );
\score_courant_sig[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      I1 => reset_score_sig,
      O => \score_courant_sig[0]_i_1_n_0\
    );
\score_courant_sig[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => reset_score_sig,
      O => p_0_in(1)
    );
\score_courant_sig[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => reset_score_sig,
      O => p_0_in(2)
    );
\score_courant_sig[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => reset_score_sig,
      O => p_0_in(3)
    );
\score_courant_sig_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => \score_courant_sig[0]_i_1_n_0\,
      Q => \^q\(0)
    );
\score_courant_sig_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => p_0_in(1),
      Q => \^q\(1)
    );
\score_courant_sig_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => p_0_in(2),
      Q => \^q\(2)
    );
\score_courant_sig_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => p_0_in(3),
      Q => \^q\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity HDMI_bd_FSM_0_0_sec_counter is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_sequential_etat_courant_reg[0]\ : out STD_LOGIC;
    \FSM_sequential_etat_courant_reg[0]_0\ : out STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    \diff_reg[1]\ : in STD_LOGIC;
    q_pass : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of HDMI_bd_FSM_0_0_sec_counter : entity is "sec_counter";
end HDMI_bd_FSM_0_0_sec_counter;

architecture STRUCTURE of HDMI_bd_FSM_0_0_sec_counter is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal clk_reg : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal \clk_reg0_carry__0_n_0\ : STD_LOGIC;
  signal \clk_reg0_carry__0_n_1\ : STD_LOGIC;
  signal \clk_reg0_carry__0_n_2\ : STD_LOGIC;
  signal \clk_reg0_carry__0_n_3\ : STD_LOGIC;
  signal \clk_reg0_carry__1_n_0\ : STD_LOGIC;
  signal \clk_reg0_carry__1_n_1\ : STD_LOGIC;
  signal \clk_reg0_carry__1_n_2\ : STD_LOGIC;
  signal \clk_reg0_carry__1_n_3\ : STD_LOGIC;
  signal \clk_reg0_carry__2_n_0\ : STD_LOGIC;
  signal \clk_reg0_carry__2_n_1\ : STD_LOGIC;
  signal \clk_reg0_carry__2_n_2\ : STD_LOGIC;
  signal \clk_reg0_carry__2_n_3\ : STD_LOGIC;
  signal \clk_reg0_carry__3_n_0\ : STD_LOGIC;
  signal \clk_reg0_carry__3_n_1\ : STD_LOGIC;
  signal \clk_reg0_carry__3_n_2\ : STD_LOGIC;
  signal \clk_reg0_carry__3_n_3\ : STD_LOGIC;
  signal \clk_reg0_carry__4_n_0\ : STD_LOGIC;
  signal \clk_reg0_carry__4_n_1\ : STD_LOGIC;
  signal \clk_reg0_carry__4_n_2\ : STD_LOGIC;
  signal \clk_reg0_carry__4_n_3\ : STD_LOGIC;
  signal \clk_reg0_carry__5_n_2\ : STD_LOGIC;
  signal \clk_reg0_carry__5_n_3\ : STD_LOGIC;
  signal clk_reg0_carry_n_0 : STD_LOGIC;
  signal clk_reg0_carry_n_1 : STD_LOGIC;
  signal clk_reg0_carry_n_2 : STD_LOGIC;
  signal clk_reg0_carry_n_3 : STD_LOGIC;
  signal clk_reg_0 : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal data0 : STD_LOGIC_VECTOR ( 27 downto 1 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \sec_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \sec_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \sec_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \sec_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \sec_reg[3]_i_6_n_0\ : STD_LOGIC;
  signal \sec_reg[3]_i_7_n_0\ : STD_LOGIC;
  signal \sec_reg[3]_i_8_n_0\ : STD_LOGIC;
  signal \sec_reg[3]_i_9_n_0\ : STD_LOGIC;
  signal \NLW_clk_reg0_carry__5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_clk_reg0_carry__5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_etat_courant[1]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_sequential_etat_courant[2]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \clk_reg[0]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \clk_reg[10]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \clk_reg[11]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \clk_reg[12]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \clk_reg[13]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \clk_reg[14]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \clk_reg[15]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \clk_reg[16]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \clk_reg[17]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \clk_reg[18]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \clk_reg[19]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \clk_reg[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \clk_reg[20]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \clk_reg[21]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \clk_reg[22]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \clk_reg[23]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \clk_reg[24]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \clk_reg[25]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \clk_reg[26]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \clk_reg[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \clk_reg[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \clk_reg[4]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \clk_reg[5]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \clk_reg[6]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \clk_reg[7]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \clk_reg[8]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \clk_reg[9]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \sec_reg[1]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \sec_reg[2]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \sec_reg[3]_i_9\ : label is "soft_lutpair20";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\FSM_sequential_etat_courant[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => q_pass,
      O => \FSM_sequential_etat_courant_reg[0]\
    );
\FSM_sequential_etat_courant[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      O => \FSM_sequential_etat_courant_reg[0]_0\
    );
clk_reg0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => clk_reg0_carry_n_0,
      CO(2) => clk_reg0_carry_n_1,
      CO(1) => clk_reg0_carry_n_2,
      CO(0) => clk_reg0_carry_n_3,
      CYINIT => clk_reg(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => clk_reg(4 downto 1)
    );
\clk_reg0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => clk_reg0_carry_n_0,
      CO(3) => \clk_reg0_carry__0_n_0\,
      CO(2) => \clk_reg0_carry__0_n_1\,
      CO(1) => \clk_reg0_carry__0_n_2\,
      CO(0) => \clk_reg0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => clk_reg(8 downto 5)
    );
\clk_reg0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_reg0_carry__0_n_0\,
      CO(3) => \clk_reg0_carry__1_n_0\,
      CO(2) => \clk_reg0_carry__1_n_1\,
      CO(1) => \clk_reg0_carry__1_n_2\,
      CO(0) => \clk_reg0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => clk_reg(12 downto 9)
    );
\clk_reg0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_reg0_carry__1_n_0\,
      CO(3) => \clk_reg0_carry__2_n_0\,
      CO(2) => \clk_reg0_carry__2_n_1\,
      CO(1) => \clk_reg0_carry__2_n_2\,
      CO(0) => \clk_reg0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3 downto 0) => clk_reg(16 downto 13)
    );
\clk_reg0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_reg0_carry__2_n_0\,
      CO(3) => \clk_reg0_carry__3_n_0\,
      CO(2) => \clk_reg0_carry__3_n_1\,
      CO(1) => \clk_reg0_carry__3_n_2\,
      CO(0) => \clk_reg0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3 downto 0) => clk_reg(20 downto 17)
    );
\clk_reg0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_reg0_carry__3_n_0\,
      CO(3) => \clk_reg0_carry__4_n_0\,
      CO(2) => \clk_reg0_carry__4_n_1\,
      CO(1) => \clk_reg0_carry__4_n_2\,
      CO(0) => \clk_reg0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(24 downto 21),
      S(3 downto 0) => clk_reg(24 downto 21)
    );
\clk_reg0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \clk_reg0_carry__4_n_0\,
      CO(3 downto 2) => \NLW_clk_reg0_carry__5_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \clk_reg0_carry__5_n_2\,
      CO(0) => \clk_reg0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_clk_reg0_carry__5_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(27 downto 25),
      S(3) => '0',
      S(2 downto 0) => clk_reg(27 downto 25)
    );
\clk_reg[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => clk_reg(0),
      O => clk_reg_0(0)
    );
\clk_reg[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \sec_reg[3]_i_5_n_0\,
      I1 => \sec_reg[3]_i_4_n_0\,
      I2 => \sec_reg[3]_i_3_n_0\,
      I3 => data0(10),
      O => clk_reg_0(10)
    );
\clk_reg[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \sec_reg[3]_i_5_n_0\,
      I1 => \sec_reg[3]_i_4_n_0\,
      I2 => \sec_reg[3]_i_3_n_0\,
      I3 => data0(11),
      O => clk_reg_0(11)
    );
\clk_reg[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \sec_reg[3]_i_5_n_0\,
      I1 => \sec_reg[3]_i_4_n_0\,
      I2 => \sec_reg[3]_i_3_n_0\,
      I3 => data0(12),
      O => clk_reg_0(12)
    );
\clk_reg[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \sec_reg[3]_i_5_n_0\,
      I1 => \sec_reg[3]_i_4_n_0\,
      I2 => \sec_reg[3]_i_3_n_0\,
      I3 => data0(13),
      O => clk_reg_0(13)
    );
\clk_reg[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \sec_reg[3]_i_5_n_0\,
      I1 => \sec_reg[3]_i_4_n_0\,
      I2 => \sec_reg[3]_i_3_n_0\,
      I3 => data0(14),
      O => clk_reg_0(14)
    );
\clk_reg[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \sec_reg[3]_i_5_n_0\,
      I1 => \sec_reg[3]_i_4_n_0\,
      I2 => \sec_reg[3]_i_3_n_0\,
      I3 => data0(15),
      O => clk_reg_0(15)
    );
\clk_reg[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \sec_reg[3]_i_5_n_0\,
      I1 => \sec_reg[3]_i_4_n_0\,
      I2 => \sec_reg[3]_i_3_n_0\,
      I3 => data0(16),
      O => clk_reg_0(16)
    );
\clk_reg[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \sec_reg[3]_i_5_n_0\,
      I1 => \sec_reg[3]_i_4_n_0\,
      I2 => \sec_reg[3]_i_3_n_0\,
      I3 => data0(17),
      O => clk_reg_0(17)
    );
\clk_reg[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \sec_reg[3]_i_5_n_0\,
      I1 => \sec_reg[3]_i_4_n_0\,
      I2 => \sec_reg[3]_i_3_n_0\,
      I3 => data0(18),
      O => clk_reg_0(18)
    );
\clk_reg[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \sec_reg[3]_i_5_n_0\,
      I1 => \sec_reg[3]_i_4_n_0\,
      I2 => \sec_reg[3]_i_3_n_0\,
      I3 => data0(19),
      O => clk_reg_0(19)
    );
\clk_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \sec_reg[3]_i_5_n_0\,
      I1 => \sec_reg[3]_i_4_n_0\,
      I2 => \sec_reg[3]_i_3_n_0\,
      I3 => data0(1),
      O => clk_reg_0(1)
    );
\clk_reg[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \sec_reg[3]_i_5_n_0\,
      I1 => \sec_reg[3]_i_4_n_0\,
      I2 => \sec_reg[3]_i_3_n_0\,
      I3 => data0(20),
      O => clk_reg_0(20)
    );
\clk_reg[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \sec_reg[3]_i_5_n_0\,
      I1 => \sec_reg[3]_i_4_n_0\,
      I2 => \sec_reg[3]_i_3_n_0\,
      I3 => data0(21),
      O => clk_reg_0(21)
    );
\clk_reg[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \sec_reg[3]_i_5_n_0\,
      I1 => \sec_reg[3]_i_4_n_0\,
      I2 => \sec_reg[3]_i_3_n_0\,
      I3 => data0(22),
      O => clk_reg_0(22)
    );
\clk_reg[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \sec_reg[3]_i_5_n_0\,
      I1 => \sec_reg[3]_i_4_n_0\,
      I2 => \sec_reg[3]_i_3_n_0\,
      I3 => data0(23),
      O => clk_reg_0(23)
    );
\clk_reg[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \sec_reg[3]_i_5_n_0\,
      I1 => \sec_reg[3]_i_4_n_0\,
      I2 => \sec_reg[3]_i_3_n_0\,
      I3 => data0(24),
      O => clk_reg_0(24)
    );
\clk_reg[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \sec_reg[3]_i_5_n_0\,
      I1 => \sec_reg[3]_i_4_n_0\,
      I2 => \sec_reg[3]_i_3_n_0\,
      I3 => data0(25),
      O => clk_reg_0(25)
    );
\clk_reg[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \sec_reg[3]_i_5_n_0\,
      I1 => \sec_reg[3]_i_4_n_0\,
      I2 => \sec_reg[3]_i_3_n_0\,
      I3 => data0(26),
      O => clk_reg_0(26)
    );
\clk_reg[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \sec_reg[3]_i_5_n_0\,
      I1 => \sec_reg[3]_i_4_n_0\,
      I2 => \sec_reg[3]_i_3_n_0\,
      I3 => data0(27),
      O => clk_reg_0(27)
    );
\clk_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \sec_reg[3]_i_5_n_0\,
      I1 => \sec_reg[3]_i_4_n_0\,
      I2 => \sec_reg[3]_i_3_n_0\,
      I3 => data0(2),
      O => clk_reg_0(2)
    );
\clk_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \sec_reg[3]_i_5_n_0\,
      I1 => \sec_reg[3]_i_4_n_0\,
      I2 => \sec_reg[3]_i_3_n_0\,
      I3 => data0(3),
      O => clk_reg_0(3)
    );
\clk_reg[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \sec_reg[3]_i_5_n_0\,
      I1 => \sec_reg[3]_i_4_n_0\,
      I2 => \sec_reg[3]_i_3_n_0\,
      I3 => data0(4),
      O => clk_reg_0(4)
    );
\clk_reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \sec_reg[3]_i_5_n_0\,
      I1 => \sec_reg[3]_i_4_n_0\,
      I2 => \sec_reg[3]_i_3_n_0\,
      I3 => data0(5),
      O => clk_reg_0(5)
    );
\clk_reg[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \sec_reg[3]_i_5_n_0\,
      I1 => \sec_reg[3]_i_4_n_0\,
      I2 => \sec_reg[3]_i_3_n_0\,
      I3 => data0(6),
      O => clk_reg_0(6)
    );
\clk_reg[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \sec_reg[3]_i_5_n_0\,
      I1 => \sec_reg[3]_i_4_n_0\,
      I2 => \sec_reg[3]_i_3_n_0\,
      I3 => data0(7),
      O => clk_reg_0(7)
    );
\clk_reg[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \sec_reg[3]_i_5_n_0\,
      I1 => \sec_reg[3]_i_4_n_0\,
      I2 => \sec_reg[3]_i_3_n_0\,
      I3 => data0(8),
      O => clk_reg_0(8)
    );
\clk_reg[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \sec_reg[3]_i_5_n_0\,
      I1 => \sec_reg[3]_i_4_n_0\,
      I2 => \sec_reg[3]_i_3_n_0\,
      I3 => data0(9),
      O => clk_reg_0(9)
    );
\clk_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => clk_reg_0(0),
      Q => clk_reg(0),
      R => SR(0)
    );
\clk_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => clk_reg_0(10),
      Q => clk_reg(10),
      R => SR(0)
    );
\clk_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => clk_reg_0(11),
      Q => clk_reg(11),
      R => SR(0)
    );
\clk_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => clk_reg_0(12),
      Q => clk_reg(12),
      R => SR(0)
    );
\clk_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => clk_reg_0(13),
      Q => clk_reg(13),
      R => SR(0)
    );
\clk_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => clk_reg_0(14),
      Q => clk_reg(14),
      R => SR(0)
    );
\clk_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => clk_reg_0(15),
      Q => clk_reg(15),
      R => SR(0)
    );
\clk_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => clk_reg_0(16),
      Q => clk_reg(16),
      R => SR(0)
    );
\clk_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => clk_reg_0(17),
      Q => clk_reg(17),
      R => SR(0)
    );
\clk_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => clk_reg_0(18),
      Q => clk_reg(18),
      R => SR(0)
    );
\clk_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => clk_reg_0(19),
      Q => clk_reg(19),
      R => SR(0)
    );
\clk_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => clk_reg_0(1),
      Q => clk_reg(1),
      R => SR(0)
    );
\clk_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => clk_reg_0(20),
      Q => clk_reg(20),
      R => SR(0)
    );
\clk_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => clk_reg_0(21),
      Q => clk_reg(21),
      R => SR(0)
    );
\clk_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => clk_reg_0(22),
      Q => clk_reg(22),
      R => SR(0)
    );
\clk_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => clk_reg_0(23),
      Q => clk_reg(23),
      R => SR(0)
    );
\clk_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => clk_reg_0(24),
      Q => clk_reg(24),
      R => SR(0)
    );
\clk_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => clk_reg_0(25),
      Q => clk_reg(25),
      R => SR(0)
    );
\clk_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => clk_reg_0(26),
      Q => clk_reg(26),
      R => SR(0)
    );
\clk_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => clk_reg_0(27),
      Q => clk_reg(27),
      R => SR(0)
    );
\clk_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => clk_reg_0(2),
      Q => clk_reg(2),
      R => SR(0)
    );
\clk_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => clk_reg_0(3),
      Q => clk_reg(3),
      R => SR(0)
    );
\clk_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => clk_reg_0(4),
      Q => clk_reg(4),
      R => SR(0)
    );
\clk_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => clk_reg_0(5),
      Q => clk_reg(5),
      R => SR(0)
    );
\clk_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => clk_reg_0(6),
      Q => clk_reg(6),
      R => SR(0)
    );
\clk_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => clk_reg_0(7),
      Q => clk_reg(7),
      R => SR(0)
    );
\clk_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => clk_reg_0(8),
      Q => clk_reg(8),
      R => SR(0)
    );
\clk_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => E(0),
      D => clk_reg_0(9),
      Q => clk_reg(9),
      R => SR(0)
    );
\sec_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EB"
    )
        port map (
      I0 => SR(0),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => \p_0_in__0\(1)
    );
\sec_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5401"
    )
        port map (
      I0 => SR(0),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      O => \p_0_in__0\(2)
    );
\sec_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0100"
    )
        port map (
      I0 => \sec_reg[3]_i_3_n_0\,
      I1 => \sec_reg[3]_i_4_n_0\,
      I2 => \sec_reg[3]_i_5_n_0\,
      I3 => E(0),
      I4 => SR(0),
      O => \sec_reg[3]_i_1_n_0\
    );
\sec_reg[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFAAA9AAA9"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \diff_reg[1]\,
      I5 => SR(0),
      O => \p_0_in__0\(3)
    );
\sec_reg[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF7"
    )
        port map (
      I0 => clk_reg(14),
      I1 => clk_reg(15),
      I2 => clk_reg(12),
      I3 => clk_reg(13),
      I4 => \sec_reg[3]_i_6_n_0\,
      O => \sec_reg[3]_i_3_n_0\
    );
\sec_reg[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => clk_reg(6),
      I1 => clk_reg(7),
      I2 => clk_reg(4),
      I3 => clk_reg(5),
      I4 => \sec_reg[3]_i_7_n_0\,
      O => \sec_reg[3]_i_4_n_0\
    );
\sec_reg[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFBFFFFFF"
    )
        port map (
      I0 => \sec_reg[3]_i_8_n_0\,
      I1 => clk_reg(21),
      I2 => clk_reg(20),
      I3 => clk_reg(23),
      I4 => clk_reg(22),
      I5 => \sec_reg[3]_i_9_n_0\,
      O => \sec_reg[3]_i_5_n_0\
    );
\sec_reg[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => clk_reg(17),
      I1 => clk_reg(16),
      I2 => clk_reg(19),
      I3 => clk_reg(18),
      O => \sec_reg[3]_i_6_n_0\
    );
\sec_reg[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => clk_reg(8),
      I1 => clk_reg(9),
      I2 => clk_reg(11),
      I3 => clk_reg(10),
      O => \sec_reg[3]_i_7_n_0\
    );
\sec_reg[3]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => clk_reg(25),
      I1 => clk_reg(24),
      I2 => clk_reg(27),
      I3 => clk_reg(26),
      O => \sec_reg[3]_i_8_n_0\
    );
\sec_reg[3]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => clk_reg(1),
      I1 => clk_reg(0),
      I2 => clk_reg(3),
      I3 => clk_reg(2),
      O => \sec_reg[3]_i_9_n_0\
    );
\sec_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sec_reg[3]_i_1_n_0\,
      D => D(0),
      Q => \^q\(0),
      R => '0'
    );
\sec_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sec_reg[3]_i_1_n_0\,
      D => \p_0_in__0\(1),
      Q => \^q\(1),
      R => '0'
    );
\sec_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sec_reg[3]_i_1_n_0\,
      D => \p_0_in__0\(2),
      Q => \^q\(2),
      R => '0'
    );
\sec_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \sec_reg[3]_i_1_n_0\,
      D => \p_0_in__0\(3),
      Q => \^q\(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity HDMI_bd_FSM_0_0_FSM is
  port (
    score_courant : out STD_LOGIC_VECTOR ( 3 downto 0 );
    new_round : out STD_LOGIC;
    mode_ui : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sec : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \diff_out[1]\ : out STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    run : in STD_LOGIC;
    quit : in STD_LOGIC;
    q_pass : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of HDMI_bd_FSM_0_0_FSM : entity is "FSM";
end HDMI_bd_FSM_0_0_FSM;

architecture STRUCTURE of HDMI_bd_FSM_0_0_FSM is
  signal \^diff_out[1]\ : STD_LOGIC;
  signal inc_score_sig : STD_LOGIC;
  signal \^new_round\ : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal play_enable_sig : STD_LOGIC;
  signal reset_score_sig : STD_LOGIC;
  signal \^sec\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal u_game_state_n_5 : STD_LOGIC;
  signal u_game_state_n_7 : STD_LOGIC;
  signal u_sec_counter_n_4 : STD_LOGIC;
  signal u_sec_counter_n_5 : STD_LOGIC;
begin
  \diff_out[1]\ <= \^diff_out[1]\;
  new_round <= \^new_round\;
  sec(3 downto 0) <= \^sec\(3 downto 0);
u_game_state: entity work.HDMI_bd_FSM_0_0_game_state
     port map (
      D(0) => \p_0_in__0\(0),
      E(0) => play_enable_sig,
      Q(0) => \^sec\(0),
      SR(0) => \^new_round\,
      clk => clk,
      \diff_out[1]\ => \^diff_out[1]\,
      inc_score_sig => inc_score_sig,
      mode_ui(2 downto 0) => mode_ui(2 downto 0),
      quit => quit,
      \record_perso_sig_reg[0]\ => u_game_state_n_7,
      reset => reset,
      reset_score_sig => reset_score_sig,
      run => run,
      \score_courant_sig_reg[3]\(0) => u_game_state_n_5,
      \sec_reg_reg[2]\ => u_sec_counter_n_5,
      \sec_reg_reg[3]\ => u_sec_counter_n_4
    );
u_score: entity work.HDMI_bd_FSM_0_0_score
     port map (
      E(0) => u_game_state_n_5,
      Q(3 downto 0) => score_courant(3 downto 0),
      clk => clk,
      inc_score_reg => u_game_state_n_7,
      inc_score_sig => inc_score_sig,
      \record_perso[3]\(3 downto 0) => Q(3 downto 0),
      reset => reset,
      reset_score_sig => reset_score_sig
    );
u_sec_counter: entity work.HDMI_bd_FSM_0_0_sec_counter
     port map (
      D(0) => \p_0_in__0\(0),
      E(0) => play_enable_sig,
      \FSM_sequential_etat_courant_reg[0]\ => u_sec_counter_n_4,
      \FSM_sequential_etat_courant_reg[0]_0\ => u_sec_counter_n_5,
      Q(3 downto 0) => \^sec\(3 downto 0),
      SR(0) => \^new_round\,
      clk => clk,
      \diff_reg[1]\ => \^diff_out[1]\,
      q_pass => q_pass
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity HDMI_bd_FSM_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    run : in STD_LOGIC;
    quit : in STD_LOGIC;
    difficulty : in STD_LOGIC_VECTOR ( 1 downto 0 );
    q_pass : in STD_LOGIC;
    new_round : out STD_LOGIC;
    diff_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    mode_ui : out STD_LOGIC_VECTOR ( 2 downto 0 );
    sec : out STD_LOGIC_VECTOR ( 3 downto 0 );
    score_courant : out STD_LOGIC_VECTOR ( 3 downto 0 );
    record_perso : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of HDMI_bd_FSM_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of HDMI_bd_FSM_0_0 : entity is "HDMI_bd_FSM_0_0,FSM,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of HDMI_bd_FSM_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of HDMI_bd_FSM_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of HDMI_bd_FSM_0_0 : entity is "FSM,Vivado 2018.2.1";
end HDMI_bd_FSM_0_0;

architecture STRUCTURE of HDMI_bd_FSM_0_0 is
  signal \^diff_out\ : STD_LOGIC_VECTOR ( 1 to 1 );
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH";
begin
  diff_out(1) <= \^diff_out\(1);
  diff_out(0) <= \^diff_out\(1);
U0: entity work.HDMI_bd_FSM_0_0_FSM
     port map (
      Q(3 downto 0) => record_perso(3 downto 0),
      clk => clk,
      \diff_out[1]\ => \^diff_out\(1),
      mode_ui(2 downto 0) => mode_ui(2 downto 0),
      new_round => new_round,
      q_pass => q_pass,
      quit => quit,
      reset => reset,
      run => run,
      score_courant(3 downto 0) => score_courant(3 downto 0),
      sec(3 downto 0) => sec(3 downto 0)
    );
end STRUCTURE;
