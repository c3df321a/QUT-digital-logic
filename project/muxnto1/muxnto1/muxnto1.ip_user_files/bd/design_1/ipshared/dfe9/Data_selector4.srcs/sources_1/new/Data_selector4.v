`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/25 15:05:44
// Design Name: 
// Module Name: Data_selector4
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


module Data_selector4 #(parameter WIDTH=4)(D1_4,D2_4,D3_4,D4_4,P1_4,P2_4,S_4,out2_4);
input [WIDTH-1:0] D1_4;
input [WIDTH-1:0] D2_4;
input [WIDTH-1:0] D3_4;
input [WIDTH-1:0] D4_4;
input  S_4;
input  P1_4;
input  P2_4;
output reg [WIDTH-1:0] out2_4;
always @ * 
begin
if     (((~P1_4)&(~P2_4))&S_4)  out2_4<=D1_4;
else if(((~P1_4)&P2_4)&S_4)     out2_4<=D2_4;
else if((P1_4&(~P2_4))&S_4)     out2_4<=D3_4;
else if((P1_4&P2_4)&S_4)        out2_4<=D4_4;
end
endmodule
