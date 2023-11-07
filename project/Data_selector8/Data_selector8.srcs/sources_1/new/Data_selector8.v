`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/25 15:14:14
// Design Name: 
// Module Name: Data_selector8
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


module Data_selector8#(parameter WIDTH=16)(D1_8,D2_8,D3_8,D4_8,D5_8,D6_8,D7_8,D8_8,P1_8,P2_8,P3_8,S_8,out3_8);
input [WIDTH-1:0] D1_8;
input [WIDTH-1:0] D2_8;
input [WIDTH-1:0] D3_8;
input [WIDTH-1:0] D4_8;
input [WIDTH-1:0] D5_8;
input [WIDTH-1:0] D6_8;
input [WIDTH-1:0] D7_8;
input [WIDTH-1:0] D8_8;
input  S_8;
input  P1_8;
input  P2_8;
input  P3_8;
output reg [WIDTH-1:0] out3_8;
always @ * 
begin
if     (((~P1_8)&(~P2_8)&(~P3_8))&S_8)  out3_8<=D1_8;
else if(((~P1_8)&(~P2_8)&P3_8)&S_8)     out3_8<=D2_8;
else if(((~P1_8)&P2_8&(~P3_8))&S_8)     out3_8<=D3_8;
else if(((~P1_8)&P2_8&P3_8)&S_8)        out3_8<=D4_8;
else if((P1_8&(~P2_8)&(~P3_8))&S_8)     out3_8<=D5_8;
else if((P1_8&(~P2_8)&P3_8)&S_8)        out3_8<=D6_8;
else if((P1_8&P2_8&(~P3_8))&S_8)        out3_8<=D7_8;
else if((P1_8&P2_8&P3_8)&S_8)           out3_8<=D8_8;
end
endmodule
