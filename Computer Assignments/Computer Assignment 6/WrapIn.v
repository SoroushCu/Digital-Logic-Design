`timescale 1ns/1ns
module WrapIn(input  clk, rst, inReady, inAccept, output reg enA, enB);
	integer checker = 0;
	always @(posedge clk, posedge rst) begin
		if(rst) begin
			enA <= 1'b1;
			enB <= 1'b0;
			checker = 0;
		end
		else if(inReady & ~(inAccept) & ~checker) begin
			enA <= ~enA;
			enB <= ~enB;
			checker = 1;
		end
	end
endmodule