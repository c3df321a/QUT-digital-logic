`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/18 17:42:34
// Design Name: 
// Module Name: orgate
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


module orgate
#(parameter Port_Num = 2, // 指定缺省的输入是 2 个输入端口
 parameter WIDTH=8) // 指定数据宽度参数，缺省值是 8 
 ( 
input [(WIDTH-1):0] a,
input [(WIDTH-1):0] b,
input [(WIDTH-1):0] c,
input [(WIDTH-1):0] d,
input [(WIDTH-1):0] e,
input [(WIDTH-1):0] f,
input [(WIDTH-1):0] g,
input [(WIDTH-1):0] h,
output [(WIDTH-1):0] q
);
assign q = (a | b | c | d | e | f | g | h);
endmodule
