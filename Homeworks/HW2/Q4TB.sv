 `timescale 1ns/1ns
module Q4TB();
  logic aa=1;
  logic bb=1;
  logic cc=1;
  logic dd=1;
  wire ww;
  Q4 UUT(aa,bb,cc,dd,ww);
  initial begin
  #40 aa=0;
  #40 bb=0;
  #40 cc=0;
  #40 dd=0;
  #40 aa=1;
  #40 bb=1;
  #40 cc=1;
  #40 aa=0;
  #40 $stop;
  end
endmodule
