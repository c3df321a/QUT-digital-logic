`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/01 17:11:21
// Design Name: 
// Module Name: hexseg_sim
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


module hexseg_sim();
reg A0;reg A1;reg A2;reg A3;
reg LT;reg RBI;wire BI_RBO;
wire Y0;wire Y1;wire Y2;wire Y3;wire Y4;wire Y5;wire Y6;wire RBO;wire BI;
hexseg hexseg(
        .BI_RBO(BI_RBO),
        .A0(A0),
        .A1(A1),
        .A2(A2),
        .A3(A3),
        .Y0(Y0),
        .Y1(Y1),
        .Y2(Y2),
        .Y3(Y3),
        .Y4(Y4),
        .Y5(Y5),
        .Y6(Y6),
        .LT(LT),
        .RBI(RBI),
        .RBO(RBO),
        .BI(BI)
        );
initial 
begin
A0=1'bx;A1=1'bx;A2=1'bx;A3=1'bx;//test
LT=1;
RBI = 1'bx;
#20
A0=0;A1=0;A2=0;A3=0;//close zero
LT=0;RBI=0;
RBI = 1;
#20
A0=1'bx;A1=1'bx;A2=1'bx;A3=1'bx;//close light
LT=1'bx;force BI_RBO=1'b1;
RBI = 1'bx;
#20
release BI_RBO;
A0=0;A1=0;A2=0;A3=0;//0
LT=0;
RBI = 0;
#20
A0=0;A1=0;A2=0;A3=1;//1
LT=0;
RBI = 1'bx;
#20
A0=0;A1=0;A2=1;A3=0;//2
LT=0;
RBI = 1'bx;
#20
A0=0;A1=0;A2=1;A3=1;//3
LT=0;
RBI = 1'bx;
#20
A0=0;A1=1;A2=0;A3=0;//4
LT=0;
RBI = 1'bx;
#20
A0=0;A1=1;A2=0;A3=1;//5
LT=0;
RBI = 1'bx;
#20
A0=0;A1=1;A2=1;A3=0;//6
LT=0;
RBI = 1'bx;
#20
A0=0;A1=1;A2=1;A3=1;//7
LT=0;
RBI = 1'bx;
#20
A0=1;A1=0;A2=0;A3=0;//8
LT=0;
RBI = 1'bx;
#20
A0=1;A1=0;A2=0;A3=1;//9
LT=0;
RBI = 1'bx;

end 
endmodule
