`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/15 15:15:00
// Design Name: 
// Module Name: counter_sim
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


module counter_sim();
reg CLK;reg LD;reg RD;reg EN;reg ET;reg [4:0]D;
wire [4:0] Q;wire C;
counter counter (
    .CLK(CLK),
    .LD(LD),
    .RD(RD),
    .EN(EN),
    .ET(ET),
    .D(D),
    .Q(Q),
    .C(C)
);

always 
begin
    #10;CLK=~CLK;
end
initial
begin
        CLK = 1;EN = 1;ET = 1;LD = 1;RD = 1;D = 5'b00000;      
#60;LD = 0;#20 LD=1;
#60;RD = 0;#20 RD=1;
end
endmodule
