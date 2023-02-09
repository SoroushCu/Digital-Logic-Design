`timescale 1ns/1ns
module Q6MSDFFTB();
  logic CLK=0;
  logic D=0;
  wire Qb,Q;
  Q6MSDFF UUT (D,CLK,Q,Qb);
  always #40 CLK<=~CLK;
  initial begin
    #100 D = 0;
    #100 D = 1;
    #100 D = 0;
    #100 D = 1;
    #100 D = 1;
    #100 D = 0;
    #100 $stop;
  end
endmodule
