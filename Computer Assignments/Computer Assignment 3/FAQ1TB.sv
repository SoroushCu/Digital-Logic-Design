 `timescale 1ns/1ns
module FAQ1TB();
  logic aa=0;
  logic bb=0;
  logic ci=0;
  wire ss,ccout;
  FAQ1	 UUT(aa,bb,ci,ss,ccout);
  initial begin
  #80 ci=1;
  #80 ci=0;
  #80 bb=1;
  #80 ci=1;
  #80 ci=0;
  #80 bb=0;
  #80 aa=1;
  #80 ci=1;
  #80 ci=0;
  #80 bb=1;
  #80 ci=1;
  #80 bb=0;
  #80 ci=0;
  #80 bb=1;
  #80 ci=1;
  #80 $stop;
  end
endmodule
