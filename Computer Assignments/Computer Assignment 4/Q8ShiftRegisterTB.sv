`timescale 1ns/1ns
module Q8ShiftRegisterTB();
logic si=0,CLK=0,RST=0;
wire [7:0] PO;
Q8ShiftRegister UUT(si,CLK,RST,PO);
always #40 CLK<=~CLK;
initial begin
  #800 $stop;
endmodule