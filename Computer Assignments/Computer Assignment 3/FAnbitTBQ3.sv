 `timescale 1ns/1ns
module FAnbitTBQ3();
  logic [3:0] aa=4'b1100;
  logic [3:0] bb=4'b1001;
  logic ci=0;
  wire[3:0] ss;
  wire ccout;
  FAnbitQ2 #4 UUT(aa,bb,ci,ss,ccout);
  initial begin
  repeat(12)#250 
	{aa,bb}=$random();
  #250 $stop;
  end
endmodule
