`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/18 15:19:48
// Design Name: 
// Module Name: basic_gate
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


module basic_gate1(
                input a,
                input b,
                output out
        );
 assign out=a&b;      
endmodule

module basic_gate2(
                input a,
                output out
        );
 assign out=~a;      
endmodule

module basic_gate3(
                input a,
                input b,
                input c,
                input d,
                output out
);
assign out=a|b|c|d;
endmodule

module basic_gate4(
                input a,
                input b,
                input c,
                input d,
                output out
);
assign out=~((a&b)|(c&d));
endmodule