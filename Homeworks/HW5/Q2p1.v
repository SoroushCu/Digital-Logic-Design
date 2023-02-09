  `timescale 1ns/1ns
module Q2p1(input  A,B,input Cin, output S, output Co);
assign {Co,S}=A+B+Cin;
endmodule
