`timescale 1ns/1ns
module Instantiate();
    logic aa=0,bb=0,cc=0,dd=0;
     Q1PTV UUT(aa,bb,cc,dd,ffptv);
     initial begin
     #30 aa=1;
     #30 dd=1;
     #30 aa=0;
     #40 $stop;
     end
     Q1ASS UUT2(aa,bb,cc,dd,ffass);
     initial begin
     #30 aa=1;
     #30 dd=1;
     #30 aa=0;
     #40 $stop;
     end
endmodule

