 `timescale 1ns/1ns
module BarrelShifter16bitTB();
  logic [15:0] aa=16'b1111111111111110;
  logic [3:0] ss=4'b0000;
  integer i=0;
  logic [15:0] ww;
  BarrelShifter16bit UUT(aa,ss,ww);
  initial begin
  while(i<15) begin
  #300 ss=ss+1;
  i=i+1;
  end
  #100 $stop;
  end
endmodule
