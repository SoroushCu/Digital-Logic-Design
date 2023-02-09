`timescale 1ns/1ns
module Q1SRLatch(input S,R,CLK ,output Q,Qb);
    wire x,y,Sb,Rb,CLKb;
    nand #8 (Sb, S , S);
    nand #8 (Rb , R ,R);
    nand #8 (CLKb , CLK , CLK);
    nand #8 (x , Rb , CLKb);
    nand #8 (y , Sb , CLKb);
    nand #8 (Qb,Q,x);
    nand #8(Q , Qb , y);
endmodule
