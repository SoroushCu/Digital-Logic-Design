  `timescale 1ns/1ns
module MUXNANDtestbench();
  logic aa,bb,cc,dd,ss0,ss1;
  wire oout;
  integer i=0;
  MUXNAND UUT(aa,bb,cc,dd,ss0,ss1,oout);
  initial begin
  while(i<64) begin
  #100;
  {aa,bb,cc,dd,ss0,ss1}=64-i;
  #100;
  {aa,bb,cc,dd,ss0,ss1}=i;
  i=i+1;
  end
  #100 $stop;
  end
endmodule
