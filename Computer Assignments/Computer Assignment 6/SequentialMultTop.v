`timescale 1ns/1ns
module SequentialMultTop(input clk,rst,start,input [23:0] A,B,output[47:0] Resultbus,output ready);
wire A0;
wire loadA,shiftA,loadB,loadP,InitP,Bsel;
  MULTDP DP(clk,rst,loadA,loadB,loadP,shiftA,InitP,Bsel,A,B,Resultbus,A0);
  MULTCU CU(clk,rst,start,A0,loadA,shiftA,loadB,loadP,InitP,Bsel,ready);
endmodule