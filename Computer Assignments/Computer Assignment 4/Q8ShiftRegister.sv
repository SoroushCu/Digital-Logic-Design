`timescale 1ns/1ns
module Q8ShiftRegister(input si,CLK,RST,output [7:0]PO);
	wire [8:0]Con;
	assign Con[8]=si;
        genvar i;
	generate 
		for(i=0;i<8;i=i+1)begin:DFFs
			Q7MSDFFR Latches(Con[8-i],CLK,RST,Con[8-i-1]);
		end
	endgenerate
	assign PO=Con[7:0];
endmodule
