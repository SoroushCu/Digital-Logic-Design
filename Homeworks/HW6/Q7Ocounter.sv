`timescale 1ns/1ns
module Q7Ocounter(input[63:0] A,output [6:0] f);
   wire [63:0] Ap,A2s,XORout;
   assign Ap=~A;
   assign A2s=Ap+64'd1;
   integer i,ones=0;
   genvar k;
   generate 
       for(k=0;k<64;k=k+1) begin:xoring
          xor xx (XORout[k],Ap[k],A2s[k]);
       end
   endgenerate
   always @(XORout)begin
       for(i=0;i<64;i=i+1)
         ones=ones+XORout[i];
    end
    assign f=ones;
endmodule

