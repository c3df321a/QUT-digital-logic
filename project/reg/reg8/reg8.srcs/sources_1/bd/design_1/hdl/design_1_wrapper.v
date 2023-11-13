//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Wed Nov  8 16:31:41 2023
//Host        : LAPTOP-N4GO34NJ running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper();


  reg CLK;
  reg CLR;
  reg D_0;
  reg D_1;
  reg D_2;
  reg D_3;
  reg D_4;
  reg D_5;
  reg D_6;
  reg D_7;
  wire NQ_0;
  wire NQ_1;
  wire NQ_2;
  wire NQ_3;
  wire NQ_4;
  wire NQ_5;
  wire NQ_6;
  wire NQ_7;
  wire Q_0;
  wire Q_1;
  wire Q_2;
  wire Q_3;
  wire Q_4;
  wire Q_5;
  wire Q_6;
  wire Q_7;
  reg WEN;

  design_1 design_1_i
       (.CLK(CLK),
        .CLR(CLR),
        .D_0(D_0),
        .D_1(D_1),
        .D_2(D_2),
        .D_3(D_3),
        .D_4(D_4),
        .D_5(D_5),
        .D_6(D_6),
        .D_7(D_7),
        .NQ_0(NQ_0),
        .NQ_1(NQ_1),
        .NQ_2(NQ_2),
        .NQ_3(NQ_3),
        .NQ_4(NQ_4),
        .NQ_5(NQ_5),
        .NQ_6(NQ_6),
        .NQ_7(NQ_7),
        .Q_0(Q_0),
        .Q_1(Q_1),
        .Q_2(Q_2),
        .Q_3(Q_3),
        .Q_4(Q_4),
        .Q_5(Q_5),
        .Q_6(Q_6),
        .Q_7(Q_7),
        .WEN(WEN));
        
 always
        begin
           #10;CLK=~CLK;
       end
       initial
       begin
           CLK=0;WEN=1;CLR=0;
           D_0=0; D_1=0; D_2=0; D_3=0; D_4=0; D_5=0; D_6=0; D_7=0;
           
           #20; D_0=0; D_1=0; D_2=0; D_3=0; D_4=1; D_5=1; D_6=1; D_7=1;
           #20; D_0=1; D_1=1; D_2=1; D_3=1; D_4=0; D_5=0; D_6=0; D_7=0;
           #20; D_0=1; D_1=1; D_2=1; D_3=1; D_4=1; D_5=1; D_6=1; D_7=1;
           #20; CLR=1;
           #20; WEN=0;
           #10; WEN=1;
       end        
endmodule
