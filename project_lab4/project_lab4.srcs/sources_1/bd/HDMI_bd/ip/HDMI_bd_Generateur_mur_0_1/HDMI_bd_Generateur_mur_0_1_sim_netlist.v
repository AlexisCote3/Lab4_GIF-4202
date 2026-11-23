// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2.1 (win64) Build 2288692 Thu Jul 26 18:24:02 MDT 2018
// Date        : Sun Nov 22 20:06:07 2026
// Host        : pcetu-129 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               U:/Documents/FPGA/Lab4_GIF-4202/project_lab4/project_lab4.srcs/sources_1/bd/HDMI_bd/ip/HDMI_bd_Generateur_mur_0_1/HDMI_bd_Generateur_mur_0_1_sim_netlist.v
// Design      : HDMI_bd_Generateur_mur_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "HDMI_bd_Generateur_mur_0_1,Generateur_mur,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Generateur_mur,Vivado 2018.2.1" *) 
(* NotValidForBitStream *)
module HDMI_bd_Generateur_mur_0_1
   (NewRandom,
    Mur_out,
    Clk);
  input NewRandom;
  output [31:0]Mur_out;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 Clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME Clk, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1" *) input Clk;

  wire \<const0> ;
  wire Clk;
  wire [29:1]\^Mur_out ;
  wire NewRandom;

  assign Mur_out[31] = \<const0> ;
  assign Mur_out[30] = \<const0> ;
  assign Mur_out[29:25] = \^Mur_out [29:25];
  assign Mur_out[24] = \<const0> ;
  assign Mur_out[23] = \<const0> ;
  assign Mur_out[22:17] = \^Mur_out [22:17];
  assign Mur_out[16] = \<const0> ;
  assign Mur_out[15] = \^Mur_out [7];
  assign Mur_out[14:9] = \^Mur_out [14:9];
  assign Mur_out[8] = \<const0> ;
  assign Mur_out[7:1] = \^Mur_out [7:1];
  assign Mur_out[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  HDMI_bd_Generateur_mur_0_1_Generateur_mur U0
       (.Clk(Clk),
        .Mur_out({\^Mur_out [29:25],\^Mur_out [22:17],\^Mur_out [7],\^Mur_out [14:9],\^Mur_out [6:1]}),
        .NewRandom(NewRandom));
endmodule

(* ORIG_REF_NAME = "Generateur_mur" *) 
module HDMI_bd_Generateur_mur_0_1_Generateur_mur
   (Mur_out,
    NewRandom,
    Clk);
  output [23:0]Mur_out;
  input NewRandom;
  input Clk;

  wire [1:0]COUNT;
  wire Clk;
  wire [23:0]Mur_out;
  wire NewRandom;
  wire Output_i_1__0_n_0;
  wire Output_i_1__10_n_0;
  wire Output_i_1__11_n_0;
  wire Output_i_1__12_n_0;
  wire Output_i_1__13_n_0;
  wire Output_i_1__14_n_0;
  wire Output_i_1__15_n_0;
  wire Output_i_1__16_n_0;
  wire Output_i_1__17_n_0;
  wire Output_i_1__1__0_n_0;
  wire Output_i_1__2__0_n_0;
  wire Output_i_1__3_n_0;
  wire Output_i_1__4_n_0;
  wire Output_i_1__5_n_0;
  wire Output_i_1__6_n_0;
  wire Output_i_1__7_n_0;
  wire Output_i_1__8_n_0;
  wire Output_i_1__9_n_0;
  wire Output_i_1_n_0;
  wire \clk_int[0]_i_2_n_0 ;
  wire \clk_int_reg[0]_i_1_n_1 ;
  wire \clk_int_reg[0]_i_1_n_2 ;
  wire \clk_int_reg[0]_i_1_n_3 ;
  wire \clk_int_reg[0]_i_1_n_4 ;
  wire \clk_int_reg[0]_i_1_n_5 ;
  wire \clk_int_reg[0]_i_1_n_6 ;
  wire \clk_int_reg[0]_i_1_n_7 ;
  wire \clk_int_reg_n_0_[0] ;
  wire \clk_int_reg_n_0_[1] ;
  wire forme_n_0;
  wire [3:3]\NLW_clk_int_reg[0]_i_1_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h4F14)) 
    Output_i_1
       (.I0(COUNT[1]),
        .I1(COUNT[0]),
        .I2(\clk_int_reg_n_0_[0] ),
        .I3(\clk_int_reg_n_0_[1] ),
        .O(Output_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB6)) 
    Output_i_1__0
       (.I0(COUNT[0]),
        .I1(\clk_int_reg_n_0_[0] ),
        .I2(\clk_int_reg_n_0_[1] ),
        .O(Output_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h4074)) 
    Output_i_1__10
       (.I0(COUNT[1]),
        .I1(COUNT[0]),
        .I2(\clk_int_reg_n_0_[0] ),
        .I3(\clk_int_reg_n_0_[1] ),
        .O(Output_i_1__10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h8E)) 
    Output_i_1__11
       (.I0(COUNT[0]),
        .I1(\clk_int_reg_n_0_[0] ),
        .I2(\clk_int_reg_n_0_[1] ),
        .O(Output_i_1__11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h2E02)) 
    Output_i_1__12
       (.I0(COUNT[1]),
        .I1(COUNT[0]),
        .I2(\clk_int_reg_n_0_[1] ),
        .I3(\clk_int_reg_n_0_[0] ),
        .O(Output_i_1__12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h4D)) 
    Output_i_1__13
       (.I0(COUNT[0]),
        .I1(\clk_int_reg_n_0_[0] ),
        .I2(\clk_int_reg_n_0_[1] ),
        .O(Output_i_1__13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h20)) 
    Output_i_1__14
       (.I0(COUNT[0]),
        .I1(\clk_int_reg_n_0_[1] ),
        .I2(\clk_int_reg_n_0_[0] ),
        .O(Output_i_1__14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hC8)) 
    Output_i_1__15
       (.I0(COUNT[0]),
        .I1(\clk_int_reg_n_0_[0] ),
        .I2(\clk_int_reg_n_0_[1] ),
        .O(Output_i_1__15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6200)) 
    Output_i_1__16
       (.I0(COUNT[1]),
        .I1(COUNT[0]),
        .I2(\clk_int_reg_n_0_[1] ),
        .I3(\clk_int_reg_n_0_[0] ),
        .O(Output_i_1__16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h80)) 
    Output_i_1__17
       (.I0(COUNT[0]),
        .I1(\clk_int_reg_n_0_[1] ),
        .I2(\clk_int_reg_n_0_[0] ),
        .O(Output_i_1__17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h1071)) 
    Output_i_1__1__0
       (.I0(COUNT[1]),
        .I1(COUNT[0]),
        .I2(\clk_int_reg_n_0_[1] ),
        .I3(\clk_int_reg_n_0_[0] ),
        .O(Output_i_1__1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h24E2)) 
    Output_i_1__2__0
       (.I0(COUNT[1]),
        .I1(COUNT[0]),
        .I2(\clk_int_reg_n_0_[1] ),
        .I3(\clk_int_reg_n_0_[0] ),
        .O(Output_i_1__2__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h28)) 
    Output_i_1__3
       (.I0(COUNT[0]),
        .I1(\clk_int_reg_n_0_[1] ),
        .I2(\clk_int_reg_n_0_[0] ),
        .O(Output_i_1__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h1075)) 
    Output_i_1__4
       (.I0(COUNT[1]),
        .I1(COUNT[0]),
        .I2(\clk_int_reg_n_0_[1] ),
        .I3(\clk_int_reg_n_0_[0] ),
        .O(Output_i_1__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2E4E)) 
    Output_i_1__5
       (.I0(COUNT[1]),
        .I1(COUNT[0]),
        .I2(\clk_int_reg_n_0_[0] ),
        .I3(\clk_int_reg_n_0_[1] ),
        .O(Output_i_1__5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h41F7)) 
    Output_i_1__6
       (.I0(COUNT[1]),
        .I1(COUNT[0]),
        .I2(\clk_int_reg_n_0_[1] ),
        .I3(\clk_int_reg_n_0_[0] ),
        .O(Output_i_1__6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h0B)) 
    Output_i_1__7
       (.I0(\clk_int_reg_n_0_[1] ),
        .I1(COUNT[0]),
        .I2(\clk_int_reg_n_0_[0] ),
        .O(Output_i_1__7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h9F)) 
    Output_i_1__8
       (.I0(COUNT[0]),
        .I1(\clk_int_reg_n_0_[1] ),
        .I2(\clk_int_reg_n_0_[0] ),
        .O(Output_i_1__8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    Output_i_1__9
       (.I0(COUNT[0]),
        .I1(\clk_int_reg_n_0_[0] ),
        .I2(\clk_int_reg_n_0_[1] ),
        .O(Output_i_1__9_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_int[0]_i_2 
       (.I0(\clk_int_reg_n_0_[0] ),
        .O(\clk_int[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_int_reg[0] 
       (.C(Clk),
        .CE(1'b1),
        .D(\clk_int_reg[0]_i_1_n_7 ),
        .Q(\clk_int_reg_n_0_[0] ),
        .R(1'b0));
  CARRY4 \clk_int_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\NLW_clk_int_reg[0]_i_1_CO_UNCONNECTED [3],\clk_int_reg[0]_i_1_n_1 ,\clk_int_reg[0]_i_1_n_2 ,\clk_int_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\clk_int_reg[0]_i_1_n_4 ,\clk_int_reg[0]_i_1_n_5 ,\clk_int_reg[0]_i_1_n_6 ,\clk_int_reg[0]_i_1_n_7 }),
        .S({COUNT,\clk_int_reg_n_0_[1] ,\clk_int[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_int_reg[1] 
       (.C(Clk),
        .CE(1'b1),
        .D(\clk_int_reg[0]_i_1_n_6 ),
        .Q(\clk_int_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_int_reg[2] 
       (.C(Clk),
        .CE(1'b1),
        .D(\clk_int_reg[0]_i_1_n_5 ),
        .Q(COUNT[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \clk_int_reg[3] 
       (.C(Clk),
        .CE(1'b1),
        .D(\clk_int_reg[0]_i_1_n_4 ),
        .Q(COUNT[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    forme
       (.I0(\clk_int_reg_n_0_[1] ),
        .I1(\clk_int_reg_n_0_[0] ),
        .O(forme_n_0));
  HDMI_bd_Generateur_mur_0_1_rdc_load_Nbits reg_mur
       (.Clk(Clk),
        .Mur_out(Mur_out),
        .NewRandom(NewRandom),
        .\clk_int_reg[1] (forme_n_0),
        .\clk_int_reg[1]_0 (Output_i_1__7_n_0),
        .\clk_int_reg[2] (Output_i_1__13_n_0),
        .\clk_int_reg[2]_0 (Output_i_1__15_n_0),
        .\clk_int_reg[2]_1 (Output_i_1__3_n_0),
        .\clk_int_reg[2]_2 (Output_i_1__0_n_0),
        .\clk_int_reg[2]_3 (Output_i_1__9_n_0),
        .\clk_int_reg[2]_4 (Output_i_1__8_n_0),
        .\clk_int_reg[2]_5 (Output_i_1__14_n_0),
        .\clk_int_reg[2]_6 (Output_i_1__11_n_0),
        .\clk_int_reg[2]_7 (Output_i_1__17_n_0),
        .\clk_int_reg[3] (Output_i_1__2__0_n_0),
        .\clk_int_reg[3]_0 (Output_i_1_n_0),
        .\clk_int_reg[3]_1 (Output_i_1__1__0_n_0),
        .\clk_int_reg[3]_2 (Output_i_1__5_n_0),
        .\clk_int_reg[3]_3 (Output_i_1__6_n_0),
        .\clk_int_reg[3]_4 (Output_i_1__4_n_0),
        .\clk_int_reg[3]_5 (Output_i_1__12_n_0),
        .\clk_int_reg[3]_6 (Output_i_1__10_n_0),
        .\clk_int_reg[3]_7 (Output_i_1__16_n_0),
        .out({COUNT,\clk_int_reg_n_0_[1] ,\clk_int_reg_n_0_[0] }));
endmodule

(* ORIG_REF_NAME = "Registre_1B" *) 
module HDMI_bd_Generateur_mur_0_1_Registre_1B
   (Mur_out,
    \clk_int_reg[3] ,
    NewRandom,
    \clk_int_reg[2] ,
    Clk);
  output [0:0]Mur_out;
  input \clk_int_reg[3] ;
  input NewRandom;
  input \clk_int_reg[2] ;
  input Clk;

  wire Clk;
  wire [0:0]Mur_out;
  wire NewRandom;
  wire \clk_int_reg[2] ;
  wire \clk_int_reg[3] ;

  FDRE Output_reg
       (.C(Clk),
        .CE(NewRandom),
        .D(\clk_int_reg[2] ),
        .Q(Mur_out),
        .R(\clk_int_reg[3] ));
endmodule

(* ORIG_REF_NAME = "Registre_1B" *) 
module HDMI_bd_Generateur_mur_0_1_Registre_1B_0
   (Mur_out,
    NewRandom,
    \clk_int_reg[3] ,
    Clk);
  output [0:0]Mur_out;
  input NewRandom;
  input \clk_int_reg[3] ;
  input Clk;

  wire Clk;
  wire [0:0]Mur_out;
  wire NewRandom;
  wire \clk_int_reg[3] ;

  FDRE Output_reg
       (.C(Clk),
        .CE(NewRandom),
        .D(\clk_int_reg[3] ),
        .Q(Mur_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "Registre_1B" *) 
module HDMI_bd_Generateur_mur_0_1_Registre_1B_1
   (Mur_out,
    NewRandom,
    \clk_int_reg[3] ,
    Clk);
  output [0:0]Mur_out;
  input NewRandom;
  input \clk_int_reg[3] ;
  input Clk;

  wire Clk;
  wire [0:0]Mur_out;
  wire NewRandom;
  wire \clk_int_reg[3] ;

  FDRE Output_reg
       (.C(Clk),
        .CE(NewRandom),
        .D(\clk_int_reg[3] ),
        .Q(Mur_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "Registre_1B" *) 
module HDMI_bd_Generateur_mur_0_1_Registre_1B_10
   (Mur_out,
    \clk_int_reg[3] ,
    NewRandom,
    \clk_int_reg[2] ,
    Clk);
  output [0:0]Mur_out;
  input \clk_int_reg[3] ;
  input NewRandom;
  input \clk_int_reg[2] ;
  input Clk;

  wire Clk;
  wire [0:0]Mur_out;
  wire NewRandom;
  wire \clk_int_reg[2] ;
  wire \clk_int_reg[3] ;

  FDRE Output_reg
       (.C(Clk),
        .CE(NewRandom),
        .D(\clk_int_reg[2] ),
        .Q(Mur_out),
        .R(\clk_int_reg[3] ));
endmodule

(* ORIG_REF_NAME = "Registre_1B" *) 
module HDMI_bd_Generateur_mur_0_1_Registre_1B_11
   (Mur_out,
    \clk_int_reg[3] ,
    NewRandom,
    Clk,
    out);
  output [0:0]Mur_out;
  input \clk_int_reg[3] ;
  input NewRandom;
  input Clk;
  input [2:0]out;

  wire Clk;
  wire [0:0]Mur_out;
  wire NewRandom;
  wire Output_i_1__1_n_0;
  wire \clk_int_reg[3] ;
  wire [2:0]out;

  LUT3 #(
    .INIT(8'h04)) 
    Output_i_1__1
       (.I0(out[1]),
        .I1(out[0]),
        .I2(out[2]),
        .O(Output_i_1__1_n_0));
  FDRE Output_reg
       (.C(Clk),
        .CE(NewRandom),
        .D(Output_i_1__1_n_0),
        .Q(Mur_out),
        .R(\clk_int_reg[3] ));
endmodule

(* ORIG_REF_NAME = "Registre_1B" *) 
module HDMI_bd_Generateur_mur_0_1_Registre_1B_12
   (Mur_out,
    \clk_int_reg[3] ,
    NewRandom,
    \clk_int_reg[2] ,
    Clk);
  output [0:0]Mur_out;
  input \clk_int_reg[3] ;
  input NewRandom;
  input \clk_int_reg[2] ;
  input Clk;

  wire Clk;
  wire [0:0]Mur_out;
  wire NewRandom;
  wire \clk_int_reg[2] ;
  wire \clk_int_reg[3] ;

  FDRE Output_reg
       (.C(Clk),
        .CE(NewRandom),
        .D(\clk_int_reg[2] ),
        .Q(Mur_out),
        .R(\clk_int_reg[3] ));
endmodule

(* ORIG_REF_NAME = "Registre_1B" *) 
module HDMI_bd_Generateur_mur_0_1_Registre_1B_13
   (Mur_out,
    \clk_int_reg[3] ,
    NewRandom,
    \clk_int_reg[2] ,
    Clk);
  output [0:0]Mur_out;
  input \clk_int_reg[3] ;
  input NewRandom;
  input \clk_int_reg[2] ;
  input Clk;

  wire Clk;
  wire [0:0]Mur_out;
  wire NewRandom;
  wire \clk_int_reg[2] ;
  wire \clk_int_reg[3] ;

  FDRE Output_reg
       (.C(Clk),
        .CE(NewRandom),
        .D(\clk_int_reg[2] ),
        .Q(Mur_out),
        .R(\clk_int_reg[3] ));
endmodule

(* ORIG_REF_NAME = "Registre_1B" *) 
module HDMI_bd_Generateur_mur_0_1_Registre_1B_14
   (Mur_out,
    NewRandom,
    \clk_int_reg[3] ,
    Clk);
  output [0:0]Mur_out;
  input NewRandom;
  input \clk_int_reg[3] ;
  input Clk;

  wire Clk;
  wire [0:0]Mur_out;
  wire NewRandom;
  wire \clk_int_reg[3] ;

  FDRE Output_reg
       (.C(Clk),
        .CE(NewRandom),
        .D(\clk_int_reg[3] ),
        .Q(Mur_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "Registre_1B" *) 
module HDMI_bd_Generateur_mur_0_1_Registre_1B_15
   (Mur_out,
    \clk_int_reg[3] ,
    NewRandom,
    \clk_int_reg[2] ,
    Clk);
  output [0:0]Mur_out;
  input \clk_int_reg[3] ;
  input NewRandom;
  input \clk_int_reg[2] ;
  input Clk;

  wire Clk;
  wire [0:0]Mur_out;
  wire NewRandom;
  wire \clk_int_reg[2] ;
  wire \clk_int_reg[3] ;

  FDRE Output_reg
       (.C(Clk),
        .CE(NewRandom),
        .D(\clk_int_reg[2] ),
        .Q(Mur_out),
        .R(\clk_int_reg[3] ));
endmodule

(* ORIG_REF_NAME = "Registre_1B" *) 
module HDMI_bd_Generateur_mur_0_1_Registre_1B_16
   (Mur_out,
    Output_reg_0,
    NewRandom,
    Clk,
    out);
  output [0:0]Mur_out;
  output Output_reg_0;
  input NewRandom;
  input Clk;
  input [2:0]out;

  wire Clk;
  wire [0:0]Mur_out;
  wire NewRandom;
  wire Output_i_2_n_0;
  wire Output_reg_0;
  wire [2:0]out;

  LUT2 #(
    .INIT(4'h8)) 
    Output_i_1__0__0
       (.I0(out[2]),
        .I1(NewRandom),
        .O(Output_reg_0));
  LUT2 #(
    .INIT(4'h2)) 
    Output_i_2
       (.I0(out[0]),
        .I1(out[1]),
        .O(Output_i_2_n_0));
  FDRE Output_reg
       (.C(Clk),
        .CE(NewRandom),
        .D(Output_i_2_n_0),
        .Q(Mur_out),
        .R(Output_reg_0));
endmodule

(* ORIG_REF_NAME = "Registre_1B" *) 
module HDMI_bd_Generateur_mur_0_1_Registre_1B_17
   (Mur_out,
    \clk_int_reg[3] ,
    NewRandom,
    \clk_int_reg[2] ,
    Clk);
  output [0:0]Mur_out;
  input \clk_int_reg[3] ;
  input NewRandom;
  input \clk_int_reg[2] ;
  input Clk;

  wire Clk;
  wire [0:0]Mur_out;
  wire NewRandom;
  wire \clk_int_reg[2] ;
  wire \clk_int_reg[3] ;

  FDRE Output_reg
       (.C(Clk),
        .CE(NewRandom),
        .D(\clk_int_reg[2] ),
        .Q(Mur_out),
        .R(\clk_int_reg[3] ));
endmodule

(* ORIG_REF_NAME = "Registre_1B" *) 
module HDMI_bd_Generateur_mur_0_1_Registre_1B_18
   (Mur_out,
    NewRandom,
    \clk_int_reg[3] ,
    Clk);
  output [0:0]Mur_out;
  input NewRandom;
  input \clk_int_reg[3] ;
  input Clk;

  wire Clk;
  wire [0:0]Mur_out;
  wire NewRandom;
  wire \clk_int_reg[3] ;

  FDRE Output_reg
       (.C(Clk),
        .CE(NewRandom),
        .D(\clk_int_reg[3] ),
        .Q(Mur_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "Registre_1B" *) 
module HDMI_bd_Generateur_mur_0_1_Registre_1B_19
   (Mur_out,
    NewRandom,
    \clk_int_reg[3] ,
    Clk);
  output [0:0]Mur_out;
  input NewRandom;
  input \clk_int_reg[3] ;
  input Clk;

  wire Clk;
  wire [0:0]Mur_out;
  wire NewRandom;
  wire \clk_int_reg[3] ;

  FDRE Output_reg
       (.C(Clk),
        .CE(NewRandom),
        .D(\clk_int_reg[3] ),
        .Q(Mur_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "Registre_1B" *) 
module HDMI_bd_Generateur_mur_0_1_Registre_1B_2
   (Mur_out,
    NewRandom,
    \clk_int_reg[3] ,
    Clk);
  output [0:0]Mur_out;
  input NewRandom;
  input \clk_int_reg[3] ;
  input Clk;

  wire Clk;
  wire [0:0]Mur_out;
  wire NewRandom;
  wire \clk_int_reg[3] ;

  FDRE Output_reg
       (.C(Clk),
        .CE(NewRandom),
        .D(\clk_int_reg[3] ),
        .Q(Mur_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "Registre_1B" *) 
module HDMI_bd_Generateur_mur_0_1_Registre_1B_20
   (Mur_out,
    NewRandom,
    \clk_int_reg[3] ,
    Clk);
  output [0:0]Mur_out;
  input NewRandom;
  input \clk_int_reg[3] ;
  input Clk;

  wire Clk;
  wire [0:0]Mur_out;
  wire NewRandom;
  wire \clk_int_reg[3] ;

  FDRE Output_reg
       (.C(Clk),
        .CE(NewRandom),
        .D(\clk_int_reg[3] ),
        .Q(Mur_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "Registre_1B" *) 
module HDMI_bd_Generateur_mur_0_1_Registre_1B_21
   (Mur_out,
    \clk_int_reg[3] ,
    NewRandom,
    \clk_int_reg[1] ,
    Clk);
  output [0:0]Mur_out;
  input \clk_int_reg[3] ;
  input NewRandom;
  input \clk_int_reg[1] ;
  input Clk;

  wire Clk;
  wire [0:0]Mur_out;
  wire NewRandom;
  wire \clk_int_reg[1] ;
  wire \clk_int_reg[3] ;

  FDRE Output_reg
       (.C(Clk),
        .CE(NewRandom),
        .D(\clk_int_reg[1] ),
        .Q(Mur_out),
        .R(\clk_int_reg[3] ));
endmodule

(* ORIG_REF_NAME = "Registre_1B" *) 
module HDMI_bd_Generateur_mur_0_1_Registre_1B_22
   (Mur_out,
    \clk_int_reg[3] ,
    NewRandom,
    \clk_int_reg[2] ,
    Clk);
  output [0:0]Mur_out;
  input \clk_int_reg[3] ;
  input NewRandom;
  input \clk_int_reg[2] ;
  input Clk;

  wire Clk;
  wire [0:0]Mur_out;
  wire NewRandom;
  wire \clk_int_reg[2] ;
  wire \clk_int_reg[3] ;

  FDRE Output_reg
       (.C(Clk),
        .CE(NewRandom),
        .D(\clk_int_reg[2] ),
        .Q(Mur_out),
        .R(\clk_int_reg[3] ));
endmodule

(* ORIG_REF_NAME = "Registre_1B" *) 
module HDMI_bd_Generateur_mur_0_1_Registre_1B_3
   (Mur_out,
    \clk_int_reg[3] ,
    NewRandom,
    \clk_int_reg[1] ,
    Clk);
  output [0:0]Mur_out;
  input \clk_int_reg[3] ;
  input NewRandom;
  input \clk_int_reg[1] ;
  input Clk;

  wire Clk;
  wire [0:0]Mur_out;
  wire NewRandom;
  wire \clk_int_reg[1] ;
  wire \clk_int_reg[3] ;

  FDRE Output_reg
       (.C(Clk),
        .CE(NewRandom),
        .D(\clk_int_reg[1] ),
        .Q(Mur_out),
        .R(\clk_int_reg[3] ));
endmodule

(* ORIG_REF_NAME = "Registre_1B" *) 
module HDMI_bd_Generateur_mur_0_1_Registre_1B_4
   (Mur_out,
    \clk_int_reg[3] ,
    NewRandom,
    Clk,
    out);
  output [0:0]Mur_out;
  input \clk_int_reg[3] ;
  input NewRandom;
  input Clk;
  input [2:0]out;

  wire Clk;
  wire [0:0]Mur_out;
  wire NewRandom;
  wire Output_i_1__18_n_0;
  wire \clk_int_reg[3] ;
  wire [2:0]out;

  LUT3 #(
    .INIT(8'h02)) 
    Output_i_1__18
       (.I0(out[1]),
        .I1(out[0]),
        .I2(out[2]),
        .O(Output_i_1__18_n_0));
  FDRE Output_reg
       (.C(Clk),
        .CE(NewRandom),
        .D(Output_i_1__18_n_0),
        .Q(Mur_out),
        .R(\clk_int_reg[3] ));
endmodule

(* ORIG_REF_NAME = "Registre_1B" *) 
module HDMI_bd_Generateur_mur_0_1_Registre_1B_5
   (Mur_out,
    \clk_int_reg[3] ,
    NewRandom,
    \clk_int_reg[2] ,
    Clk);
  output [0:0]Mur_out;
  input \clk_int_reg[3] ;
  input NewRandom;
  input \clk_int_reg[2] ;
  input Clk;

  wire Clk;
  wire [0:0]Mur_out;
  wire NewRandom;
  wire \clk_int_reg[2] ;
  wire \clk_int_reg[3] ;

  FDRE Output_reg
       (.C(Clk),
        .CE(NewRandom),
        .D(\clk_int_reg[2] ),
        .Q(Mur_out),
        .R(\clk_int_reg[3] ));
endmodule

(* ORIG_REF_NAME = "Registre_1B" *) 
module HDMI_bd_Generateur_mur_0_1_Registre_1B_6
   (Mur_out,
    \clk_int_reg[3] ,
    NewRandom,
    \clk_int_reg[2] ,
    Clk);
  output [0:0]Mur_out;
  input \clk_int_reg[3] ;
  input NewRandom;
  input \clk_int_reg[2] ;
  input Clk;

  wire Clk;
  wire [0:0]Mur_out;
  wire NewRandom;
  wire \clk_int_reg[2] ;
  wire \clk_int_reg[3] ;

  FDRE Output_reg
       (.C(Clk),
        .CE(NewRandom),
        .D(\clk_int_reg[2] ),
        .Q(Mur_out),
        .R(\clk_int_reg[3] ));
endmodule

(* ORIG_REF_NAME = "Registre_1B" *) 
module HDMI_bd_Generateur_mur_0_1_Registre_1B_7
   (Mur_out,
    NewRandom,
    \clk_int_reg[3] ,
    Clk);
  output [0:0]Mur_out;
  input NewRandom;
  input \clk_int_reg[3] ;
  input Clk;

  wire Clk;
  wire [0:0]Mur_out;
  wire NewRandom;
  wire \clk_int_reg[3] ;

  FDRE Output_reg
       (.C(Clk),
        .CE(NewRandom),
        .D(\clk_int_reg[3] ),
        .Q(Mur_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "Registre_1B" *) 
module HDMI_bd_Generateur_mur_0_1_Registre_1B_8
   (Mur_out,
    Output_reg_0,
    NewRandom,
    \clk_int_reg[2] ,
    Clk,
    out);
  output [0:0]Mur_out;
  output Output_reg_0;
  input NewRandom;
  input \clk_int_reg[2] ;
  input Clk;
  input [0:0]out;

  wire Clk;
  wire [0:0]Mur_out;
  wire NewRandom;
  wire Output_reg_0;
  wire \clk_int_reg[2] ;
  wire [0:0]out;

  LUT2 #(
    .INIT(4'h2)) 
    Output_i_1__2
       (.I0(NewRandom),
        .I1(out),
        .O(Output_reg_0));
  FDRE Output_reg
       (.C(Clk),
        .CE(NewRandom),
        .D(\clk_int_reg[2] ),
        .Q(Mur_out),
        .R(Output_reg_0));
endmodule

(* ORIG_REF_NAME = "Registre_1B" *) 
module HDMI_bd_Generateur_mur_0_1_Registre_1B_9
   (Mur_out,
    NewRandom,
    \clk_int_reg[3] ,
    Clk);
  output [0:0]Mur_out;
  input NewRandom;
  input \clk_int_reg[3] ;
  input Clk;

  wire Clk;
  wire [0:0]Mur_out;
  wire NewRandom;
  wire \clk_int_reg[3] ;

  FDRE Output_reg
       (.C(Clk),
        .CE(NewRandom),
        .D(\clk_int_reg[3] ),
        .Q(Mur_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "rdc_load_Nbits" *) 
module HDMI_bd_Generateur_mur_0_1_rdc_load_Nbits
   (Mur_out,
    NewRandom,
    \clk_int_reg[3] ,
    Clk,
    \clk_int_reg[3]_0 ,
    \clk_int_reg[3]_1 ,
    \clk_int_reg[3]_2 ,
    \clk_int_reg[3]_3 ,
    \clk_int_reg[3]_4 ,
    \clk_int_reg[3]_5 ,
    \clk_int_reg[3]_6 ,
    \clk_int_reg[3]_7 ,
    \clk_int_reg[1] ,
    \clk_int_reg[1]_0 ,
    \clk_int_reg[2] ,
    \clk_int_reg[2]_0 ,
    \clk_int_reg[2]_1 ,
    \clk_int_reg[2]_2 ,
    \clk_int_reg[2]_3 ,
    \clk_int_reg[2]_4 ,
    \clk_int_reg[2]_5 ,
    \clk_int_reg[2]_6 ,
    \clk_int_reg[2]_7 ,
    out);
  output [23:0]Mur_out;
  input NewRandom;
  input \clk_int_reg[3] ;
  input Clk;
  input \clk_int_reg[3]_0 ;
  input \clk_int_reg[3]_1 ;
  input \clk_int_reg[3]_2 ;
  input \clk_int_reg[3]_3 ;
  input \clk_int_reg[3]_4 ;
  input \clk_int_reg[3]_5 ;
  input \clk_int_reg[3]_6 ;
  input \clk_int_reg[3]_7 ;
  input \clk_int_reg[1] ;
  input \clk_int_reg[1]_0 ;
  input \clk_int_reg[2] ;
  input \clk_int_reg[2]_0 ;
  input \clk_int_reg[2]_1 ;
  input \clk_int_reg[2]_2 ;
  input \clk_int_reg[2]_3 ;
  input \clk_int_reg[2]_4 ;
  input \clk_int_reg[2]_5 ;
  input \clk_int_reg[2]_6 ;
  input \clk_int_reg[2]_7 ;
  input [3:0]out;

  wire Clk;
  wire [23:0]Mur_out;
  wire NewRandom;
  wire \clk_int_reg[1] ;
  wire \clk_int_reg[1]_0 ;
  wire \clk_int_reg[2] ;
  wire \clk_int_reg[2]_0 ;
  wire \clk_int_reg[2]_1 ;
  wire \clk_int_reg[2]_2 ;
  wire \clk_int_reg[2]_3 ;
  wire \clk_int_reg[2]_4 ;
  wire \clk_int_reg[2]_5 ;
  wire \clk_int_reg[2]_6 ;
  wire \clk_int_reg[2]_7 ;
  wire \clk_int_reg[3] ;
  wire \clk_int_reg[3]_0 ;
  wire \clk_int_reg[3]_1 ;
  wire \clk_int_reg[3]_2 ;
  wire \clk_int_reg[3]_3 ;
  wire \clk_int_reg[3]_4 ;
  wire \clk_int_reg[3]_5 ;
  wire \clk_int_reg[3]_6 ;
  wire \clk_int_reg[3]_7 ;
  wire [3:0]out;
  wire \regs[1].UREG_I_n_1 ;
  wire \regs[29].UREG_I_n_1 ;

  HDMI_bd_Generateur_mur_0_1_Registre_1B \regs[10].UREG_I 
       (.Clk(Clk),
        .Mur_out(Mur_out[7]),
        .NewRandom(NewRandom),
        .\clk_int_reg[2] (\clk_int_reg[2]_4 ),
        .\clk_int_reg[3] (\regs[1].UREG_I_n_1 ));
  HDMI_bd_Generateur_mur_0_1_Registre_1B_0 \regs[11].UREG_I 
       (.Clk(Clk),
        .Mur_out(Mur_out[8]),
        .NewRandom(NewRandom),
        .\clk_int_reg[3] (\clk_int_reg[3]_2 ));
  HDMI_bd_Generateur_mur_0_1_Registre_1B_1 \regs[12].UREG_I 
       (.Clk(Clk),
        .Mur_out(Mur_out[9]),
        .NewRandom(NewRandom),
        .\clk_int_reg[3] (\clk_int_reg[3]_3 ));
  HDMI_bd_Generateur_mur_0_1_Registre_1B_2 \regs[13].UREG_I 
       (.Clk(Clk),
        .Mur_out(Mur_out[10]),
        .NewRandom(NewRandom),
        .\clk_int_reg[3] (\clk_int_reg[3]_4 ));
  HDMI_bd_Generateur_mur_0_1_Registre_1B_3 \regs[14].UREG_I 
       (.Clk(Clk),
        .Mur_out(Mur_out[11]),
        .NewRandom(NewRandom),
        .\clk_int_reg[1] (\clk_int_reg[1]_0 ),
        .\clk_int_reg[3] (\regs[29].UREG_I_n_1 ));
  HDMI_bd_Generateur_mur_0_1_Registre_1B_4 \regs[15].UREG_I 
       (.Clk(Clk),
        .Mur_out(Mur_out[12]),
        .NewRandom(NewRandom),
        .\clk_int_reg[3] (\regs[29].UREG_I_n_1 ),
        .out(out[2:0]));
  HDMI_bd_Generateur_mur_0_1_Registre_1B_5 \regs[17].UREG_I 
       (.Clk(Clk),
        .Mur_out(Mur_out[13]),
        .NewRandom(NewRandom),
        .\clk_int_reg[2] (\clk_int_reg[2]_5 ),
        .\clk_int_reg[3] (\regs[1].UREG_I_n_1 ));
  HDMI_bd_Generateur_mur_0_1_Registre_1B_6 \regs[18].UREG_I 
       (.Clk(Clk),
        .Mur_out(Mur_out[14]),
        .NewRandom(NewRandom),
        .\clk_int_reg[2] (\clk_int_reg[2]_6 ),
        .\clk_int_reg[3] (\regs[1].UREG_I_n_1 ));
  HDMI_bd_Generateur_mur_0_1_Registre_1B_7 \regs[19].UREG_I 
       (.Clk(Clk),
        .Mur_out(Mur_out[15]),
        .NewRandom(NewRandom),
        .\clk_int_reg[3] (\clk_int_reg[3]_5 ));
  HDMI_bd_Generateur_mur_0_1_Registre_1B_8 \regs[1].UREG_I 
       (.Clk(Clk),
        .Mur_out(Mur_out[0]),
        .NewRandom(NewRandom),
        .Output_reg_0(\regs[1].UREG_I_n_1 ),
        .\clk_int_reg[2] (\clk_int_reg[2]_1 ),
        .out(out[3]));
  HDMI_bd_Generateur_mur_0_1_Registre_1B_9 \regs[20].UREG_I 
       (.Clk(Clk),
        .Mur_out(Mur_out[16]),
        .NewRandom(NewRandom),
        .\clk_int_reg[3] (\clk_int_reg[3]_6 ));
  HDMI_bd_Generateur_mur_0_1_Registre_1B_10 \regs[21].UREG_I 
       (.Clk(Clk),
        .Mur_out(Mur_out[17]),
        .NewRandom(NewRandom),
        .\clk_int_reg[2] (\clk_int_reg[2] ),
        .\clk_int_reg[3] (\regs[29].UREG_I_n_1 ));
  HDMI_bd_Generateur_mur_0_1_Registre_1B_11 \regs[22].UREG_I 
       (.Clk(Clk),
        .Mur_out(Mur_out[18]),
        .NewRandom(NewRandom),
        .\clk_int_reg[3] (\regs[29].UREG_I_n_1 ),
        .out(out[2:0]));
  HDMI_bd_Generateur_mur_0_1_Registre_1B_12 \regs[25].UREG_I 
       (.Clk(Clk),
        .Mur_out(Mur_out[19]),
        .NewRandom(NewRandom),
        .\clk_int_reg[2] (\clk_int_reg[2]_7 ),
        .\clk_int_reg[3] (\regs[1].UREG_I_n_1 ));
  HDMI_bd_Generateur_mur_0_1_Registre_1B_13 \regs[26].UREG_I 
       (.Clk(Clk),
        .Mur_out(Mur_out[20]),
        .NewRandom(NewRandom),
        .\clk_int_reg[2] (\clk_int_reg[2]_0 ),
        .\clk_int_reg[3] (\regs[1].UREG_I_n_1 ));
  HDMI_bd_Generateur_mur_0_1_Registre_1B_14 \regs[27].UREG_I 
       (.Clk(Clk),
        .Mur_out(Mur_out[21]),
        .NewRandom(NewRandom),
        .\clk_int_reg[3] (\clk_int_reg[3]_7 ));
  HDMI_bd_Generateur_mur_0_1_Registre_1B_15 \regs[28].UREG_I 
       (.Clk(Clk),
        .Mur_out(Mur_out[22]),
        .NewRandom(NewRandom),
        .\clk_int_reg[2] (\clk_int_reg[2]_0 ),
        .\clk_int_reg[3] (\regs[29].UREG_I_n_1 ));
  HDMI_bd_Generateur_mur_0_1_Registre_1B_16 \regs[29].UREG_I 
       (.Clk(Clk),
        .Mur_out(Mur_out[23]),
        .NewRandom(NewRandom),
        .Output_reg_0(\regs[29].UREG_I_n_1 ),
        .out({out[3:2],out[0]}));
  HDMI_bd_Generateur_mur_0_1_Registre_1B_17 \regs[2].UREG_I 
       (.Clk(Clk),
        .Mur_out(Mur_out[1]),
        .NewRandom(NewRandom),
        .\clk_int_reg[2] (\clk_int_reg[2]_2 ),
        .\clk_int_reg[3] (\regs[1].UREG_I_n_1 ));
  HDMI_bd_Generateur_mur_0_1_Registre_1B_18 \regs[3].UREG_I 
       (.Clk(Clk),
        .Mur_out(Mur_out[2]),
        .NewRandom(NewRandom),
        .\clk_int_reg[3] (\clk_int_reg[3] ));
  HDMI_bd_Generateur_mur_0_1_Registre_1B_19 \regs[4].UREG_I 
       (.Clk(Clk),
        .Mur_out(Mur_out[3]),
        .NewRandom(NewRandom),
        .\clk_int_reg[3] (\clk_int_reg[3]_0 ));
  HDMI_bd_Generateur_mur_0_1_Registre_1B_20 \regs[5].UREG_I 
       (.Clk(Clk),
        .Mur_out(Mur_out[4]),
        .NewRandom(NewRandom),
        .\clk_int_reg[3] (\clk_int_reg[3]_1 ));
  HDMI_bd_Generateur_mur_0_1_Registre_1B_21 \regs[6].UREG_I 
       (.Clk(Clk),
        .Mur_out(Mur_out[5]),
        .NewRandom(NewRandom),
        .\clk_int_reg[1] (\clk_int_reg[1] ),
        .\clk_int_reg[3] (\regs[29].UREG_I_n_1 ));
  HDMI_bd_Generateur_mur_0_1_Registre_1B_22 \regs[9].UREG_I 
       (.Clk(Clk),
        .Mur_out(Mur_out[6]),
        .NewRandom(NewRandom),
        .\clk_int_reg[2] (\clk_int_reg[2]_3 ),
        .\clk_int_reg[3] (\regs[1].UREG_I_n_1 ));
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
