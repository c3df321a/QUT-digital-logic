`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/08 14:37:43
// Design Name: 
// Module Name: dffe
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


module dffe(WEN,D,Q,NQ,CLR,CLK);
input WEN;
input D;
input CLR;
input CLK;
output reg Q;
output  NQ;

always @ (posedge CLK or negedge CLR or negedge WEN)
begin
if(!WEN)
begin
    Q <= 1'bx;
end
else if(WEN&~CLR)
begin
    Q<=D;
end
else if(WEN&CLR)
begin
    Q <= 0;
end
end
assign NQ = ~Q;
endmodule
