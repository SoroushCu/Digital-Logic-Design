`timescale 1ns/1ns
module SequentialMultTB();
	reg clk=1'b0;
	reg rst=0;
	reg start=0;
	reg [23:0] A;
        reg [23:0] B;
	wire [47:0] Resultbus;
 	wire ready;
	SequentialMultTop UUT (clk, rst, start, A,B, Resultbus, ready);
	always #5 clk <= ~clk;
	initial begin
		 #3 rst=1;
   		 #3 rst=0;
                #13 A=24'd2;
                #13 B=24'd2;
   		 #3 start=1;
                #13 start=0;
                #300 A=24'd5;
                #100 B=24'd12;
                #3 start=1;
                #13 start=0;
                #400 $stop;
	end
endmodule
