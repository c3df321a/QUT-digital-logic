`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/18 15:22:24
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


module textbench(
    );
    reg a;reg b;wire out1;
basic_gate1 basic_gate1(
                .a(a),
                .b(b),
                .out(out1)
);
initial 
begin
a=0;b=0;#10;
a=0;b=1;#10;
a=1;b=0;#10;
a=1;b=1;#10;
end

reg c;wire out2;
basic_gate2 basic_gate2(
                .a(c),
                .out(out2)
);
initial 
begin
c=0;#10;
c=1;#10;
end
reg d; reg e; reg f; reg g; wire out3;
basic_gate3 basicgate3(
                    .a(d),
                    .b(e),
                    .c(f),
                    .d(g),
                    .out(out3)
);
initial 
begin
d=0;e=0;f=0;g=0;#10;
d=0;e=0;f=0;g=1;#10;
d=0;e=0;f=1;g=0;#10;
d=0;e=0;f=1;g=1;#10;
d=0;e=1;f=0;g=0;#10;
d=0;e=1;f=0;g=1;#10;
d=0;e=1;f=1;g=0;#10;
d=0;e=1;f=1;g=1;#10;
d=1;e=0;f=0;g=0;#10;
d=1;e=0;f=0;g=1;#10;
d=1;e=0;f=1;g=0;#10;
d=1;e=0;f=1;g=1;#10;
d=1;e=1;f=0;g=0;#10;
d=1;e=1;f=0;g=1;#10;
d=1;e=1;f=1;g=0;#10;
d=1;e=1;f=1;g=1;#10;
end

reg a1; reg a2; reg a3; reg a4; wire out4;
basic_gate4 basicgate4(
                    .a(a1),
                    .b(a2),
                    .c(a3),
                    .d(a4),
                    .out(out4)
);
initial 
begin
a1=0;a2=0;a3=0;a4=0;#10;
a1=0;a2=0;a3=0;a4=1;#10;
a1=0;a2=0;a3=1;a4=0;#10;
a1=0;a2=0;a3=1;a4=1;#10;
a1=0;a2=1;a3=0;a4=0;#10;
a1=0;a2=1;a3=0;a4=1;#10;
a1=0;a2=1;a3=1;a4=0;#10;
a1=0;a2=1;a3=1;a4=1;#10;
a1=1;a2=0;a3=0;a4=0;#10;
a1=1;a2=0;a3=0;a4=1;#10;
a1=1;a2=0;a3=1;a4=0;#10;
a1=1;a2=0;a3=1;a4=1;#10;
a1=1;a2=1;a3=0;a4=0;#10;
a1=1;a2=1;a3=0;a4=1;#10;
a1=1;a2=1;a3=1;a4=0;#10;
a1=1;a2=1;a3=1;a4=1;#10;
end

reg b1; reg b2; reg b3; reg b4; wire out5;
basic_gate5 basicgate5(
                    .a(b1),
                    .b(b2),
                    .c(b3),
                    .d(b4),
                    .out(out5)
);
initial 
begin
b1=0;b2=0;b3=0;b4=0;#10;
b1=0;b2=0;b3=0;b4=1;#10;
b1=0;b2=0;b3=1;b4=0;#10;
b1=0;b2=0;b3=1;b4=1;#10;
b1=0;b2=1;b3=0;b4=0;#10;
b1=0;b2=1;b3=0;b4=1;#10;
b1=0;b2=1;b3=1;b4=0;#10;
b1=0;b2=1;b3=1;b4=1;#10;
b1=1;b2=0;b3=0;b4=0;#10;
b1=1;b2=0;b3=0;b4=1;#10;
b1=1;b2=0;b3=1;b4=0;#10;
b1=1;b2=0;b3=1;b4=1;#10;
b1=1;b2=1;b3=0;b4=0;#10;
b1=1;b2=1;b3=0;b4=1;#10;
b1=1;b2=1;b3=1;b4=0;#10;
b1=1;b2=1;b3=1;b4=1;#10;
end

endmodule
