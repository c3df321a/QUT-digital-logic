`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/08 15:15:17
// Design Name: 
// Module Name: dffe_sim
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


module dffe_sim();
reg CLR;reg WEN;reg D;wire Q;wire NQ;reg CLK;
dffe dffe(
    .CLR(CLR),
    .WEN(WEN),
    .D(D),
    .Q(Q),
    .NQ(NQ),
    .CLK(CLK)
    );
    
 always
 begin
    #10;CLK=~CLK;
end
initial
begin
    CLK=0;WEN=1;CLR=0;D=0;
    #20;D=1;
    #20;D=0;
    #20;D=1;
    #20;CLR=1;
    #20;WEN=0;
    #10;WEN=1;
end
endmodule
