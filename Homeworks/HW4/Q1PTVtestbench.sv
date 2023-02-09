 `timescale 1ns/1ns
module Q1PTVtestbench();
     logic aa=0,bb=0,cc=0,dd=0;
     wire ff;
     Q1PTV UUT(aa,bb,cc,dd,ff);
     initial begin
     #30 cc=1;
     #50 bb=1;
     #40 $stop;
     end
endmodule
