`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/25 16:08:55
// Design Name: 
// Module Name: Control_sim
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


module Control_sim();
reg P1;reg P2;reg P3;wire out2;wire out4;wire out8;wire out16;wire out8_4;wire out8_16;wire out8_32;
Control Control(
               .P1(P1),
               .P2(P2),
               .P3(P3),
               .out2(out2),
               .out4(out4),
               .out8(out8),
               .out16(out16),
               .out8_4(out8_4),
               .out8_16(out8_16),
               .out8_32(out8_32)
);
initial 
begin
     P1=0;P2=0;P3=0;
#20 P1=0;P2=0;P3=1;
#20 P1=0;P2=1;P3=0;
#20 P1=0;P2=1;P3=1;
#20 P1=1;P2=0;P3=0;
#20 P1=1;P2=0;P3=1;
#20 P1=1;P2=1;P3=0;
#20 P1=1;P2=1;P3=1;
end
endmodule
