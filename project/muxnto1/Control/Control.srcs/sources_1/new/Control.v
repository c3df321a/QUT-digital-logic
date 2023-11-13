`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/25 15:57:48
// Design Name: 
// Module Name: Control
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


module Control(P1,P2,P3,out2,out4,out8,out8_4,out8_16,out8_32,out16);
input P1;
input P2;
input P3;
output reg out2;
output reg out4;
output reg out8;
output reg out8_4;
output reg out8_16;
output reg out8_32;
output reg out16;
always @ *
begin
if((~P3)&(~P2)&(~P1))//000
begin
out2 <= 1; 
out4 <= 0;
out8 <= 0;
out16 <= 0;
out8_4 <=0;
out8_16 <=0;
out8_32 <=0;
end
else if((~P3)&(~P2)&P1)//001
begin
out2 <= 0;
out4 <= 1;
out8 <= 0;
out16 <= 0;
out8_4 <=0;
out8_16 <=0;
out8_32 <=0;
end
else if((~P3)&P2&(~P1))//010
begin
out2 <= 0;
out4 <= 0;
out8 <= 1;
out16 <= 0;
out8_4 <=0;
out8_16 <=0;
out8_32 <=0;
end
else if((~P3)&P2&P1)//011
begin
out2 <= 0;
out4 <= 0;
out8 <= 0;
out16 <= 1;
out8_4 <=0;
out8_16 <=0;
out8_32 <=0;
end
else if(P3&(~P2)&(~P1))//100
begin
out2 <= 0;
out4 <= 0;
out8 <= 0;
out16 <= 0;
out8_4 <= 1;
out8_16 <=0;
out8_32 <=0;
end
else if(P3&(~P2)&P1)//101
begin
out2 <= 0;
out4 <= 0;
out8 <= 0;
out16 <= 0;
out8_4 <=0;
out8_16 <=1;
out8_32 <=0;
end
else if(P3&P2&(~P1))//110
begin
out2 <= 0;
out4 <= 0;
out8 <= 0;
out16 <= 0;
out8_4 <=0;
out8_16 <=0;
out8_32 <=1;
end
else if(P3&P2&P1)//111
begin
out2 <= 0;
out4 <= 0;
out8 <= 0;
out16 <= 0;
out8_4 <=0;
out8_16 <=0;
out8_32 <=0;
end
end
endmodule
