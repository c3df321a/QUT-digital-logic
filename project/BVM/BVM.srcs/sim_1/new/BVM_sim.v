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
reg [1:0] coin;reg CLK = 0;reg RSTN;reg [1:0] type;
wire[1:0]drink;
wire [1:0] charge;

BVM BVM(
    .type(type),
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
    //一号饮料
    #20;RSTN = 0;
    #20;RSTN = 1;coin=2'b00;type=2'b01;
    #20; coin = 2'b01;#20; coin = 2'b01;#20; coin = 2'b01;//only 05
    //二号饮料
    #20; type=2'b10;coin = 2'b10;#20; coin = 2'b01;//1+0.5
    //三号饮料
    #20; type=2'b11;coin = 2'b10;#20; coin = 2'b10;//1+1 charge0.5
    #20; coin = 2'b00;type=2'b00;
end

endmodule
