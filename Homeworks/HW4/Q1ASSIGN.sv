  `timescale 1ns/1ns
module Q1ASS(input a,b,c,d,output f);
  assign#(22,22) f=a&~c|~a&~b&c|~a&b&~d;
endmodule

