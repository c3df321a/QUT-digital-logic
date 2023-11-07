`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/25 20:24:26
// Design Name: 
// Module Name: Dataselector8_sim
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Dataselector8_sim();
reg [3:0] a0 = 4'b0000;
reg [3:0] a1 = 4'b0001;
reg [3:0] a2 = 4'b0010;
reg [3:0] a3 = 4'b0011;
reg [3:0] a4 = 4'b0100;
reg [3:0] a5 = 4'b0101;
reg [3:0] a6 = 4'b0110;
reg [3:0] a7 = 4'b0111;
 reg P1;reg P2;reg P3;
 reg S;
 wire [3:0] q;
Data_selector8 Data_selector8(
.D1_8(a0),.D2_8(a1),.D3_8(a2),.D4_8(a3),
 .D5_8(a4),.D6_8(a5),.D7_8(a6),.D8_8(a7),
 .P1_8(P1),.P2_8(P2),.P3_8(P3),.S_8(S),
 .out3_8(q));
 initial 
 begin
a0 = 4'b0000;
a1 = 4'b0001;
a2 = 4'b0010;
a3 = 4'b0011;
a4 = 4'b0100;
a5 = 4'b0101;
a6 = 4'b0110;
a7 = 4'b0111;
 S=1;
 P1=0;P2=0;P3=0;
 #20 P1=0;P2=0;P3=1;
 #20 P1=0;P2=1;P3=0;
 #20 P1=0;P2=1;P3=1;
 #20 P1=1;P2=0;P3=0;
 #20 P1=1;P2=0;P3=1;
 #20 P1=1;P2=1;P3=0;
 #20 P1=1;P2=1;P3=1;
end
endmodule