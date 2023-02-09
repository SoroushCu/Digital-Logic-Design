 `timescale 1ns/1ns
module Q2MealyTB();
  logic j,clk=0,rst=0;
  wire Out;
  Q2Mealy UUT(clk,rst,j,Out);
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


