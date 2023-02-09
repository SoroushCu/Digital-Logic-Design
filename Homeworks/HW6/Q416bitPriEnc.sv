 `timescale 1ns/1ns
module Q416bitPriEnc(input [0:15] S,input Ei, output[3:0] N,output EO,AS );
   wire[4:0] casc;
   wire[7:0] M;
   wire[3:0] AS2bits;
   assign casc[4]=Ei,casc[0]=EO;
   genvar k;
   generate 
       for(k=0;k<64;k=k+1) begin:priencoders2bit
          Q3PriEnc pri (.S([4*k+3:4*k]),.Ei(casc[1+k]),.N(M[2*k+1:2*k]),.EO(casc[k]),.AS(AS2bits[k]);
       end
   endgenerate
   //Here we generate the needed or gates.
   or(N[3],AS2bits[3],AS2bits[2]);
   or(N[2],AS2bits[3],AS2bits[1]);
   //The manner of indicing is important here.
   or(N[1],M[0],M[2],M[4],M[6]);
   or(N[0],M[1],M[3],M[5],M[7]);
   or(AS,AS2bits[3],AS2bits[2],AS2bits[1],AS2bits[0]);
   assign EO=~AS;
endmodule


