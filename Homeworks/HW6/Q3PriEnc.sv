 `timescale 1ns/1ns
module Q3PriEnc(input [3:0] S,input Ei, output[1:0] N,output EO,AS );
   assign N = Ei ? 1'bz:
          (S==4'b1xxx) ? 2'b11:
          (S==4'b01xx) ? 2'b10:
          (S==4'b001x) ? 2'b01:
          (S==4'b0001) ? 2'b00:
          (S==4'b0000) ? 2'b00:1'bx;
   assign EO = (S==4'b0000) ? 1'b0 :1'b1;
   assign AS = (S==4'b0000) ? 1'b1 :1'b0;
endmodule
