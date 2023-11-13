//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Wed Nov  8 16:36:18 2023
//Host        : LAPTOP-N4GO34NJ running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=8,numReposBlks=8,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (CLK,
    CLR,
    D_0,
    D_1,
    D_2,
    D_3,
    D_4,
    D_5,
    D_6,
    D_7,
    NQ_0,
    NQ_1,
    NQ_2,
    NQ_3,
    NQ_4,
    NQ_5,
    NQ_6,
    NQ_7,
    Q_0,
    Q_1,
    Q_2,
    Q_3,
    Q_4,
    Q_5,
    Q_6,
    Q_7,
    WEN);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN design_1_CLK_0, FREQ_HZ 100000000, PHASE 0.000" *) input CLK;
  input CLR;
  input D_0;
  input D_1;
  input D_2;
  input D_3;
  input D_4;
  input D_5;
  input D_6;
  input D_7;
  output NQ_0;
  output NQ_1;
  output NQ_2;
  output NQ_3;
  output NQ_4;
  output NQ_5;
  output NQ_6;
  output NQ_7;
  output Q_0;
  output Q_1;
  output Q_2;
  output Q_3;
  output Q_4;
  output Q_5;
  output Q_6;
  output Q_7;
  input WEN;

  wire CLK_0_1;
  wire CLR_0_1;
  wire D_0_1;
  wire D_1_1;
  wire D_2_1;
  wire D_3_1;
  wire D_4_1;
  wire D_5_1;
  wire D_6_1;
  wire D_7_1;
  wire WEN_0_1;
  wire dffe_0_NQ;
  wire dffe_0_Q;
  wire dffe_1_NQ;
  wire dffe_1_Q;
  wire dffe_2_NQ;
  wire dffe_2_Q;
  wire dffe_3_NQ;
  wire dffe_3_Q;
  wire dffe_4_NQ;
  wire dffe_4_Q;
  wire dffe_5_NQ;
  wire dffe_5_Q;
  wire dffe_6_NQ;
  wire dffe_6_Q;
  wire dffe_7_NQ;
  wire dffe_7_Q;

  assign CLK_0_1 = CLK;
  assign CLR_0_1 = CLR;
  assign D_0_1 = D_0;
  assign D_1_1 = D_1;
  assign D_2_1 = D_2;
  assign D_3_1 = D_3;
  assign D_4_1 = D_4;
  assign D_5_1 = D_5;
  assign D_6_1 = D_6;
  assign D_7_1 = D_7;
  assign NQ_0 = dffe_0_NQ;
  assign NQ_1 = dffe_1_NQ;
  assign NQ_2 = dffe_2_NQ;
  assign NQ_3 = dffe_3_NQ;
  assign NQ_4 = dffe_4_NQ;
  assign NQ_5 = dffe_5_NQ;
  assign NQ_6 = dffe_6_NQ;
  assign NQ_7 = dffe_7_NQ;
  assign Q_0 = dffe_0_Q;
  assign Q_1 = dffe_1_Q;
  assign Q_2 = dffe_2_Q;
  assign Q_3 = dffe_3_Q;
  assign Q_4 = dffe_4_Q;
  assign Q_5 = dffe_5_Q;
  assign Q_6 = dffe_6_Q;
  assign Q_7 = dffe_7_Q;
  assign WEN_0_1 = WEN;
  design_1_dffe_0_0 dffe_0
       (.CLK(CLK_0_1),
        .CLR(CLR_0_1),
        .D(D_0_1),
        .NQ(dffe_0_NQ),
        .Q(dffe_0_Q),
        .WEN(WEN_0_1));
  design_1_dffe_0_1 dffe_1
       (.CLK(CLK_0_1),
        .CLR(CLR_0_1),
        .D(D_1_1),
        .NQ(dffe_1_NQ),
        .Q(dffe_1_Q),
        .WEN(WEN_0_1));
  design_1_dffe_0_2 dffe_2
       (.CLK(CLK_0_1),
        .CLR(CLR_0_1),
        .D(D_2_1),
        .NQ(dffe_2_NQ),
        .Q(dffe_2_Q),
        .WEN(WEN_0_1));
  design_1_dffe_0_3 dffe_3
       (.CLK(CLK_0_1),
        .CLR(CLR_0_1),
        .D(D_3_1),
        .NQ(dffe_3_NQ),
        .Q(dffe_3_Q),
        .WEN(WEN_0_1));
  design_1_dffe_0_4 dffe_4
       (.CLK(CLK_0_1),
        .CLR(CLR_0_1),
        .D(D_4_1),
        .NQ(dffe_4_NQ),
        .Q(dffe_4_Q),
        .WEN(WEN_0_1));
  design_1_dffe_0_5 dffe_5
       (.CLK(CLK_0_1),
        .CLR(CLR_0_1),
        .D(D_5_1),
        .NQ(dffe_5_NQ),
        .Q(dffe_5_Q),
        .WEN(WEN_0_1));
  design_1_dffe_0_6 dffe_6
       (.CLK(CLK_0_1),
        .CLR(CLR_0_1),
        .D(D_6_1),
        .NQ(dffe_6_NQ),
        .Q(dffe_6_Q),
        .WEN(WEN_0_1));
  design_1_dffe_0_7 dffe_7
       (.CLK(CLK_0_1),
        .CLR(CLR_0_1),
        .D(D_7_1),
        .NQ(dffe_7_NQ),
        .Q(dffe_7_Q),
        .WEN(WEN_0_1));
endmodule
