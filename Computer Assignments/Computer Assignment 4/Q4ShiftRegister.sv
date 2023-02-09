`timescale 1ns/1ns
module Q4ShiftRegister(input si,CLK,output [7:0]PO);
	wire [8:0]Con;
	assign Con[8]=si;
        genvar i;
	generate 
		for(i=0;i<8;i=i+1)begin:DFFs
			Q3DLatch Latches(Con[8-i],CLK,Con[8-i-1]);
		end
	endgenerate
	assign PO=Con[7:0];
endmodule
