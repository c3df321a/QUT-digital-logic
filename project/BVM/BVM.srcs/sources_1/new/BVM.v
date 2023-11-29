`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/22 14:33:57
// Design Name: 
// Module Name: BVM
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


module BVM(coin,drink,charge,CLK,RSTN,type);
input [1:0] coin;
input CLK;
input RSTN;
input [1:0] type;
output reg [1:0] drink;
output reg [1:0] charge;

parameter GET00   = 2'd00 ;
parameter GET05  = 2'd01;
parameter GET10  = 2'd10;
reg [2:0] next;
reg [2:0] now;


always @ (posedge CLK,negedge RSTN)
begin
if(!RSTN)
begin
    now <= 3'b0;
end
else
begin
    now <= next;
end
end

always @ (*)
begin
case(now)
GET00:
    case(coin)
    2'b01:  next = GET05;
    2'b10:  next = GET10;
    default:    next=GET00;
    endcase
GET05:
    case(coin)
    2'b01:  next = GET10;
    2'b10:  next = GET00;
    default:    next=GET05;
    endcase
GET10:
case(coin)
    2'b01:  next = GET00;
    2'b10:  next = GET00;
    default:    next=GET05;
    endcase
default next = GET00;
endcase
end

always @ (posedge CLK,negedge RSTN)
begin
if(!RSTN)
begin
    charge <= 2'b0;
    drink <= 1'b0;
end
else if((now == GET05 && coin == 2'b10)||(now == GET10 && coin == 2'b01))
begin
    charge <= 2'b0;
    drink <= type;
end
else if(now == GET10 && coin == 2'b10)
begin
    charge <= 2'b01;
    drink <= type;
end
else
begin
    charge <= 2'b0;
    drink <= 1'b0;
end
end
endmodule
