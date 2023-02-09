`timescale 1ns/1ns
module Q18bitcomp(input [7:0] A,B, output LT,EQ,GT);
   wire l,e,g;
   wire[6:0] lt,eq,gt;
   assign{l,e,g}=3'b010;
   Q1onebitcomp G1(.a(A[0]),.b(B[0]),.l(l),.e(e),.g(g),.lt(lt[0]),.eq(eq[0]),.gt(gt[0])),
                G2(.a(A[1]),.b(B[1]),.l(lt[0]),.e(eq[0]),.g(gt[0]),.lt(lt[1]),.eq(eq[1]),.gt(gt[1])),
                G3(.a(A[2]),.b(B[2]),.l(lt[1]),.e(eq[1]),.g(gt[1]),.lt(lt[2]),.eq(eq[2]),.gt(gt[2])),
                G4(.a(A[3]),.b(B[3]),.l(lt[2]),.e(eq[2]),.g(gt[2]),.lt(lt[3]),.eq(eq[3]),.gt(gt[3])),
                G5(.a(A[4]),.b(B[4]),.l(lt[3]),.e(eq[3]),.g(gt[3]),.lt(lt[4]),.eq(eq[4]),.gt(gt[4])),
                G6(.a(A[5]),.b(B[5]),.l(lt[4]),.e(eq[4]),.g(gt[4]),.lt(lt[5]),.eq(eq[5]),.gt(gt[5])),
                G7(.a(A[6]),.b(B[6]),.l(lt[5]),.e(eq[5]),.g(gt[5]),.lt(lt[6]),.eq(eq[6]),.gt(gt[6])),
                G8(.a(A[7]),.b(B[7]),.l(lt[6]),.e(eq[6]),.g(gt[6]),.lt(LT),.eq(EQ),.gt(GT));
endmodule