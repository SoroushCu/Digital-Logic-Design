`timescale 1ns/1ns
module WrapO(input clk,rst,doneMul,resultaccept,input [31:0]in,output reg resultready,output reg [31:0]Final);
	always@(posedge clk,posedge rst)begin
		if(rst)begin
			Final<= 32'd0;
			resultready <= 1'b0;
		end
		else if(doneMul & ~resultaccept)begin
			resultready <= 1'b1;
			Final<= in ;
		end
		else if(doneMul & resultaccept)begin
			resultready <= 1'b0;
			Final<= 32'd0 ;
		end
	end
endmodule

