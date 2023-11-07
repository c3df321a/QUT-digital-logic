`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/11 16:16:08
// Design Name: 
// Module Name: Ex_1 sim
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


module Ex_1_sim(	);
//input
reg [23:0]	sw = 24'h000000;
//output
wire [23:0] led;
//instantiate the Unit under test 
Ex_1 uut(
.sw(sw),
.led(led)  
);
always	#10	sw = sw+1; 
endmodule
