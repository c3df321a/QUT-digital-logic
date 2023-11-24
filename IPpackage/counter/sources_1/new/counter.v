`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/15 14:56:10
// Design Name: 
// Module Name: counter
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


module counter(CLK,LD,RD,EN,ET,Q,D,C);
input CLK;
input LD;
input RD;
input EN;
input ET;
input  [4:0] D;
output reg [4:0] Q = 5'b0;
output reg C;

always @ (posedge CLK or negedge LD or negedge RD )
begin
    if(EN&ET)
    begin
        if(LD&RD)
        begin
            if(Q == 5'b11110)
            begin
                C <= 1;
                Q <= 5'b0;
            end
            else
            begin
                C <= 0;
                Q <= Q + 1'b1;
            end
        end
        else if(~LD&RD)
        begin
            Q <= 5'd0;
        end
        else if(LD&~RD)
        begin
            Q <= D;
        end
    end
    else
    begin
        Q <= 5'bxxxxx;
    end
end
endmodule
