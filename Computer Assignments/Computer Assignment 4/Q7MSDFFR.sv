`timescale 1ns/1ns
module Q7MSDFFR(input D ,CLK,RST,output logic Q,Qb);
    wire x,y;
    Q3DLatch M(.D(D),.CLK(CLK),.Q(x),.Qb(y));
    Q3DLatch S(.D(x),.CLK(~CLK),.Q(Q),.Qb(Qb));
    always@(RST)begin
     if(RST)
        Q<=1'b0;
        Qb<=1'b1;
    end
endmodule
