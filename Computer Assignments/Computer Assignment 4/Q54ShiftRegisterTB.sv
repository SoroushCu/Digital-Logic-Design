`timescale 1ns/1ns
module Q54ShiftRegisterTB();
logic si=0,CLK=0;
wire [7:0] PO;
Q4ShiftRegister UUT(si,CLK,PO);
always #40 CLK<=~CLK;
initial begin  repeat(8) #50 si=$random(); 
  #800 $stop; end
endmodule
