`timescale 1ns/1ns
module OnescounterAlQ6 #(parameter n = 6) (input [0 : 2 ** (n + 1) - 2] in,output [n : 0] out);
	integer k=0;
        integer Dummy=0;
        always@(in) begin
              Dummy=0;
              for(k=0;k<=126;k=k+1)begin
                   Dummy=Dummy+in[k];
              end
        end
        assign #798 out=Dummy;
endmodule
