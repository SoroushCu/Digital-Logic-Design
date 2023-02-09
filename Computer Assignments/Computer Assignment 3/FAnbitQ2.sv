`timescale 1ns/1ns
module FAnbitQ2 #(parameter n = 4)( a,b,CIN,SUM,COUT);
  input [n-1:0]a,b;
  input CIN;
  output[n-1:0] SUM;
  output COUT;
  assign #(n*38) {COUT,SUM}=a+b+CIN;
endmodule
