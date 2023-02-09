`timescale 1ns/1ns
module Rg32Bit(input [31:0] PI, input clk, rst, en,ready, output reg [31:0] PO,output reg accept);
	always @(posedge clk, posedge rst) begin
		if(rst) begin
			PO <= 32'd0;
			accept <= 0;
		end
		else if(ready & en) begin
			PO <=  PI;
			accept = 1;
		end
		else  accept <= 0;
	end
endmodule