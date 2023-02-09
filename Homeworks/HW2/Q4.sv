  `timescale 1ns/1ns
module Q4(input a,b,c,d, output w);
  assign#(20,36) w=~a&~b&~c&~d;
endmodule
