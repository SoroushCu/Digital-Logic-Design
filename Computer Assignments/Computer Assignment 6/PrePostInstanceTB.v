`timescale 1ns/1ns
module PrePostInstanceTB();
	reg clk=1'b0;
	reg rst=0;
	reg startMul=0;
	reg [31:0] A = 32'b01000001010001000000000000000000;
	reg [31:0] B = 32'b11000000011000000000000000000000;
	reg [31:0] Tempbus;
	reg ready1 = 0;
	reg ready2 = 0;
	reg resultaccept=0;
	wire accept1,accept2,doneMul1,doneMul2,resultready1,resultready2;
	wire [31:0] ResultBus1;
	wire [31:0] ResultBus2;
	FMultiPostSynth UUT2 (clk, rst, startMul,resultaccept ,Tempbus, ResultBus2, ready2 , accept2,doneMul2,resultready2);
	Top_Level UUT1 (clk, rst, startMul,resultaccept ,Tempbus, ResultBus1, ready1 , accept1,doneMul1,resultready1);
	always #10 clk <= ~clk;
	initial begin
		#40 rst=1;
		#40 rst=0;
		#40 Tempbus = A;
		#40 ready1 = 1;ready2=1;
                #40 if(accept1) begin ready1 = 0; end if(accept2) begin ready2 = 0; end
		#40 Tempbus = B;
		#40 ready1 = 1;ready2=1;
                #40 if(accept1) ready1 = 0; if(accept2) ready2 = 0;
		#40;
		#40 startMul=1;
		#40 startMul=0;
		#800 resultaccept=1;
		#400 resultaccept=0;
                #40 rst=1;
		#40 rst=0;
		#40 Tempbus = 32'b01000000000100000000000000000000;
		#40 ready1 = 1;ready2=1;
                #40 if(accept1) begin ready1 = 0; end if(accept2) begin ready2 = 0; end
		#40 Tempbus = 32'b01000001100011000000000000000000;
		#40 ready1 = 1;ready2=1;
                #40 if(accept1) ready1 = 0; if(accept2) ready2 = 0;
		#40;
		#40 startMul=1;
		#40 startMul=0;
		#800 resultaccept=1;
		#200 $stop;
	end
endmodule
