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
#(parameter Port_Num = 2, // ָ��ȱʡ�������� 2 ������˿�
 parameter WIDTH=8) // ָ�����ݿ�Ȳ�����ȱʡֵ�� 8 
 ( 
input [(WIDTH-1):0] a,
output [(WIDTH-1):0] q
);
assign q = ~a;
endmodule
