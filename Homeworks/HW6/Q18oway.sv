`timescale 1ns/1ns
module Q18oway(input [7:0] A,B, output LT,GT);
   wire l,e,g;
   wire[6:0] lt,gt;
   assign{lg}=2'b00;
   Q1onebitcomp G1(.a(A[0]),.b(B[0]),.l(l),.g(g),.lt(lt[0]),.gt(gt[0])),
                G2(.a(A[1]),.b(B[1]),.l(lt[0]),.g(gt[0]),.lt(lt[1]),.gt(gt[1])),
                G3(.a(A[2]),.b(B[2]),.l(lt[1]),.g(gt[1]),.lt(lt[2]),.gt(gt[2])),
                G4(.a(A[3]),.b(B[3]),.l(lt[2]),.g(gt[2]),.lt(lt[3]),.gt(gt[3])),
                G5(.a(A[4]),.b(B[4]),.l(lt[3]),.g(gt[3]),.lt(lt[4]),.gt(gt[4])),
                G6(.a(A[5]),.b(B[5]),.l(lt[4]),.g(gt[4]),.lt(lt[5]),.gt(gt[5])),
                G7(.a(A[6]),.b(B[6]),.l(lt[5]),.g(gt[5]),.lt(lt[6]),.gt(gt[6])),
                G8(.a(A[7]),.b(B[7]),.l(lt[6]),.g(gt[6]),.lt(LT),.gt(GT));
endmodule
