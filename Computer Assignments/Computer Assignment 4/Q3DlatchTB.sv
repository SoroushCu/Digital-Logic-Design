`timescale 1ns/1ns
module Q3DLatchTB();
  logic CLK=0;
  logic D=0;
  wire Qb,Q;
  Q3DLatch UUT (D,CLK,Q,Qb);
  always #50 CLK<=~CLK;
  initial begin
    #50 D = 0;
    #50 D = 1;
    #50 D = 0;
    #50 D = 1;
    #50 D = 1;
    #50 D = 0;
    #50 $stop;
  end
endmodule
