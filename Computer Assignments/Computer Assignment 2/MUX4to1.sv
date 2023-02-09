  `timescale 1ns/1ns
module MUX4to1(input a,b,c,d,input[1:0] s,output w);
  wire [0:3] J;
  assign J={a,b,c,d};
  assign #(41,44) w=J[s];
endmodule
