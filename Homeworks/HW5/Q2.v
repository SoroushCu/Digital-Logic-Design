  `timescale 1ns/1ns
module Q2(input [3:0] A,B,input Cin, output [3:0] S, output Co);
assign {Co,S}=A+B+Cin;
endmodule
