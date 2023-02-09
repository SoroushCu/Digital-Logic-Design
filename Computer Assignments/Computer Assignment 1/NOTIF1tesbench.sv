  `timescale 1ns/1ns
module NOTIF1testbench();
  logic aa=1;
  logic EN=1;
  wire ww;
  NOTIF1 UUT(aa,EN,ww);
  initial begin
  #30 aa=0;
  #30 EN=0;
  #30 EN=1;
  #30 aa=1;
  #50 $stop;
  end
endmodule