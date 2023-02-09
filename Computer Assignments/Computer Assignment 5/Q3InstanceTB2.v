 `timescale 1ns/1ns
module Q3InstanceTB2();
  reg j,clk=0,rst=0;
  wire Out1,Out2,XOROut;
  Q2MealyPostSynth UUT2(clk,rst,j,Out1);
  Q1MoorePostSynth UUT1 (clk,rst,j,Out2);
  assign XOROut=Out1^Out2;
  assign FOut=XOROut|(Out1&Out2);
  always #25 clk<=~clk;
  initial begin
  #50 j=0;
  #50 j=1;
  #50 j=0;
  #50 j=0;
  #50 j=1;
  #50 j=0;
  #50 j=1;
  #50 j=0;
  #50 j=0;
  #50 j=1;
  #50 j=0;
  #50 j=0;
  #100 $stop;
  end
endmodule



