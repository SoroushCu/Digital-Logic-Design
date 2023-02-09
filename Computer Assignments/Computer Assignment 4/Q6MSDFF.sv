`timescale 1ns/1ns
module Q6MSDFF(input D ,CLK ,output Q,Qb);
    wire x,y;
    Q3DLatch M(.D(D),.CLK(CLK),.Q(x),.Qb(y));
    Q3DLatch S(.D(x),.CLK(~CLK),.Q(Q),.Qb(Qb));
endmodule
