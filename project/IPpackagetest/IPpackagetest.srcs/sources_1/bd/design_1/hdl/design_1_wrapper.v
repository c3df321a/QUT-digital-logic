//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Wed Oct 18 17:32:09 2023
//Host        : LAPTOP-N4GO34NJ running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
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

  wire [7:0]a_0;
  wire [7:0]b_0;
  wire [7:0]c_0;
  wire [7:0]c_1;
  wire [7:0]d_0;
  wire [7:0]d_1;
  wire [7:0]e_0;
  wire [7:0]e_1;
  wire [7:0]f_0;
  wire [7:0]f_1;
  wire [7:0]g_0;
  wire [7:0]g_1;
  wire [7:0]h_0;
  wire [7:0]q_0;

  design_1 design_1_i
       (.a_0(a_0),
        .b_0(b_0),
        .c_0(c_0),
        .c_1(c_1),
        .d_0(d_0),
        .d_1(d_1),
        .e_0(e_0),
        .e_1(e_1),
        .f_0(f_0),
        .f_1(f_1),
        .g_0(g_0),
        .g_1(g_1),
        .h_0(h_0),
        .q_0(q_0));
endmodule
