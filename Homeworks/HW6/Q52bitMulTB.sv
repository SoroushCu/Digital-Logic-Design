 `timescale 1ns/1ns
module Q52bitMulTB();
     logic [1:0] aa=2'b10;
     logic [1:0] bb=2'b11;
     logic [3:0] ww;
     Q52bitMul UUT(aa,bb,ww);
     initial begin
     #100
      aa=2'b11;
     #40 $stop;
     end
endmodule


