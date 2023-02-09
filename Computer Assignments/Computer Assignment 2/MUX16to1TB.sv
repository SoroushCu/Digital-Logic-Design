 `timescale 1ns/1ns
module MUX16to1TB();
  logic [0:15] jj=16'b0101010101010101;
  logic [3:0] ss=4'b0000;
  integer i=0;
  wire ww;
  MUX16to1 UUT(jj,ss,ww);
  initial begin
  #100 ss=0;
  while(i<15) begin
  #200 ss=ss+1;
  i=i+1;
  end
  #100 $stop;
  end
endmodule

