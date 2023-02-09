 `timescale 1ns/1ns
module MUX4to1TB();
  logic aa=0,bb=0,cc=0,dd=0,ss0=0,ss1=0;
  logic [1:0] ss;
  assign ss={ss1,ss0};
  wire ww;
  MUX4to1 UUT(aa,bb,cc,dd,ss,ww);
  initial begin
  #50 aa=1;
  #50 aa=0;
  #50 ss0=1;
  #50 bb=1;
  #50 bb=0;
  #50 ss1=1;
  #50 dd=1;
  #50 $stop;
  end
endmodule
