`timescale 1ns/1ns
module Q10LFSR(input[7:0]PI,input CLK,output [7:0]PO);
	 logic z;
         xor(z,PO[0],PO[1],PO[2],PO[5]);
        Q9ShiftRegister SR1 (.PI(PI),.CLK(CLK),.si(z),.PO(PO));
endmodule
