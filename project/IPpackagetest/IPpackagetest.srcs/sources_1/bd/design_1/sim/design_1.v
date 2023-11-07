//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Wed Oct 18 17:32:09 2023
//Host        : LAPTOP-N4GO34NJ running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (a_0,
    b_0,
    c_0,
    c_1,
    d_0,
    d_1,
    e_0,
    e_1,
    f_0,
    f_1,
    g_0,
    g_1,
    h_0,
    q_0);
  input [7:0]a_0;
  input [7:0]b_0;
  input [7:0]c_0;
  input [7:0]c_1;
  input [7:0]d_0;
  input [7:0]d_1;
  input [7:0]e_0;
  input [7:0]e_1;
  input [7:0]f_0;
  input [7:0]f_1;
  input [7:0]g_0;
  input [7:0]g_1;
  input [7:0]h_0;
  output [7:0]q_0;

  wire [7:0]a_0_1;
  wire [7:0]andgate_0_q;
  wire [7:0]andgate_1_q;
  wire [7:0]b_0_1;
  wire [7:0]c_0_1;
  wire [7:0]c_1_1;
  wire [7:0]d_0_1;
  wire [7:0]d_1_1;
  wire [7:0]e_0_1;
  wire [7:0]e_1_1;
  wire [7:0]f_0_1;
  wire [7:0]f_1_1;
  wire [7:0]g_0_1;
  wire [7:0]g_1_1;
  wire [7:0]h_0_1;

  assign a_0_1 = a_0[7:0];
  assign b_0_1 = b_0[7:0];
  assign c_0_1 = c_0[7:0];
  assign c_1_1 = c_1[7:0];
  assign d_0_1 = d_0[7:0];
  assign d_1_1 = d_1[7:0];
  assign e_0_1 = e_0[7:0];
  assign e_1_1 = e_1[7:0];
  assign f_0_1 = f_0[7:0];
  assign f_1_1 = f_1[7:0];
  assign g_0_1 = g_0[7:0];
  assign g_1_1 = g_1[7:0];
  assign h_0_1 = h_0[7:0];
  assign q_0[7:0] = andgate_1_q;
  design_1_andgate_0_0 andgate_0
       (.a(a_0_1),
        .b(b_0_1),
        .c(c_1_1),
        .d(d_1_1),
        .e(e_1_1),
        .f(f_1_1),
        .g(g_1_1),
        .q(andgate_0_q));
  design_1_andgate_1_0 andgate_1
       (.b(andgate_0_q),
        .c(c_0_1),
        .d(d_0_1),
        .e(e_0_1),
        .f(f_0_1),
        .g(g_0_1),
        .h(h_0_1),
        .q(andgate_1_q));
endmodule
