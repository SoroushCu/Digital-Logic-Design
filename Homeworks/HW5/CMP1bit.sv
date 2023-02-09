`timescale 1ns/1ns
module CMP1bit(input a,b,l,e,g ,output lt,gt,eq);
    assign {lt,eq,gt} = (a<b) ? 3'b100 :
                        (a>b) ? 3'b001 :
                        (a==b) ? {l,e,g} :
                        3'bxxx;
endmodule