 `timescale 1ns/1ns
module NANDtestbench();
  logic aa=0;
  logic bb=0;
  wire ww;
  NAND UUT(aa,bb,ww);
  initial begin
  #30 aa=1;
  #30 bb=1;
  #30 aa=0;bb=0;
  #30 aa=1;bb=1;
  #30 bb=0;
  #40 $stop;
  end
endmodule