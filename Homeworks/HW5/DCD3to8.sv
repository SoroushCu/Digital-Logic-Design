 `timescale 1ns/1ns
module DCD3to8(input [2:0] A,input en,output [0:7] F);
   assign F=en ? 8'd0 :
   (A==0) ? 8'b10000000 :
   (A==1) ? 8'b01000000 :
   (A==2) ? 8'b00100000 :
   (A==3) ? 8'b00010000 :
   (A==4) ? 8'b00001000 :
   (A==5) ? 8'b00000100 :
   (A==6) ? 8'b00000010 :
   (A==7) ? 8'b00000001 :
   8'bxxxxxxxx;
endmodule