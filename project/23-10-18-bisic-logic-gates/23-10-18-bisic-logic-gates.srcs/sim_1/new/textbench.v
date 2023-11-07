`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/18 15:08:19
// Design Name: 
// Module Name: textbench
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


module textbench();
reg A;wire out;
Ex_2 Ex_2(
            .A(A),
            .out(out)
);
initial
begin 
A=0;
#10;
A=1;
#10;
end
endmodule

/*module textbench();
reg A;reg B;wire out;
Ex_1 Ex_1(
            .A(A),
            .B(B),
            .out(out)
);
initial
    begin 
    A=0;
    B=0;
    #10;
    A=0;
    B=1;
    #10;
    A=1;
    B=0;
    #10;
    A=1;
    B=1;
    #10;
    end
endmodule*/
