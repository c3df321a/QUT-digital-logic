`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/25 21:22:57
// Design Name: 
// Module Name: Dataselector4
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


module Dataselector4();
reg [3:0] a0 = 4'b0000;
reg [3:0] a1 = 4'b0001;
reg [3:0] a2 = 4'b0010;
reg [3:0] a3 = 4'b0011;
 reg P1;reg P2;
 reg S;
 wire [3:0] q;
Data_selector4 Data_selector4(
.D1_4(a0),.D2_4(a1),.D3_4(a2),.D4_4(a3),
 .P1_4(P1),.P2_4(P2),.S_4(S),
 .out2_4(q));
 initial 
 begin
a0 = 4'b0000;
a1 = 4'b0001;
a2 = 4'b0010;
a3 = 4'b0011;
 S=1;
P1=0;P2=0;
 #20 P1=0;P2=1;
 #20 P1=1;P2=0;
 #20 P1=1;P2=1;
end
endmodule
