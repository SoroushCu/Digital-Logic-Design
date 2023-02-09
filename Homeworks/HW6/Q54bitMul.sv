`timescale 1ns/1ns
module Q54bitMul(input [3:0] A,input [3:0] B, output [7:0] M);
   logic [3:0]A0,A1,A2,A3,Add1;
   logic [5:0] Add2,Add3,Add4;
   Q52bitMul Mul1(.A(A[1:0]),.B(B[1:0]),.M(A0)),
             Mul2(.A(A[3:2]),.B(B[1:0]),.M(A1)),
             Mul3(.A(A[1:0]),.B(B[3:2]),.M(A2)),
             Mul4(.A(A[3:2]),.B(B[3:2]),.M(A3));
   assign Add1={0,0,A0[3:2]};
   assign Add2={0,0,A1+Add1};
   assign Add3={0,0,A2};
   assign Add4={A3,0,0};
   assign Add5=(Add3+Add4);
   assign M[7:2]=(Add2+Add5);
   assign M[1:0]=A0[1:0];
endmodule
