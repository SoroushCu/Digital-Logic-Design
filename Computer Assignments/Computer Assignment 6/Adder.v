`timescale 1ns/1ns
module Adder(input [7:0] A, B, input cin, output [9:0] sum, output co);
	assign {co,sum}= A + B + cin;
endmodule
