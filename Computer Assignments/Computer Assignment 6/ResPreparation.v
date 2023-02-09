`timescale 1ns/1ns
module ResPreparation(output Nmlized,output [47:0] PNmlized,output[22:0] PMantissa,output [9:0] Rexp1,input[47:0] ResultMul,output[31:0] ResultBus,input[31:0] A,B,input[9:0]Rexp);
	assign Nmlized = ResultMul[47] ? 1'b1 : 1'b0;
	assign PNmlized = Nmlized ? ResultMul : ResultMul << 1;
	assign PMantissa = PNmlized[46:24] + PNmlized[23];
	assign Rexp1 = Rexp + Nmlized+8'b01111111;
	assign ResultBus = {A[31]^B[31], Rexp1[7:0], PMantissa};
endmodule
