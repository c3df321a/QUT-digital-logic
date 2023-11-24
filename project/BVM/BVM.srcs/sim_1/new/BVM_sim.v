`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/22 15:31:44
// Design Name: 
// Module Name: BVM_sim
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


module BVM_sim();
reg [1:0] coin;reg CLK = 0;reg RSTN;
wire drink;wire [1:0] charge;

BVM BVM(
    .coin(coin),
    .CLK(CLK),
    .RSTN(RSTN),
    .drink(drink),
    .charge(charge)
    );

always 
begin
    #10;CLK=~CLK;
end

initial
begin
    #20;RSTN = 0;#20;RSTN = 1; coin=2'b00;
    #20; coin = 2'b01;#20; coin = 2'b01;#20; coin = 2'b01;//only 05
    #20; coin = 2'b10;#20; coin = 2'b01;//1+0.5
    #20; coin = 2'b10;#20; coin = 2'b10;//1+1 charge0.5
    #20; coin = 2'bxx;
end

endmodule
