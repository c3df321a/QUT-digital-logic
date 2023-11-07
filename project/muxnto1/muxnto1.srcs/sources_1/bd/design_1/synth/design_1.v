//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Fri Oct 27 16:43:33 2023
//Host        : LAPTOP-N4GO34NJ running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=8,numReposBlks=8,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (D10_16_0,
    D11_16_0,
    D12_16_0,
    D13_16_0,
    D14_16_0,
    D15_16_0,
    D16_16_0,
    D1_16_0,
    D1_2_0,
    D1_4_0,
    D1_8_0,
    D1_8_1,
    D1_8_2,
    D1_8_3,
    D2_16_0,
    D2_2_0,
    D2_4_0,
    D2_8_0,
    D2_8_1,
    D2_8_2,
    D2_8_3,
    D3_16_0,
    D3_4_0,
    D3_8_0,
    D3_8_1,
    D3_8_2,
    D3_8_3,
    D4_16_0,
    D4_4_0,
    D4_8_0,
    D4_8_1,
    D4_8_2,
    D4_8_3,
    D5_16_0,
    D5_8_0,
    D5_8_1,
    D5_8_2,
    D5_8_3,
    D6_16_0,
    D6_8_0,
    D6_8_1,
    D6_8_2,
    D6_8_3,
    D7_16_0,
    D7_8_0,
    D7_8_1,
    D7_8_2,
    D7_8_3,
    D8_16_0,
    D8_8_0,
    D8_8_1,
    D8_8_2,
    D8_8_3,
    D9_16_0,
    P1_0,
    P1_16_0,
    P1_2_0,
    P1_4_0,
    P1_8_0,
    P1_8_1,
    P1_8_2,
    P1_8_3,
    P2_0,
    P2_16_0,
    P2_4_0,
    P2_8_0,
    P2_8_1,
    P2_8_2,
    P2_8_3,
    P3_0,
    P3_16_0,
    P3_8_0,
    P3_8_1,
    P3_8_2,
    P3_8_3,
    P4_16_0,
    out1_2_0,
    out2_4_0,
    out3_8_0,
    out3_8_1,
    out3_8_2,
    out3_8_3,
    out4_16_0);
  input [3:0]D10_16_0;
  input [3:0]D11_16_0;
  input [3:0]D12_16_0;
  input [3:0]D13_16_0;
  input [3:0]D14_16_0;
  input [3:0]D15_16_0;
  input [3:0]D16_16_0;
  input [3:0]D1_16_0;
  input [3:0]D1_2_0;
  input [3:0]D1_4_0;
  input [0:0]D1_8_0;
  input [3:0]D1_8_1;
  input [15:0]D1_8_2;
  input [31:0]D1_8_3;
  input [3:0]D2_16_0;
  input [3:0]D2_2_0;
  input [3:0]D2_4_0;
  input [0:0]D2_8_0;
  input [3:0]D2_8_1;
  input [15:0]D2_8_2;
  input [31:0]D2_8_3;
  input [3:0]D3_16_0;
  input [3:0]D3_4_0;
  input [0:0]D3_8_0;
  input [3:0]D3_8_1;
  input [15:0]D3_8_2;
  input [31:0]D3_8_3;
  input [3:0]D4_16_0;
  input [3:0]D4_4_0;
  input [0:0]D4_8_0;
  input [3:0]D4_8_1;
  input [15:0]D4_8_2;
  input [31:0]D4_8_3;
  input [3:0]D5_16_0;
  input [0:0]D5_8_0;
  input [3:0]D5_8_1;
  input [15:0]D5_8_2;
  input [31:0]D5_8_3;
  input [3:0]D6_16_0;
  input [0:0]D6_8_0;
  input [3:0]D6_8_1;
  input [15:0]D6_8_2;
  input [31:0]D6_8_3;
  input [3:0]D7_16_0;
  input [0:0]D7_8_0;
  input [3:0]D7_8_1;
  input [15:0]D7_8_2;
  input [31:0]D7_8_3;
  input [3:0]D8_16_0;
  input [0:0]D8_8_0;
  input [3:0]D8_8_1;
  input [15:0]D8_8_2;
  input [31:0]D8_8_3;
  input [3:0]D9_16_0;
  input P1_0;
  input P1_16_0;
  input P1_2_0;
  input P1_4_0;
  input P1_8_0;
  input P1_8_1;
  input P1_8_2;
  input P1_8_3;
  input P2_0;
  input P2_16_0;
  input P2_4_0;
  input P2_8_0;
  input P2_8_1;
  input P2_8_2;
  input P2_8_3;
  input P3_0;
  input P3_16_0;
  input P3_8_0;
  input P3_8_1;
  input P3_8_2;
  input P3_8_3;
  input P4_16_0;
  output [3:0]out1_2_0;
  output [3:0]out2_4_0;
  output [0:0]out3_8_0;
  output [3:0]out3_8_1;
  output [15:0]out3_8_2;
  output [31:0]out3_8_3;
  output [3:0]out4_16_0;

  wire Control_0_out16;
  wire Control_0_out2;
  wire Control_0_out4;
  wire Control_0_out8;
  wire Control_0_out8_16;
  wire Control_0_out8_32;
  wire Control_0_out8_4;
  wire [3:0]D10_16_0_1;
  wire [3:0]D11_16_0_1;
  wire [3:0]D12_16_0_1;
  wire [3:0]D13_16_0_1;
  wire [3:0]D14_16_0_1;
  wire [3:0]D15_16_0_1;
  wire [3:0]D16_16_0_1;
  wire [3:0]D1_16_0_1;
  wire [3:0]D1_2_0_1;
  wire [3:0]D1_4_0_1;
  wire [0:0]D1_8_0_1;
  wire [3:0]D1_8_1_1;
  wire [15:0]D1_8_2_1;
  wire [31:0]D1_8_3_1;
  wire [3:0]D2_16_0_1;
  wire [3:0]D2_2_0_1;
  wire [3:0]D2_4_0_1;
  wire [0:0]D2_8_0_1;
  wire [3:0]D2_8_1_1;
  wire [15:0]D2_8_2_1;
  wire [31:0]D2_8_3_1;
  wire [3:0]D3_16_0_1;
  wire [3:0]D3_4_0_1;
  wire [0:0]D3_8_0_1;
  wire [3:0]D3_8_1_1;
  wire [15:0]D3_8_2_1;
  wire [31:0]D3_8_3_1;
  wire [3:0]D4_16_0_1;
  wire [3:0]D4_4_0_1;
  wire [0:0]D4_8_0_1;
  wire [3:0]D4_8_1_1;
  wire [15:0]D4_8_2_1;
  wire [31:0]D4_8_3_1;
  wire [3:0]D5_16_0_1;
  wire [0:0]D5_8_0_1;
  wire [3:0]D5_8_1_1;
  wire [15:0]D5_8_2_1;
  wire [31:0]D5_8_3_1;
  wire [3:0]D6_16_0_1;
  wire [0:0]D6_8_0_1;
  wire [3:0]D6_8_1_1;
  wire [15:0]D6_8_2_1;
  wire [31:0]D6_8_3_1;
  wire [3:0]D7_16_0_1;
  wire [0:0]D7_8_0_1;
  wire [3:0]D7_8_1_1;
  wire [15:0]D7_8_2_1;
  wire [31:0]D7_8_3_1;
  wire [3:0]D8_16_0_1;
  wire [0:0]D8_8_0_1;
  wire [3:0]D8_8_1_1;
  wire [15:0]D8_8_2_1;
  wire [31:0]D8_8_3_1;
  wire [3:0]D9_16_0_1;
  wire [3:0]Data_selector16_0_out4_16;
  wire [3:0]Data_selector4_0_out2_4;
  wire [0:0]Data_selector8_0_out3_8;
  wire [3:0]Data_selector8_1_out3_8;
  wire [15:0]Data_selector8_2_out3_8;
  wire [31:0]Data_selector8_3_out3_8;
  wire [3:0]Dataselector2_0_out1_2;
  wire P1_0_1;
  wire P1_16_0_1;
  wire P1_2_0_1;
  wire P1_4_0_1;
  wire P1_8_0_1;
  wire P1_8_1_1;
  wire P1_8_2_1;
  wire P1_8_3_1;
  wire P2_0_1;
  wire P2_16_0_1;
  wire P2_4_0_1;
  wire P2_8_0_1;
  wire P2_8_1_1;
  wire P2_8_2_1;
  wire P2_8_3_1;
  wire P3_0_1;
  wire P3_16_0_1;
  wire P3_8_0_1;
  wire P3_8_1_1;
  wire P3_8_2_1;
  wire P3_8_3_1;
  wire P4_16_0_1;

  assign D10_16_0_1 = D10_16_0[3:0];
  assign D11_16_0_1 = D11_16_0[3:0];
  assign D12_16_0_1 = D12_16_0[3:0];
  assign D13_16_0_1 = D13_16_0[3:0];
  assign D14_16_0_1 = D14_16_0[3:0];
  assign D15_16_0_1 = D15_16_0[3:0];
  assign D16_16_0_1 = D16_16_0[3:0];
  assign D1_16_0_1 = D1_16_0[3:0];
  assign D1_2_0_1 = D1_2_0[3:0];
  assign D1_4_0_1 = D1_4_0[3:0];
  assign D1_8_0_1 = D1_8_0[0];
  assign D1_8_1_1 = D1_8_1[3:0];
  assign D1_8_2_1 = D1_8_2[15:0];
  assign D1_8_3_1 = D1_8_3[31:0];
  assign D2_16_0_1 = D2_16_0[3:0];
  assign D2_2_0_1 = D2_2_0[3:0];
  assign D2_4_0_1 = D2_4_0[3:0];
  assign D2_8_0_1 = D2_8_0[0];
  assign D2_8_1_1 = D2_8_1[3:0];
  assign D2_8_2_1 = D2_8_2[15:0];
  assign D2_8_3_1 = D2_8_3[31:0];
  assign D3_16_0_1 = D3_16_0[3:0];
  assign D3_4_0_1 = D3_4_0[3:0];
  assign D3_8_0_1 = D3_8_0[0];
  assign D3_8_1_1 = D3_8_1[3:0];
  assign D3_8_2_1 = D3_8_2[15:0];
  assign D3_8_3_1 = D3_8_3[31:0];
  assign D4_16_0_1 = D4_16_0[3:0];
  assign D4_4_0_1 = D4_4_0[3:0];
  assign D4_8_0_1 = D4_8_0[0];
  assign D4_8_1_1 = D4_8_1[3:0];
  assign D4_8_2_1 = D4_8_2[15:0];
  assign D4_8_3_1 = D4_8_3[31:0];
  assign D5_16_0_1 = D5_16_0[3:0];
  assign D5_8_0_1 = D5_8_0[0];
  assign D5_8_1_1 = D5_8_1[3:0];
  assign D5_8_2_1 = D5_8_2[15:0];
  assign D5_8_3_1 = D5_8_3[31:0];
  assign D6_16_0_1 = D6_16_0[3:0];
  assign D6_8_0_1 = D6_8_0[0];
  assign D6_8_1_1 = D6_8_1[3:0];
  assign D6_8_2_1 = D6_8_2[15:0];
  assign D6_8_3_1 = D6_8_3[31:0];
  assign D7_16_0_1 = D7_16_0[3:0];
  assign D7_8_0_1 = D7_8_0[0];
  assign D7_8_1_1 = D7_8_1[3:0];
  assign D7_8_2_1 = D7_8_2[15:0];
  assign D7_8_3_1 = D7_8_3[31:0];
  assign D8_16_0_1 = D8_16_0[3:0];
  assign D8_8_0_1 = D8_8_0[0];
  assign D8_8_1_1 = D8_8_1[3:0];
  assign D8_8_2_1 = D8_8_2[15:0];
  assign D8_8_3_1 = D8_8_3[31:0];
  assign D9_16_0_1 = D9_16_0[3:0];
  assign P1_0_1 = P1_0;
  assign P1_16_0_1 = P1_16_0;
  assign P1_2_0_1 = P1_2_0;
  assign P1_4_0_1 = P1_4_0;
  assign P1_8_0_1 = P1_8_0;
  assign P1_8_1_1 = P1_8_1;
  assign P1_8_2_1 = P1_8_2;
  assign P1_8_3_1 = P1_8_3;
  assign P2_0_1 = P2_0;
  assign P2_16_0_1 = P2_16_0;
  assign P2_4_0_1 = P2_4_0;
  assign P2_8_0_1 = P2_8_0;
  assign P2_8_1_1 = P2_8_1;
  assign P2_8_2_1 = P2_8_2;
  assign P2_8_3_1 = P2_8_3;
  assign P3_0_1 = P3_0;
  assign P3_16_0_1 = P3_16_0;
  assign P3_8_0_1 = P3_8_0;
  assign P3_8_1_1 = P3_8_1;
  assign P3_8_2_1 = P3_8_2;
  assign P3_8_3_1 = P3_8_3;
  assign P4_16_0_1 = P4_16_0;
  assign out1_2_0[3:0] = Dataselector2_0_out1_2;
  assign out2_4_0[3:0] = Data_selector4_0_out2_4;
  assign out3_8_0[0] = Data_selector8_0_out3_8;
  assign out3_8_1[3:0] = Data_selector8_1_out3_8;
  assign out3_8_2[15:0] = Data_selector8_2_out3_8;
  assign out3_8_3[31:0] = Data_selector8_3_out3_8;
  assign out4_16_0[3:0] = Data_selector16_0_out4_16;
  design_1_Control_0_0 Control_0
       (.P1(P1_0_1),
        .P2(P2_0_1),
        .P3(P3_0_1),
        .out16(Control_0_out16),
        .out2(Control_0_out2),
        .out4(Control_0_out4),
        .out8(Control_0_out8),
        .out8_16(Control_0_out8_16),
        .out8_32(Control_0_out8_32),
        .out8_4(Control_0_out8_4));
  design_1_Data_selector16_0_0 Data_selector16_0
       (.D10_16(D10_16_0_1),
        .D11_16(D11_16_0_1),
        .D12_16(D12_16_0_1),
        .D13_16(D13_16_0_1),
        .D14_16(D14_16_0_1),
        .D15_16(D15_16_0_1),
        .D16_16(D16_16_0_1),
        .D1_16(D1_16_0_1),
        .D2_16(D2_16_0_1),
        .D3_16(D3_16_0_1),
        .D4_16(D4_16_0_1),
        .D5_16(D5_16_0_1),
        .D6_16(D6_16_0_1),
        .D7_16(D7_16_0_1),
        .D8_16(D8_16_0_1),
        .D9_16(D9_16_0_1),
        .P1_16(P1_16_0_1),
        .P2_16(P2_16_0_1),
        .P3_16(P3_16_0_1),
        .P4_16(P4_16_0_1),
        .S_16(Control_0_out16),
        .out4_16(Data_selector16_0_out4_16));
  design_1_Data_selector4_0_0 Data_selector4_0
       (.D1_4(D1_4_0_1),
        .D2_4(D2_4_0_1),
        .D3_4(D3_4_0_1),
        .D4_4(D4_4_0_1),
        .P1_4(P1_4_0_1),
        .P2_4(P2_4_0_1),
        .S_4(Control_0_out4),
        .out2_4(Data_selector4_0_out2_4));
  design_1_Data_selector8_0_0 Data_selector8_0
       (.D1_8(D1_8_0_1),
        .D2_8(D2_8_0_1),
        .D3_8(D3_8_0_1),
        .D4_8(D4_8_0_1),
        .D5_8(D5_8_0_1),
        .D6_8(D6_8_0_1),
        .D7_8(D7_8_0_1),
        .D8_8(D8_8_0_1),
        .P1_8(P1_8_0_1),
        .P2_8(P2_8_0_1),
        .P3_8(P3_8_0_1),
        .S_8(Control_0_out8),
        .out3_8(Data_selector8_0_out3_8));
  design_1_Data_selector8_0_1 Data_selector8_1
       (.D1_8(D1_8_1_1),
        .D2_8(D2_8_1_1),
        .D3_8(D3_8_1_1),
        .D4_8(D4_8_1_1),
        .D5_8(D5_8_1_1),
        .D6_8(D6_8_1_1),
        .D7_8(D7_8_1_1),
        .D8_8(D8_8_1_1),
        .P1_8(P1_8_1_1),
        .P2_8(P2_8_1_1),
        .P3_8(P3_8_1_1),
        .S_8(Control_0_out8_4),
        .out3_8(Data_selector8_1_out3_8));
  design_1_Data_selector8_1_0 Data_selector8_2
       (.D1_8(D1_8_2_1),
        .D2_8(D2_8_2_1),
        .D3_8(D3_8_2_1),
        .D4_8(D4_8_2_1),
        .D5_8(D5_8_2_1),
        .D6_8(D6_8_2_1),
        .D7_8(D7_8_2_1),
        .D8_8(D8_8_2_1),
        .P1_8(P1_8_2_1),
        .P2_8(P2_8_2_1),
        .P3_8(P3_8_2_1),
        .S_8(Control_0_out8_16),
        .out3_8(Data_selector8_2_out3_8));
  design_1_Data_selector8_3_0 Data_selector8_3
       (.D1_8(D1_8_3_1),
        .D2_8(D2_8_3_1),
        .D3_8(D3_8_3_1),
        .D4_8(D4_8_3_1),
        .D5_8(D5_8_3_1),
        .D6_8(D6_8_3_1),
        .D7_8(D7_8_3_1),
        .D8_8(D8_8_3_1),
        .P1_8(P1_8_3_1),
        .P2_8(P2_8_3_1),
        .P3_8(P3_8_3_1),
        .S_8(Control_0_out8_32),
        .out3_8(Data_selector8_3_out3_8));
  design_1_Dataselector2_0_0 Dataselector2_0
       (.D1_2(D1_2_0_1),
        .D2_2(D2_2_0_1),
        .P1_2(P1_2_0_1),
        .S_2(Control_0_out2),
        .out1_2(Dataselector2_0_out1_2));
endmodule
