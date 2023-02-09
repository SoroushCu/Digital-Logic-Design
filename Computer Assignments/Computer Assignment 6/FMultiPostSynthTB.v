`timescale 1ns/1ns
module FMultiPostSynthTB();
	reg clk=1'b0;
	reg rst=0;
	reg start=0;
	reg [31:0] A = 32'b01000001010001000000000000000000;
	reg [31:0] B = 32'b11000000011000000000000000000000;
	reg [31:0] Tempbus;
	reg resultaccept=0;
	reg ready = 0;
	wire accept,doneMul,resultready;
	wire [31:0] ResultBus;
	FMultiPostSynth UUT (clk, rst, start,resultaccept,Tempbus, ResultBus, ready , accept,doneMul,resultready);
	always #10 clk <= ~clk;
	initial begin
		#40 rst=1;
		#40 rst=0;
		#40 Tempbus = A;
		#40 ready = 1;
                #40 if(accept) begin ready = 0; end
		#40 Tempbus = B;
		#40 ready = 1;
                #40 if(accept) ready = 0;
		#40;
		#40 start=1;
		#40 start=0;
		#800;
  	  	#200;
		#40 rst=1;
		#40 rst=0;
		#40 Tempbus =32'b01000000000100000000000000000000;
		#40 ready = 1;
                #40 if(accept) begin ready = 0; end
		#40 Tempbus = 32'b01000001100011000000000000000000;
		#40 ready = 1;
                #40 if(accept) ready = 0;
		#40;
		#40 start=1;
		#40 start=0;
		#800 resultaccept=1;
		#60 $stop;
	end
endmodule
