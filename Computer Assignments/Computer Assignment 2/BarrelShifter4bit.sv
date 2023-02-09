  `timescale 1ns/1ns
module BarrelShifter4bit(input [3:0] a ,input[1:0] s,output [3:0] sh);
   MUX4to1 MUX1 (.a(a[3]),.b(a[0]),.c(a[1]),.d(a[2]),.s(s),.w(sh[3]));
   MUX4to1 MUX2 (.a(a[2]),.b(a[3]),.c(a[0]),.d(a[1]),.s(s),.w(sh[2])); 
   MUX4to1 MUX3 (.a(a[1]),.b(a[2]),.c(a[3]),.d(a[0]),.s(s),.w(sh[1]));
   MUX4to1 MUX4 (.a(a[0]),.b(a[1]),.c(a[2]),.d(a[3]),.s(s),.w(sh[0]));
endmodule