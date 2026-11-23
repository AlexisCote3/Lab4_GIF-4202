// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2.1 (win64) Build 2288692 Thu Jul 26 18:24:02 MDT 2018
// Date        : Sun Nov 22 20:06:09 2026
// Host        : pcetu-129 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               U:/Documents/FPGA/Lab4_GIF-4202/project_lab4/project_lab4.srcs/sources_1/bd/HDMI_bd/ip/HDMI_bd_FSM_0_0/HDMI_bd_FSM_0_0_sim_netlist.v
// Design      : HDMI_bd_FSM_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "HDMI_bd_FSM_0_0,FSM,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "FSM,Vivado 2018.2.1" *) 
(* NotValidForBitStream *)
module HDMI_bd_FSM_0_0
   (clk,
    reset,
    run,
    quit,
    difficulty,
    q_pass,
    new_round,
    diff_out,
    mode_ui,
    sec,
    score_courant,
    record_perso);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH" *) input reset;
  input run;
  input quit;
  input [1:0]difficulty;
  input q_pass;
  output new_round;
  output [1:0]diff_out;
  output [2:0]mode_ui;
  output [3:0]sec;
  output [5:0]score_courant;
  output [5:0]record_perso;

  wire clk;
  wire [1:0]diff_out;
  wire [1:0]difficulty;
  wire [2:0]mode_ui;
  wire new_round;
  wire q_pass;
  wire quit;
  wire [5:0]record_perso;
  wire reset;
  wire run;
  wire [5:0]score_courant;
  wire [3:0]sec;

  HDMI_bd_FSM_0_0_FSM U0
       (.clk(clk),
        .\diff_out[0] (diff_out[0]),
        .\diff_out[1] (diff_out[1]),
        .difficulty(difficulty),
        .mode_ui(mode_ui),
        .new_round(new_round),
        .q_pass(q_pass),
        .quit(quit),
        .record_perso(record_perso),
        .reset(reset),
        .run(run),
        .score_courant(score_courant),
        .sec(sec));
endmodule

(* ORIG_REF_NAME = "FSM" *) 
module HDMI_bd_FSM_0_0_FSM
   (score_courant,
    new_round,
    \diff_out[1] ,
    \diff_out[0] ,
    mode_ui,
    record_perso,
    sec,
    clk,
    reset,
    difficulty,
    run,
    quit,
    q_pass);
  output [5:0]score_courant;
  output new_round;
  output \diff_out[1] ;
  output \diff_out[0] ;
  output [2:0]mode_ui;
  output [5:0]record_perso;
  output [3:0]sec;
  input clk;
  input reset;
  input [1:0]difficulty;
  input run;
  input quit;
  input q_pass;

  wire clk;
  wire \diff_out[0] ;
  wire \diff_out[1] ;
  wire [1:0]difficulty;
  wire inc_score_sig;
  wire [2:0]mode_ui;
  wire new_round;
  wire [3:0]p_0_in__0;
  wire play_enable_sig;
  wire q_pass;
  wire quit;
  wire [5:0]record_perso;
  wire reset;
  wire reset_score_sig;
  wire run;
  wire [5:0]score_courant;
  wire [3:0]sec;
  wire u_game_state_n_4;
  wire u_sec_counter_n_0;
  wire u_sec_counter_n_5;
  wire u_sec_counter_n_6;

  HDMI_bd_FSM_0_0_game_state u_game_state
       (.D(p_0_in__0),
        .E(play_enable_sig),
        .Q(sec),
        .SR(new_round),
        .clk(clk),
        .\diff_out[0] (\diff_out[0] ),
        .\diff_out[1] (\diff_out[1] ),
        .difficulty(difficulty),
        .inc_score_sig(inc_score_sig),
        .mode_ui(mode_ui),
        .quit(quit),
        .reset(reset),
        .reset_score_sig(reset_score_sig),
        .run(run),
        .\score_courant_sig_reg[5] (u_game_state_n_4),
        .\sec_reg_reg[1] (u_sec_counter_n_6),
        .\sec_reg_reg[2] (u_sec_counter_n_5),
        .\sec_reg_reg[3] (u_sec_counter_n_0));
  HDMI_bd_FSM_0_0_score u_score
       (.E(u_game_state_n_4),
        .Q(score_courant),
        .clk(clk),
        .inc_score_sig(inc_score_sig),
        .record_perso(record_perso),
        .reset(reset),
        .reset_score_sig(reset_score_sig));
  HDMI_bd_FSM_0_0_sec_counter u_sec_counter
       (.D(p_0_in__0),
        .E(play_enable_sig),
        .\FSM_sequential_etat_courant_reg[0] (u_sec_counter_n_0),
        .\FSM_sequential_etat_courant_reg[0]_0 (u_sec_counter_n_5),
        .Q(sec),
        .SR(new_round),
        .clk(clk),
        .q_pass(q_pass),
        .\sec_reg_reg[3]_0 (u_sec_counter_n_6));
endmodule

(* ORIG_REF_NAME = "game_state" *) 
module HDMI_bd_FSM_0_0_game_state
   (SR,
    E,
    inc_score_sig,
    reset_score_sig,
    \score_courant_sig_reg[5] ,
    D,
    \diff_out[0] ,
    \diff_out[1] ,
    mode_ui,
    clk,
    reset,
    Q,
    \sec_reg_reg[1] ,
    run,
    \sec_reg_reg[3] ,
    quit,
    \sec_reg_reg[2] ,
    difficulty);
  output [0:0]SR;
  output [0:0]E;
  output inc_score_sig;
  output reset_score_sig;
  output [0:0]\score_courant_sig_reg[5] ;
  output [3:0]D;
  output \diff_out[0] ;
  output \diff_out[1] ;
  output [2:0]mode_ui;
  input clk;
  input reset;
  input [3:0]Q;
  input \sec_reg_reg[1] ;
  input run;
  input \sec_reg_reg[3] ;
  input quit;
  input \sec_reg_reg[2] ;
  input [1:0]difficulty;

  wire [3:0]D;
  wire [0:0]E;
  wire \FSM_sequential_etat_courant[0]_i_1_n_0 ;
  wire \FSM_sequential_etat_courant[0]_i_2_n_0 ;
  wire \FSM_sequential_etat_courant[1]_i_1_n_0 ;
  wire \FSM_sequential_etat_courant[1]_i_2_n_0 ;
  wire \FSM_sequential_etat_courant[2]_i_1_n_0 ;
  wire \FSM_sequential_etat_courant[2]_i_2_n_0 ;
  wire [3:0]Q;
  wire [0:0]SR;
  wire clk;
  wire diff;
  wire \diff[0]_i_1_n_0 ;
  wire \diff[1]_i_1_n_0 ;
  wire \diff_out[0] ;
  wire \diff_out[1] ;
  wire [1:0]difficulty;
  (* RTL_KEEP = "yes" *) wire [2:0]etat_courant__0;
  wire inc_score_i_1_n_0;
  wire inc_score_sig;
  wire [2:0]mode_ui;
  wire \mode_ui[1]_i_1_n_0 ;
  wire \mode_ui[2]_i_1_n_0 ;
  wire new_round_i_1_n_0;
  wire new_round_i_2_n_0;
  wire play_enable_i_1_n_0;
  wire quit;
  wire reset;
  wire reset_score_sig;
  wire run;
  wire [0:0]\score_courant_sig_reg[5] ;
  wire \sec_reg_reg[1] ;
  wire \sec_reg_reg[2] ;
  wire \sec_reg_reg[3] ;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_sequential_etat_courant[0]_i_1 
       (.I0(\FSM_sequential_etat_courant[0]_i_2_n_0 ),
        .I1(\FSM_sequential_etat_courant[2]_i_2_n_0 ),
        .I2(etat_courant__0[0]),
        .O(\FSM_sequential_etat_courant[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000800080F0F3F3F)) 
    \FSM_sequential_etat_courant[0]_i_2 
       (.I0(run),
        .I1(etat_courant__0[1]),
        .I2(etat_courant__0[2]),
        .I3(\sec_reg_reg[3] ),
        .I4(quit),
        .I5(etat_courant__0[0]),
        .O(\FSM_sequential_etat_courant[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_sequential_etat_courant[1]_i_1 
       (.I0(\FSM_sequential_etat_courant[1]_i_2_n_0 ),
        .I1(\FSM_sequential_etat_courant[2]_i_2_n_0 ),
        .I2(etat_courant__0[1]),
        .O(\FSM_sequential_etat_courant[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h51115111CCCCEEEE)) 
    \FSM_sequential_etat_courant[1]_i_2 
       (.I0(etat_courant__0[2]),
        .I1(etat_courant__0[0]),
        .I2(run),
        .I3(\sec_reg_reg[3] ),
        .I4(quit),
        .I5(etat_courant__0[1]),
        .O(\FSM_sequential_etat_courant[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h40FF4000)) 
    \FSM_sequential_etat_courant[2]_i_1 
       (.I0(etat_courant__0[2]),
        .I1(etat_courant__0[1]),
        .I2(etat_courant__0[0]),
        .I3(\FSM_sequential_etat_courant[2]_i_2_n_0 ),
        .I4(etat_courant__0[2]),
        .O(\FSM_sequential_etat_courant[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF707FFFFFF0FFCCC)) 
    \FSM_sequential_etat_courant[2]_i_2 
       (.I0(\sec_reg_reg[2] ),
        .I1(run),
        .I2(etat_courant__0[2]),
        .I3(quit),
        .I4(etat_courant__0[1]),
        .I5(etat_courant__0[0]),
        .O(\FSM_sequential_etat_courant[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "play_start:001,round_init:010,pause_state:100,game_over:110,wall_passed:101,play:011,menu:000" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_etat_courant_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\FSM_sequential_etat_courant[0]_i_1_n_0 ),
        .Q(etat_courant__0[0]));
  (* FSM_ENCODED_STATES = "play_start:001,round_init:010,pause_state:100,game_over:110,wall_passed:101,play:011,menu:000" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_etat_courant_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\FSM_sequential_etat_courant[1]_i_1_n_0 ),
        .Q(etat_courant__0[1]));
  (* FSM_ENCODED_STATES = "play_start:001,round_init:010,pause_state:100,game_over:110,wall_passed:101,play:011,menu:000" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_etat_courant_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\FSM_sequential_etat_courant[2]_i_1_n_0 ),
        .Q(etat_courant__0[2]));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \diff[0]_i_1 
       (.I0(difficulty[0]),
        .I1(etat_courant__0[1]),
        .I2(etat_courant__0[0]),
        .I3(etat_courant__0[2]),
        .I4(\diff_out[0] ),
        .O(\diff[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \diff[1]_i_1 
       (.I0(difficulty[1]),
        .I1(etat_courant__0[1]),
        .I2(etat_courant__0[0]),
        .I3(etat_courant__0[2]),
        .I4(\diff_out[1] ),
        .O(\diff[1]_i_1_n_0 ));
  FDCE \diff_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\diff[0]_i_1_n_0 ),
        .Q(\diff_out[0] ));
  FDCE \diff_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\diff[1]_i_1_n_0 ),
        .Q(\diff_out[1] ));
  LUT3 #(
    .INIT(8'h40)) 
    inc_score_i_1
       (.I0(etat_courant__0[1]),
        .I1(etat_courant__0[0]),
        .I2(etat_courant__0[2]),
        .O(inc_score_i_1_n_0));
  FDCE inc_score_reg
       (.C(clk),
        .CE(new_round_i_1_n_0),
        .CLR(reset),
        .D(inc_score_i_1_n_0),
        .Q(inc_score_sig));
  LUT2 #(
    .INIT(4'h6)) 
    \mode_ui[1]_i_1 
       (.I0(etat_courant__0[1]),
        .I1(etat_courant__0[2]),
        .O(\mode_ui[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \mode_ui[2]_i_1 
       (.I0(etat_courant__0[2]),
        .I1(etat_courant__0[0]),
        .O(\mode_ui[2]_i_1_n_0 ));
  FDPE \mode_ui_reg[0] 
       (.C(clk),
        .CE(new_round_i_1_n_0),
        .D(new_round_i_2_n_0),
        .PRE(reset),
        .Q(mode_ui[0]));
  FDPE \mode_ui_reg[1] 
       (.C(clk),
        .CE(new_round_i_1_n_0),
        .D(\mode_ui[1]_i_1_n_0 ),
        .PRE(reset),
        .Q(mode_ui[1]));
  FDPE \mode_ui_reg[2] 
       (.C(clk),
        .CE(new_round_i_1_n_0),
        .D(\mode_ui[2]_i_1_n_0 ),
        .PRE(reset),
        .Q(mode_ui[2]));
  LUT3 #(
    .INIT(8'h7F)) 
    new_round_i_1
       (.I0(etat_courant__0[2]),
        .I1(etat_courant__0[1]),
        .I2(etat_courant__0[0]),
        .O(new_round_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    new_round_i_2
       (.I0(etat_courant__0[0]),
        .I1(etat_courant__0[1]),
        .O(new_round_i_2_n_0));
  FDCE new_round_reg
       (.C(clk),
        .CE(new_round_i_1_n_0),
        .CLR(reset),
        .D(new_round_i_2_n_0),
        .Q(SR));
  LUT3 #(
    .INIT(8'h32)) 
    play_enable_i_1
       (.I0(etat_courant__0[0]),
        .I1(etat_courant__0[2]),
        .I2(etat_courant__0[1]),
        .O(play_enable_i_1_n_0));
  FDCE play_enable_reg
       (.C(clk),
        .CE(new_round_i_1_n_0),
        .CLR(reset),
        .D(play_enable_i_1_n_0),
        .Q(E));
  LUT3 #(
    .INIT(8'h04)) 
    reset_score_i_1
       (.I0(etat_courant__0[1]),
        .I1(etat_courant__0[0]),
        .I2(etat_courant__0[2]),
        .O(diff));
  FDCE reset_score_reg
       (.C(clk),
        .CE(new_round_i_1_n_0),
        .CLR(reset),
        .D(diff),
        .Q(reset_score_sig));
  LUT2 #(
    .INIT(4'hE)) 
    \score_courant_sig[5]_i_1 
       (.I0(inc_score_sig),
        .I1(reset_score_sig),
        .O(\score_courant_sig_reg[5] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hE0EF)) 
    \sec_reg[0]_i_1 
       (.I0(\diff_out[0] ),
        .I1(\diff_out[1] ),
        .I2(SR),
        .I3(Q[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF990F99)) 
    \sec_reg[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\diff_out[1] ),
        .I3(SR),
        .I4(\diff_out[0] ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h6F6F6F606060606F)) 
    \sec_reg[2]_i_1 
       (.I0(\diff_out[0] ),
        .I1(\diff_out[1] ),
        .I2(SR),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'h1F10101F)) 
    \sec_reg[3]_i_2 
       (.I0(\diff_out[1] ),
        .I1(\diff_out[0] ),
        .I2(SR),
        .I3(\sec_reg_reg[1] ),
        .I4(Q[3]),
        .O(D[3]));
endmodule

(* ORIG_REF_NAME = "score" *) 
module HDMI_bd_FSM_0_0_score
   (Q,
    record_perso,
    reset_score_sig,
    inc_score_sig,
    clk,
    reset,
    E);
  output [5:0]Q;
  output [5:0]record_perso;
  input reset_score_sig;
  input inc_score_sig;
  input clk;
  input reset;
  input [0:0]E;

  wire [0:0]E;
  wire [5:0]Q;
  wire clk;
  wire inc_score_sig;
  wire [5:1]p_0_in;
  wire [5:0]plusOp;
  wire [5:0]record_perso;
  wire record_perso_sig;
  wire \record_perso_sig[5]_i_10_n_0 ;
  wire \record_perso_sig[5]_i_3_n_0 ;
  wire \record_perso_sig[5]_i_4_n_0 ;
  wire \record_perso_sig[5]_i_5_n_0 ;
  wire \record_perso_sig[5]_i_6_n_0 ;
  wire \record_perso_sig[5]_i_7_n_0 ;
  wire \record_perso_sig[5]_i_8_n_0 ;
  wire \record_perso_sig[5]_i_9_n_0 ;
  wire reset;
  wire reset_score_sig;
  wire \score_courant_sig[0]_i_1_n_0 ;

  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \record_perso_sig[0]_i_1 
       (.I0(Q[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \record_perso_sig[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \record_perso_sig[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \record_perso_sig[3]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \record_perso_sig[4]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFCCCCCCC8)) 
    \record_perso_sig[5]_i_1 
       (.I0(\record_perso_sig[5]_i_3_n_0 ),
        .I1(\record_perso_sig[5]_i_4_n_0 ),
        .I2(\record_perso_sig[5]_i_5_n_0 ),
        .I3(\record_perso_sig[5]_i_6_n_0 ),
        .I4(\record_perso_sig[5]_i_7_n_0 ),
        .I5(\record_perso_sig[5]_i_8_n_0 ),
        .O(record_perso_sig));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6AFF)) 
    \record_perso_sig[5]_i_10 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(record_perso[2]),
        .O(\record_perso_sig[5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \record_perso_sig[5]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(Q[2]),
        .I5(Q[5]),
        .O(plusOp[5]));
  LUT6 #(
    .INIT(64'h0022220000020200)) 
    \record_perso_sig[5]_i_3 
       (.I0(\record_perso_sig[5]_i_9_n_0 ),
        .I1(record_perso[1]),
        .I2(record_perso[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(\record_perso_sig[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00B000B0000000B0)) 
    \record_perso_sig[5]_i_4 
       (.I0(plusOp[5]),
        .I1(record_perso[5]),
        .I2(inc_score_sig),
        .I3(reset_score_sig),
        .I4(record_perso[4]),
        .I5(plusOp[4]),
        .O(\record_perso_sig[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008A00)) 
    \record_perso_sig[5]_i_5 
       (.I0(\record_perso_sig[5]_i_10_n_0 ),
        .I1(Q[1]),
        .I2(record_perso[1]),
        .I3(\record_perso_sig[5]_i_9_n_0 ),
        .I4(record_perso[0]),
        .I5(Q[0]),
        .O(\record_perso_sig[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \record_perso_sig[5]_i_6 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(record_perso[3]),
        .O(\record_perso_sig[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0550505001101010)) 
    \record_perso_sig[5]_i_7 
       (.I0(record_perso[2]),
        .I1(record_perso[3]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\record_perso_sig[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0400040044040400)) 
    \record_perso_sig[5]_i_8 
       (.I0(reset_score_sig),
        .I1(inc_score_sig),
        .I2(record_perso[5]),
        .I3(plusOp[5]),
        .I4(plusOp[4]),
        .I5(record_perso[4]),
        .O(\record_perso_sig[5]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h6AAAFFFF)) 
    \record_perso_sig[5]_i_9 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(record_perso[3]),
        .O(\record_perso_sig[5]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \record_perso_sig_reg[0] 
       (.C(clk),
        .CE(record_perso_sig),
        .CLR(reset),
        .D(plusOp[0]),
        .Q(record_perso[0]));
  FDCE #(
    .INIT(1'b0)) 
    \record_perso_sig_reg[1] 
       (.C(clk),
        .CE(record_perso_sig),
        .CLR(reset),
        .D(plusOp[1]),
        .Q(record_perso[1]));
  FDCE #(
    .INIT(1'b0)) 
    \record_perso_sig_reg[2] 
       (.C(clk),
        .CE(record_perso_sig),
        .CLR(reset),
        .D(plusOp[2]),
        .Q(record_perso[2]));
  FDCE #(
    .INIT(1'b0)) 
    \record_perso_sig_reg[3] 
       (.C(clk),
        .CE(record_perso_sig),
        .CLR(reset),
        .D(plusOp[3]),
        .Q(record_perso[3]));
  FDCE #(
    .INIT(1'b0)) 
    \record_perso_sig_reg[4] 
       (.C(clk),
        .CE(record_perso_sig),
        .CLR(reset),
        .D(plusOp[4]),
        .Q(record_perso[4]));
  FDCE #(
    .INIT(1'b0)) 
    \record_perso_sig_reg[5] 
       (.C(clk),
        .CE(record_perso_sig),
        .CLR(reset),
        .D(plusOp[5]),
        .Q(record_perso[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \score_courant_sig[0]_i_1 
       (.I0(Q[0]),
        .I1(reset_score_sig),
        .O(\score_courant_sig[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \score_courant_sig[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(reset_score_sig),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \score_courant_sig[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(reset_score_sig),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \score_courant_sig[3]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(reset_score_sig),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    \score_courant_sig[4]_i_1 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(reset_score_sig),
        .O(p_0_in[4]));
  LUT2 #(
    .INIT(4'h2)) 
    \score_courant_sig[5]_i_2 
       (.I0(plusOp[5]),
        .I1(reset_score_sig),
        .O(p_0_in[5]));
  FDCE #(
    .INIT(1'b0)) 
    \score_courant_sig_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(\score_courant_sig[0]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \score_courant_sig_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(p_0_in[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \score_courant_sig_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(p_0_in[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \score_courant_sig_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(p_0_in[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \score_courant_sig_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(p_0_in[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \score_courant_sig_reg[5] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(p_0_in[5]),
        .Q(Q[5]));
endmodule

(* ORIG_REF_NAME = "sec_counter" *) 
module HDMI_bd_FSM_0_0_sec_counter
   (\FSM_sequential_etat_courant_reg[0] ,
    Q,
    \FSM_sequential_etat_courant_reg[0]_0 ,
    \sec_reg_reg[3]_0 ,
    E,
    SR,
    q_pass,
    clk,
    D);
  output \FSM_sequential_etat_courant_reg[0] ;
  output [3:0]Q;
  output \FSM_sequential_etat_courant_reg[0]_0 ;
  output \sec_reg_reg[3]_0 ;
  input [0:0]E;
  input [0:0]SR;
  input q_pass;
  input clk;
  input [3:0]D;

  wire [3:0]D;
  wire [0:0]E;
  wire \FSM_sequential_etat_courant_reg[0] ;
  wire \FSM_sequential_etat_courant_reg[0]_0 ;
  wire [3:0]Q;
  wire [0:0]SR;
  wire clk;
  wire [27:0]clk_reg;
  wire clk_reg0_carry__0_n_0;
  wire clk_reg0_carry__0_n_1;
  wire clk_reg0_carry__0_n_2;
  wire clk_reg0_carry__0_n_3;
  wire clk_reg0_carry__1_n_0;
  wire clk_reg0_carry__1_n_1;
  wire clk_reg0_carry__1_n_2;
  wire clk_reg0_carry__1_n_3;
  wire clk_reg0_carry__2_n_0;
  wire clk_reg0_carry__2_n_1;
  wire clk_reg0_carry__2_n_2;
  wire clk_reg0_carry__2_n_3;
  wire clk_reg0_carry__3_n_0;
  wire clk_reg0_carry__3_n_1;
  wire clk_reg0_carry__3_n_2;
  wire clk_reg0_carry__3_n_3;
  wire clk_reg0_carry__4_n_0;
  wire clk_reg0_carry__4_n_1;
  wire clk_reg0_carry__4_n_2;
  wire clk_reg0_carry__4_n_3;
  wire clk_reg0_carry__5_n_2;
  wire clk_reg0_carry__5_n_3;
  wire clk_reg0_carry_n_0;
  wire clk_reg0_carry_n_1;
  wire clk_reg0_carry_n_2;
  wire clk_reg0_carry_n_3;
  wire [27:0]clk_reg_0;
  wire [27:1]data0;
  wire q_pass;
  wire \sec_reg[3]_i_10_n_0 ;
  wire \sec_reg[3]_i_1_n_0 ;
  wire \sec_reg[3]_i_3_n_0 ;
  wire \sec_reg[3]_i_4_n_0 ;
  wire \sec_reg[3]_i_5_n_0 ;
  wire \sec_reg[3]_i_7_n_0 ;
  wire \sec_reg[3]_i_8_n_0 ;
  wire \sec_reg[3]_i_9_n_0 ;
  wire \sec_reg_reg[3]_0 ;
  wire [3:2]NLW_clk_reg0_carry__5_CO_UNCONNECTED;
  wire [3:3]NLW_clk_reg0_carry__5_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \FSM_sequential_etat_courant[1]_i_3 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(q_pass),
        .O(\FSM_sequential_etat_courant_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_etat_courant[2]_i_3 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(\FSM_sequential_etat_courant_reg[0]_0 ));
  CARRY4 clk_reg0_carry
       (.CI(1'b0),
        .CO({clk_reg0_carry_n_0,clk_reg0_carry_n_1,clk_reg0_carry_n_2,clk_reg0_carry_n_3}),
        .CYINIT(clk_reg[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(clk_reg[4:1]));
  CARRY4 clk_reg0_carry__0
       (.CI(clk_reg0_carry_n_0),
        .CO({clk_reg0_carry__0_n_0,clk_reg0_carry__0_n_1,clk_reg0_carry__0_n_2,clk_reg0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(clk_reg[8:5]));
  CARRY4 clk_reg0_carry__1
       (.CI(clk_reg0_carry__0_n_0),
        .CO({clk_reg0_carry__1_n_0,clk_reg0_carry__1_n_1,clk_reg0_carry__1_n_2,clk_reg0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(clk_reg[12:9]));
  CARRY4 clk_reg0_carry__2
       (.CI(clk_reg0_carry__1_n_0),
        .CO({clk_reg0_carry__2_n_0,clk_reg0_carry__2_n_1,clk_reg0_carry__2_n_2,clk_reg0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(clk_reg[16:13]));
  CARRY4 clk_reg0_carry__3
       (.CI(clk_reg0_carry__2_n_0),
        .CO({clk_reg0_carry__3_n_0,clk_reg0_carry__3_n_1,clk_reg0_carry__3_n_2,clk_reg0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(clk_reg[20:17]));
  CARRY4 clk_reg0_carry__4
       (.CI(clk_reg0_carry__3_n_0),
        .CO({clk_reg0_carry__4_n_0,clk_reg0_carry__4_n_1,clk_reg0_carry__4_n_2,clk_reg0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S(clk_reg[24:21]));
  CARRY4 clk_reg0_carry__5
       (.CI(clk_reg0_carry__4_n_0),
        .CO({NLW_clk_reg0_carry__5_CO_UNCONNECTED[3:2],clk_reg0_carry__5_n_2,clk_reg0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_clk_reg0_carry__5_O_UNCONNECTED[3],data0[27:25]}),
        .S({1'b0,clk_reg[27:25]}));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \clk_reg[0]_i_1 
       (.I0(clk_reg[0]),
        .O(clk_reg_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \clk_reg[10]_i_1 
       (.I0(\sec_reg[3]_i_5_n_0 ),
        .I1(\sec_reg[3]_i_4_n_0 ),
        .I2(\sec_reg[3]_i_3_n_0 ),
        .I3(data0[10]),
        .O(clk_reg_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \clk_reg[11]_i_1 
       (.I0(\sec_reg[3]_i_5_n_0 ),
        .I1(\sec_reg[3]_i_4_n_0 ),
        .I2(\sec_reg[3]_i_3_n_0 ),
        .I3(data0[11]),
        .O(clk_reg_0[11]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \clk_reg[12]_i_1 
       (.I0(\sec_reg[3]_i_5_n_0 ),
        .I1(\sec_reg[3]_i_4_n_0 ),
        .I2(\sec_reg[3]_i_3_n_0 ),
        .I3(data0[12]),
        .O(clk_reg_0[12]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \clk_reg[13]_i_1 
       (.I0(\sec_reg[3]_i_5_n_0 ),
        .I1(\sec_reg[3]_i_4_n_0 ),
        .I2(\sec_reg[3]_i_3_n_0 ),
        .I3(data0[13]),
        .O(clk_reg_0[13]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \clk_reg[14]_i_1 
       (.I0(\sec_reg[3]_i_5_n_0 ),
        .I1(\sec_reg[3]_i_4_n_0 ),
        .I2(\sec_reg[3]_i_3_n_0 ),
        .I3(data0[14]),
        .O(clk_reg_0[14]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \clk_reg[15]_i_1 
       (.I0(\sec_reg[3]_i_5_n_0 ),
        .I1(\sec_reg[3]_i_4_n_0 ),
        .I2(\sec_reg[3]_i_3_n_0 ),
        .I3(data0[15]),
        .O(clk_reg_0[15]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \clk_reg[16]_i_1 
       (.I0(\sec_reg[3]_i_5_n_0 ),
        .I1(\sec_reg[3]_i_4_n_0 ),
        .I2(\sec_reg[3]_i_3_n_0 ),
        .I3(data0[16]),
        .O(clk_reg_0[16]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \clk_reg[17]_i_1 
       (.I0(\sec_reg[3]_i_5_n_0 ),
        .I1(\sec_reg[3]_i_4_n_0 ),
        .I2(\sec_reg[3]_i_3_n_0 ),
        .I3(data0[17]),
        .O(clk_reg_0[17]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \clk_reg[18]_i_1 
       (.I0(\sec_reg[3]_i_5_n_0 ),
        .I1(\sec_reg[3]_i_4_n_0 ),
        .I2(\sec_reg[3]_i_3_n_0 ),
        .I3(data0[18]),
        .O(clk_reg_0[18]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \clk_reg[19]_i_1 
       (.I0(\sec_reg[3]_i_5_n_0 ),
        .I1(\sec_reg[3]_i_4_n_0 ),
        .I2(\sec_reg[3]_i_3_n_0 ),
        .I3(data0[19]),
        .O(clk_reg_0[19]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \clk_reg[1]_i_1 
       (.I0(\sec_reg[3]_i_5_n_0 ),
        .I1(\sec_reg[3]_i_4_n_0 ),
        .I2(\sec_reg[3]_i_3_n_0 ),
        .I3(data0[1]),
        .O(clk_reg_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \clk_reg[20]_i_1 
       (.I0(\sec_reg[3]_i_5_n_0 ),
        .I1(\sec_reg[3]_i_4_n_0 ),
        .I2(\sec_reg[3]_i_3_n_0 ),
        .I3(data0[20]),
        .O(clk_reg_0[20]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \clk_reg[21]_i_1 
       (.I0(\sec_reg[3]_i_5_n_0 ),
        .I1(\sec_reg[3]_i_4_n_0 ),
        .I2(\sec_reg[3]_i_3_n_0 ),
        .I3(data0[21]),
        .O(clk_reg_0[21]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \clk_reg[22]_i_1 
       (.I0(\sec_reg[3]_i_5_n_0 ),
        .I1(\sec_reg[3]_i_4_n_0 ),
        .I2(\sec_reg[3]_i_3_n_0 ),
        .I3(data0[22]),
        .O(clk_reg_0[22]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \clk_reg[23]_i_1 
       (.I0(\sec_reg[3]_i_5_n_0 ),
        .I1(\sec_reg[3]_i_4_n_0 ),
        .I2(\sec_reg[3]_i_3_n_0 ),
        .I3(data0[23]),
        .O(clk_reg_0[23]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \clk_reg[24]_i_1 
       (.I0(\sec_reg[3]_i_5_n_0 ),
        .I1(\sec_reg[3]_i_4_n_0 ),
        .I2(\sec_reg[3]_i_3_n_0 ),
        .I3(data0[24]),
        .O(clk_reg_0[24]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \clk_reg[25]_i_1 
       (.I0(\sec_reg[3]_i_5_n_0 ),
        .I1(\sec_reg[3]_i_4_n_0 ),
        .I2(\sec_reg[3]_i_3_n_0 ),
        .I3(data0[25]),
        .O(clk_reg_0[25]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \clk_reg[26]_i_1 
       (.I0(\sec_reg[3]_i_5_n_0 ),
        .I1(\sec_reg[3]_i_4_n_0 ),
        .I2(\sec_reg[3]_i_3_n_0 ),
        .I3(data0[26]),
        .O(clk_reg_0[26]));
  LUT4 #(
    .INIT(16'hFE00)) 
    \clk_reg[27]_i_1 
       (.I0(\sec_reg[3]_i_5_n_0 ),
        .I1(\sec_reg[3]_i_4_n_0 ),
        .I2(\sec_reg[3]_i_3_n_0 ),
        .I3(data0[27]),
        .O(clk_reg_0[27]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \clk_reg[2]_i_1 
       (.I0(\sec_reg[3]_i_5_n_0 ),
        .I1(\sec_reg[3]_i_4_n_0 ),
        .I2(\sec_reg[3]_i_3_n_0 ),
        .I3(data0[2]),
        .O(clk_reg_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \clk_reg[3]_i_1 
       (.I0(\sec_reg[3]_i_5_n_0 ),
        .I1(\sec_reg[3]_i_4_n_0 ),
        .I2(\sec_reg[3]_i_3_n_0 ),
        .I3(data0[3]),
        .O(clk_reg_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \clk_reg[4]_i_1 
       (.I0(\sec_reg[3]_i_5_n_0 ),
        .I1(\sec_reg[3]_i_4_n_0 ),
        .I2(\sec_reg[3]_i_3_n_0 ),
        .I3(data0[4]),
        .O(clk_reg_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \clk_reg[5]_i_1 
       (.I0(\sec_reg[3]_i_5_n_0 ),
        .I1(\sec_reg[3]_i_4_n_0 ),
        .I2(\sec_reg[3]_i_3_n_0 ),
        .I3(data0[5]),
        .O(clk_reg_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \clk_reg[6]_i_1 
       (.I0(\sec_reg[3]_i_5_n_0 ),
        .I1(\sec_reg[3]_i_4_n_0 ),
        .I2(\sec_reg[3]_i_3_n_0 ),
        .I3(data0[6]),
        .O(clk_reg_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \clk_reg[7]_i_1 
       (.I0(\sec_reg[3]_i_5_n_0 ),
        .I1(\sec_reg[3]_i_4_n_0 ),
        .I2(\sec_reg[3]_i_3_n_0 ),
        .I3(data0[7]),
        .O(clk_reg_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \clk_reg[8]_i_1 
       (.I0(\sec_reg[3]_i_5_n_0 ),
        .I1(\sec_reg[3]_i_4_n_0 ),
        .I2(\sec_reg[3]_i_3_n_0 ),
        .I3(data0[8]),
        .O(clk_reg_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \clk_reg[9]_i_1 
       (.I0(\sec_reg[3]_i_5_n_0 ),
        .I1(\sec_reg[3]_i_4_n_0 ),
        .I2(\sec_reg[3]_i_3_n_0 ),
        .I3(data0[9]),
        .O(clk_reg_0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_reg_reg[0] 
       (.C(clk),
        .CE(E),
        .D(clk_reg_0[0]),
        .Q(clk_reg[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_reg_reg[10] 
       (.C(clk),
        .CE(E),
        .D(clk_reg_0[10]),
        .Q(clk_reg[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_reg_reg[11] 
       (.C(clk),
        .CE(E),
        .D(clk_reg_0[11]),
        .Q(clk_reg[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_reg_reg[12] 
       (.C(clk),
        .CE(E),
        .D(clk_reg_0[12]),
        .Q(clk_reg[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_reg_reg[13] 
       (.C(clk),
        .CE(E),
        .D(clk_reg_0[13]),
        .Q(clk_reg[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_reg_reg[14] 
       (.C(clk),
        .CE(E),
        .D(clk_reg_0[14]),
        .Q(clk_reg[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_reg_reg[15] 
       (.C(clk),
        .CE(E),
        .D(clk_reg_0[15]),
        .Q(clk_reg[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_reg_reg[16] 
       (.C(clk),
        .CE(E),
        .D(clk_reg_0[16]),
        .Q(clk_reg[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_reg_reg[17] 
       (.C(clk),
        .CE(E),
        .D(clk_reg_0[17]),
        .Q(clk_reg[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_reg_reg[18] 
       (.C(clk),
        .CE(E),
        .D(clk_reg_0[18]),
        .Q(clk_reg[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_reg_reg[19] 
       (.C(clk),
        .CE(E),
        .D(clk_reg_0[19]),
        .Q(clk_reg[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_reg_reg[1] 
       (.C(clk),
        .CE(E),
        .D(clk_reg_0[1]),
        .Q(clk_reg[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_reg_reg[20] 
       (.C(clk),
        .CE(E),
        .D(clk_reg_0[20]),
        .Q(clk_reg[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_reg_reg[21] 
       (.C(clk),
        .CE(E),
        .D(clk_reg_0[21]),
        .Q(clk_reg[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_reg_reg[22] 
       (.C(clk),
        .CE(E),
        .D(clk_reg_0[22]),
        .Q(clk_reg[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_reg_reg[23] 
       (.C(clk),
        .CE(E),
        .D(clk_reg_0[23]),
        .Q(clk_reg[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_reg_reg[24] 
       (.C(clk),
        .CE(E),
        .D(clk_reg_0[24]),
        .Q(clk_reg[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_reg_reg[25] 
       (.C(clk),
        .CE(E),
        .D(clk_reg_0[25]),
        .Q(clk_reg[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_reg_reg[26] 
       (.C(clk),
        .CE(E),
        .D(clk_reg_0[26]),
        .Q(clk_reg[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_reg_reg[27] 
       (.C(clk),
        .CE(E),
        .D(clk_reg_0[27]),
        .Q(clk_reg[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_reg_reg[2] 
       (.C(clk),
        .CE(E),
        .D(clk_reg_0[2]),
        .Q(clk_reg[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_reg_reg[3] 
       (.C(clk),
        .CE(E),
        .D(clk_reg_0[3]),
        .Q(clk_reg[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_reg_reg[4] 
       (.C(clk),
        .CE(E),
        .D(clk_reg_0[4]),
        .Q(clk_reg[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_reg_reg[5] 
       (.C(clk),
        .CE(E),
        .D(clk_reg_0[5]),
        .Q(clk_reg[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_reg_reg[6] 
       (.C(clk),
        .CE(E),
        .D(clk_reg_0[6]),
        .Q(clk_reg[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_reg_reg[7] 
       (.C(clk),
        .CE(E),
        .D(clk_reg_0[7]),
        .Q(clk_reg[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_reg_reg[8] 
       (.C(clk),
        .CE(E),
        .D(clk_reg_0[8]),
        .Q(clk_reg[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \clk_reg_reg[9] 
       (.C(clk),
        .CE(E),
        .D(clk_reg_0[9]),
        .Q(clk_reg[9]),
        .R(SR));
  LUT5 #(
    .INIT(32'hFFFF0100)) 
    \sec_reg[3]_i_1 
       (.I0(\sec_reg[3]_i_3_n_0 ),
        .I1(\sec_reg[3]_i_4_n_0 ),
        .I2(\sec_reg[3]_i_5_n_0 ),
        .I3(E),
        .I4(SR),
        .O(\sec_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \sec_reg[3]_i_10 
       (.I0(clk_reg[1]),
        .I1(clk_reg[0]),
        .I2(clk_reg[3]),
        .I3(clk_reg[2]),
        .O(\sec_reg[3]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFF7)) 
    \sec_reg[3]_i_3 
       (.I0(clk_reg[14]),
        .I1(clk_reg[15]),
        .I2(clk_reg[12]),
        .I3(clk_reg[13]),
        .I4(\sec_reg[3]_i_7_n_0 ),
        .O(\sec_reg[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \sec_reg[3]_i_4 
       (.I0(clk_reg[6]),
        .I1(clk_reg[7]),
        .I2(clk_reg[4]),
        .I3(clk_reg[5]),
        .I4(\sec_reg[3]_i_8_n_0 ),
        .O(\sec_reg[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBFFFFFF)) 
    \sec_reg[3]_i_5 
       (.I0(\sec_reg[3]_i_9_n_0 ),
        .I1(clk_reg[21]),
        .I2(clk_reg[20]),
        .I3(clk_reg[23]),
        .I4(clk_reg[22]),
        .I5(\sec_reg[3]_i_10_n_0 ),
        .O(\sec_reg[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \sec_reg[3]_i_6 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(\sec_reg_reg[3]_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \sec_reg[3]_i_7 
       (.I0(clk_reg[17]),
        .I1(clk_reg[16]),
        .I2(clk_reg[19]),
        .I3(clk_reg[18]),
        .O(\sec_reg[3]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \sec_reg[3]_i_8 
       (.I0(clk_reg[8]),
        .I1(clk_reg[9]),
        .I2(clk_reg[11]),
        .I3(clk_reg[10]),
        .O(\sec_reg[3]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \sec_reg[3]_i_9 
       (.I0(clk_reg[25]),
        .I1(clk_reg[24]),
        .I2(clk_reg[27]),
        .I3(clk_reg[26]),
        .O(\sec_reg[3]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sec_reg_reg[0] 
       (.C(clk),
        .CE(\sec_reg[3]_i_1_n_0 ),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sec_reg_reg[1] 
       (.C(clk),
        .CE(\sec_reg[3]_i_1_n_0 ),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sec_reg_reg[2] 
       (.C(clk),
        .CE(\sec_reg[3]_i_1_n_0 ),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sec_reg_reg[3] 
       (.C(clk),
        .CE(\sec_reg[3]_i_1_n_0 ),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
