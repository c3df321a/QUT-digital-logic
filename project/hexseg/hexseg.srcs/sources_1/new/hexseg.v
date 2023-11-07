`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/01 15:23:55
// Design Name: 
// Module Name: hexseg
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


module hexseg(BI_RBO,A0,A1,A2,A3,Y0,Y1,Y2,Y3,Y4,Y5,Y6,LT,RBI,RBO,BI);
input  A0;
input  A1;
input  A2;
input  A3;

input LT;
input RBI;

inout BI_RBO;
output wire RBO;
output wire BI;
assign RBO = ((RBI === 1'bX)|(RBI == 1'b0))?1'b1: 1'b0;
assign BI_RBO = (LT === 1'bX)?1'bX:RBO;
assign BI = BI_RBO; 
//inout [7:0]data,
//对inout类型的操作
//reg [7:0]data_out_sb;//将想要输出数据先寄存到此处
//reg en_output; //使能控制，1：选择data_out_sb;0:高阻态
//assign data=en_output?data_out_sb:1'bz;//处于高阻态是输入状态

output reg Y0;
output reg Y1;
output reg Y2;
output reg Y3;
output reg Y4;
output reg Y5;
output reg Y6;

always @ *
begin
if(BI)//close light
begin
Y0 <= 0;
Y1 <= 0;
Y2 <= 0;
Y3 <= 0;
Y4 <= 0;
Y5 <= 0;
Y6 <= 0;
end
else if((((~A0)&(~A1)&(~A2)&(~A3))&(~LT))&(RBI))//close zero
begin
Y0 <= 0;
Y1 <= 0;
Y2 <= 0;
Y3 <= 0;
Y4 <= 0;
Y5 <= 0;
Y6 <= 0;
end
else if  (LT)//test
begin
Y0 <= 1;
Y1 <= 1;
Y2 <= 1;
Y3 <= 1;
Y4 <= 1;
Y5 <= 1;
Y6 <= 1;
end
else if  ((((~A0)&(~A1)&(~A2)&(~A3))&(~LT)&(~RBI)))//0000  0
begin
Y0 <= 1;
Y1 <= 1;
Y2 <= 1;
Y3 <= 1;
Y4 <= 1;
Y5 <= 1;
Y6 <= 0;
end
else if  ((((~A0)&(~A1)&(~A2)&A3)&(~LT)))//0001  1
begin
Y0 <= 0;
Y1 <= 1;
Y2 <= 1;
Y3 <= 0;
Y4 <= 0;
Y5 <= 0;
Y6 <= 0;
end
if  ((((~A0)&(~A1)&A2&(~A3))&(~LT)))//0010  2
begin
Y0 <= 1;
Y1 <= 1;
Y2 <= 0;
Y3 <= 1;
Y4 <= 1;
Y5 <= 0;
Y6 <= 1;
end
else if  ((((~A0)&(~A1)&A2&A3)&(~LT)))//0011  3
begin
Y0 <= 1;
Y1 <= 1;
Y2 <= 1;
Y3 <= 1;
Y4 <= 0;
Y5 <= 0;
Y6 <= 1;
end
else if  ((((~A0)&A1&(~A2)&(~A3))&(~LT)))//0100  4
begin
Y0 <= 0;
Y1 <= 1;
Y2 <= 1;
Y3 <= 0;
Y4 <= 0;
Y5 <= 1;
Y6 <= 1;
end
else if  ((((~A0)&A1&(~A2)&A3)&(~LT)))//0101  5
begin
Y0 <= 1;
Y1 <= 0;
Y2 <= 1;
Y3 <= 1;
Y4 <= 0;
Y5 <= 1;
Y6 <= 1;
end
else if  ((((~A0)&A1&A2&(~A3))&(~LT)))//0110  6
begin
Y0 <= 1;
Y1 <= 0;
Y2 <= 1;
Y3 <= 1;
Y4 <= 1;
Y5 <= 1;
Y6 <= 1;
end
else if  ((((~A0)&A1&A2&A3)&(~LT)))//0111 7
begin
Y0 <= 1;
Y1 <= 1;
Y2 <= 1;
Y3 <= 0;
Y4 <= 0;
Y5 <= 0;
Y6 <= 0;
end
else if  ((A0&(~A1)&(~A2)&(~A3)))//1000  8
begin
Y0 <= 1;
Y1 <= 1;
Y2 <= 1;
Y3 <= 1;
Y4 <= 1;
Y5 <= 1;
Y6 <= 1;
end
else if  (((A0&(~A1)&(~A2)&A3)&(~LT)))//1001  9
begin
Y0 <= 1;
Y1 <= 1;
Y2 <= 1;
Y3 <= 1;
Y4 <= 0;
Y5 <= 1;
Y6 <= 1;
end
end
endmodule

