 `timescale 1ns/1ns
module Q1onebitcomp(input a ,b ,l,e,g, output lt,eq,gt);
   assign{lt,eq,gt}=(a>b) ? 3'b001:
                    (a<b) ? 3'b100:
                    (a==b) ? {l,e,g} : 3'bx;
endmodule
