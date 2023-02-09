`timescale 1ns/1ns
module Q21SRLatchTB();
  logic CLK=0;
  logic S=0;
  logic R=0;
  wire Qb,Q;
  Q1SRLatch UUT (S,R,CLK,Q,Qb);
always #65 CLK<=~CLK;
  initial begin
    #100 R = 1;
    #100 R = 0;
    #100 S = 1;
    #100 R = 1;
    #100 R = 0;
    #100 S = 0;
    #100 $stop;
  end
endmodule
