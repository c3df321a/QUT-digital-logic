`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/25 21:10:58
// Design Name: 
// Module Name: Dataselector2
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


module Dataselector2#(parameter WIDTH =4)(D1_2,D2_2,P1_2,S_2,out1_2);

    input [WIDTH-1:0]D1_2;
    input [WIDTH-1:0]D2_2;
    input P1_2;
    input S_2;
    output reg [WIDTH-1:0]out1_2;
    always @ * 
    begin
    if     ((~P1_2)&S_2)    out1_2<=D1_2;
    else if(P1_2&S_2)       out1_2<=D2_2;
    end
endmodule
