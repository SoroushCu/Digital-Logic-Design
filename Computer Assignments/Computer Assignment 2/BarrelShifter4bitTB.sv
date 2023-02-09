 `timescale 1ns/1ns
module BarrelShifter4bitTB();
  logic [3:0] aa=4'b1110;
  logic [1:0] ss=2'b00;
  wire [3:0] sh;
  integer i=0;
  BarrelShifter4bit UUT(aa,ss,sh);
  initial begin
  #100 
  while(i<3) begin
  #100 ss=ss+1;
  i=i+1;
  end
  #100 $stop;
  end
endmodule
