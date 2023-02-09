`timescale 1ns/1ns
module Q7MSDFFTB();
  logic CLK=0;
  logic D=0;
  logic RST=0;
  wire Qb,Q;
  Q7MSDFFR UUT (D,CLK,RST,Q,Qb);
  always #40 CLK<=~CLK;
  initial begin
    #100 D = 0;
    #100 D = 1;
    #100 D = 0;
    #100 D = 1;
    #100 D = 1;
    #50 RST=1;
    #100 D = 0;
    #100 RST=1;
    #100 $stop;
  end
endmodule
