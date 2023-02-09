 `timescale 1ns/1ns
module Q1oway(input a ,b ,l,g, output lt,gt);
   assign{lt,eq,gt}=(a>b) ? 3'b001:
                    (a<b) ? 3'b100:
                    (a==b) ? {l,g} : 3'bx;
endmodule

