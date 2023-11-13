`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/25 21:11:42
// Design Name: 
// Module Name: Dataselector2_sim
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


module Dataselector2_sim();
reg [3:0] a0;
reg [3:0] a1;
 reg P1;
 reg S;
 wire [3:0] q;
 Dataselector2 Dataselector2(
.D1_2(a0),.D2_2(a1),
 .P1_2(P1),
 .S_2(S),
 .out1_2(q));
 initial 
 begin
a0 = 4'b0000;
a1 = 4'b0001;
 S=1;
 P1=0;
 #20 P1=1;
end
endmodule
