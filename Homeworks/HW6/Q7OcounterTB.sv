 `timescale 1ns/1ns
module Q7OcounterTb();
     logic [63:0] aa=64'd11;
     wire [6:0] ww;
     Q7Ocounter UUT(aa,ww);
     initial begin
     #100
     #40 $stop;
     end
endmodule

