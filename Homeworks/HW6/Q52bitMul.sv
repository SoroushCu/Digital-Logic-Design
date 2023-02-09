`timescale 1ns/1ns
module Q52bitMul(input [1:0] A,input [1:0] B, output [3:0] M);
   assign M[3]=(A[0] & A[1] & B[0] & B[1]);
   assign M[2]=((A[1] & ~A[0] & B[1]) | (A[1] & B[1] & ~B[0])); 
   assign M[1]=((A[1] & ~B[1] & B[0]) | (A[1] & ~A[0] & B[0]) | (~A[1] & A[0] & B[1])  | (A[0] & B[1] & ~B[0])); 
   assign M[0]=(A[0] & B[0]);
endmodule


