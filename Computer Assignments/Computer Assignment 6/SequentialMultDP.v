`timescale 1ns/1ns
module MULTDP(input clk, rst, loadA, loadB, loadP, shiftA, InitP, Bsel,input [23:0] Abus, Bbus, output [47:0] Resultbus, output A0);
	reg [23:0] Areg, Breg, Preg;
	wire [23:0] B_AND;
	wire [25:0] Addbus;
	always @(posedge clk, posedge rst) begin
		if (rst)
		       Breg <= 24'b0;
		else if(loadB)
		       Breg <= Bbus;
	end
	always @(posedge clk, posedge rst) begin
		if (rst)
			Preg <= 24'b0;
		else begin
			if(InitP)
			     Preg <= 24'b0;
			else if (loadP)
			     Preg <= Addbus [24:1];
		end
	end
	always @(posedge clk, posedge rst) begin
		if (rst)
			Areg <= 24'b0;
		else begin
			if(loadA)
			       Areg <= Abus;
			else if (shiftA)
			       Areg <= {Addbus[0], Areg[23:1]};
		end
	end
	assign B_AND = Bsel ? Breg : 24'b0;
	assign Addbus = B_AND + Preg;
	assign Resultbus = {Preg, Areg};
	assign A0 = Areg[0];
endmodule




