`timescale 1ns/1ns
module CMP8bit(input [7:0]A,input [7:0]B ,output lt,gt,eq);
    logic[7:0] l,e,g;
    assign{l[0],g[0],e[0]}=3'b001;
    CMP1bit C1(A[0],B[0},l[0],e[0],g[0],l[1],g[1],e[1]),
            C2(A[1],B[1},l[1],e[1],g[1],l[2],g[2],e[2]),
            C3(A[2],B[2},l[2],e[2],g[2],l[3],g[3],e[3]),
            C4(A[3],B[3},l[3],e[3],g[3],l[4],g[4],e[4]),
            C5(A[4],B[4},l[4],e[4],g[4],l[5],g[5],e[5]),
            C6(A[5],B[5},l[5],e[5],g[5],l[6],g[6],e[6]),
            C7(A[6],B[6},l[6],e[6],g[6],l[7],g[7],e[7]),
            C8(A[7],B[7},l[7],e[7],g[7],lt,gt,eq);
endmodule
