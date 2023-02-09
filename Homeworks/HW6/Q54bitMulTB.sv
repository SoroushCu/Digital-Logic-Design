 `timescale 1ns/1ns
module Q54bitMulTB();
     logic [3:0] aa=4'b1101;
     logic [3:0] bb=4'b1011;
     logic [7:0] ww;
     Q54bitMul UUT(aa,bb,ww);
     initial begin
     #100
      aa=4'b1111;
     #40 $stop;
     end
endmodule

