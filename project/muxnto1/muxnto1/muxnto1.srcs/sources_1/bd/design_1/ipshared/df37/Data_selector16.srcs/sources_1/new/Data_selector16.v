`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/25 15:41:12
// Design Name: 
// Module Name: Data_selector16
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


module Data_selector16 #(parameter WIDTH=4) (D1_16,D2_16,D3_16,D4_16,D5_16,D6_16,D7_16,D8_16,D9_16,D10_16,D11_16,D12_16,D13_16,D14_16,D15_16,D16_16
,P1_16,P2_16,P3_16,P4_16,S_16,out4_16);
input [WIDTH-1:0] D1_16;
input [WIDTH-1:0] D2_16;
input [WIDTH-1:0] D3_16;
input [WIDTH-1:0] D4_16;
input [WIDTH-1:0] D5_16;
input [WIDTH-1:0] D6_16;
input [WIDTH-1:0] D7_16;
input [WIDTH-1:0] D8_16;
input [WIDTH-1:0] D9_16;
input [WIDTH-1:0] D10_16;
input [WIDTH-1:0] D11_16;
input [WIDTH-1:0] D12_16;
input [WIDTH-1:0] D13_16;
input [WIDTH-1:0] D14_16;
input [WIDTH-1:0] D15_16;
input [WIDTH-1:0] D16_16;
input  S_16;
input  P1_16;
input  P2_16;
input  P3_16;
input  P4_16;
output reg [WIDTH-1:0] out4_16;
always @ * 
begin
if     (((~P1_16)&(~P2_16)&(~P3_16)&(~P4_16))&S_16)  out4_16<=D1_16;
else if(((~P1_16)&(~P2_16)&(~P3_16)&P4_16)&S_16)     out4_16<=D2_16;
else if(((~P1_16)&(~P2_16)&P3_16&(~P4_16))&S_16)     out4_16<=D3_16;
else if(((~P1_16)&(~P2_16)&P3_16&P4_16)&S_16)        out4_16<=D4_16;
else if(((~P1_16)&P2_16&(~P3_16)&(~P4_16))&S_16)     out4_16<=D5_16;
else if(((~P1_16)&P2_16&(~P3_16)&P4_16)&S_16)        out4_16<=D6_16;
else if(((~P1_16)&P2_16&P3_16&(~P4_16))&S_16)        out4_16<=D7_16;
else if(((~P1_16)&P2_16&P3_16&P4_16)&S_16)           out4_16<=D8_16;
else if((P1_16&(~P2_16)&(~P3_16)&(~P4_16))&S_16)     out4_16<=D9_16;
else if((P1_16&(~P2_16)&(~P3_16)&P4_16)&S_16)        out4_16<=D10_16;
else if((P1_16&(~P2_16)&P3_16&(~P4_16))&S_16)        out4_16<=D11_16;//1010
else if((P1_16&(~P2_16)&P3_16&P4_16)&S_16)           out4_16<=D12_16;//1011
else if((P1_16&P2_16&(~P3_16)&(~P4_16))&S_16)       out4_16<=D13_16;//1100
else if((P1_16&P2_16&(~P3_16)&P4_16)&S_16)           out4_16<=D14_16;//1101
else if((P1_16&P2_16&P3_16&(~P4_16))&S_16)           out4_16<=D15_16;//1110
else if((P1_16&P2_16&P3_16&P4_16)&S_16)              out4_16<=D16_16;//1111
end
endmodule
