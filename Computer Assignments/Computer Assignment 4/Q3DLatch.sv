`timescale 1ns/1ns
module Q3DLatch(input D ,CLK ,output Q,Qb);
    wire X;
    not #6 (X,D);
    Q1SRLatch G1 (.S(X),.R(D),.CLK(CLK),.Q(Q),.Qb(Qb));
endmodule
