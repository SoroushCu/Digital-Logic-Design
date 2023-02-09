  `timescale 1ns/1ns
module Q3(input a,b, output w);
  assign#(23,25) w=a^b;
endmodule
