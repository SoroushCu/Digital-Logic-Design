`timescale 1ns/1ns
module Top_Level(input clk, rst, startMul,resultaccept, input [31:0] X ,output [31:0] ResultBus, input inReady, output inAccept,output doneMul,resultready);
	wire A0, loadA, shiftA, loadB, loadP, InitP, Bsel,co,cosub,Nmlized;
	wire [47:0] ResultMul, PNmlized; 
	wire [22:0] PMantissa;
	wire [31:0] A, B,TempResBus;
	wire enA, enB, inAcceptA, inAcceptB;
	wire [9:0] Radder, Rexp1,Rexp;
	or(inAccept,inAcceptA,inAcceptB);
	Rg32Bit Areg(.PI(X), .clk(clk), .rst(rst), .en(enA), .ready(inReady),.PO(A), .accept(inAcceptA));
	Rg32Bit Breg(.PI(X), .clk(clk), .rst(rst), .en(enB), .ready(inReady), .PO(B), .accept(inAcceptB));
	WrapIn w(.clk(clk), .rst(rst), .inReady(inReady), .inAccept(inAccept), .enA(enA), .enB(enB));
	WrapO wo(.clk(clk),.rst(rst),.doneMul(doneMul),.resultaccept(resultaccept),.in(TempResBus),.resultready(resultready),.Final(ResultBus));
	MULTDP dp(.clk(clk), .rst(rst), .loadA(loadA), .loadB(loadB), .loadP(loadP), .shiftA(shiftA), .InitP(InitP), .Bsel(Bsel), .Abus({1'b1,A[22:0]}), .Bbus({1'b1,B[22:0]}), .Resultbus(ResultMul), .A0(A0));
	MULTCU cu(.clk(clk), .rst(rst), .start(startMul), .A0(A0), .loadA(loadA), .shiftA(shiftA), .loadB(loadB), .loadP(loadP), .InitP(InitP), .Bsel(Bsel), .ready(doneMul));
	Adder Addition(.A(A[30:23]), .B(B[30:23]), .cin(1'b0), .sum(Radder), .co(co));
	Adder Subtraction(.A(Radder), .B({10'b1000000010}), .cin(1'b0), .sum(Rexp), .co(cosub));
        ResPreparation prep(.Nmlized(Nmlized),.PNmlized(PNmlized),.PMantissa(PMantissa),.Rexp1(Rexp1),.ResultMul(ResultMul),.ResultBus(TempResBus),.A(A),.B(B),.Rexp(Rexp));
endmodule

