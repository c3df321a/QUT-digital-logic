`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/18 18:28:27
// Design Name: 
// Module Name: notgate
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


module notgate
#(parameter Port_Num = 2, // 指定缺省的输入是 2 个输入端口
 parameter WIDTH=8) // 指定数据宽度参数，缺省值是 8 
 ( 
input [(WIDTH-1):0] a,
output [(WIDTH-1):0] q
);
assign q = ~a;
endmodule
