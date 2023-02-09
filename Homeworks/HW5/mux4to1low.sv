`timescale 1ns/1ns
module mux4to1low(input [3:0]A,input [1:0]s,input oe ,output f);
      assign f=oe ? 1'bz:
             (s==2'b00) ? A[0]:
             (s==2'b01) ? A[1]:
             (s==2'b10) ? A[2]:
             (s==2'b11) ? A[3]:1'bx;
endmodule
