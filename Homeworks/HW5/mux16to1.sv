`timescale 1ns/1ns
module mux16to1(input [0:15]J,input [3:0]s,input oe ,output f);
      wire f1,f2,f3,f4;
      integer i=0;
      mux4to1low M1(.A({J[0],J[1],J[2],J[3]}),.s({s[1],s[0]}),.oe(0),.f(f1)),
                 M2(.A({J[4],J[5],J[6],J[7]}),.s({s[1],s[0]}),.oe(0),.f(f2)),
                 M3(.A({J[8],J[9],J[10],J[11]}),.s({s[1],s[0]}),.oe(0),.f(f3)),
                 M4(.A({J[12],J[13],J[14],J[15]}),.s({s[1],s[0]}),.oe(0),.f(f4)),
                 M5(.A({f1,f2,f3,f4}),.s({s[2],s[3]}),.oe(0),.f(0));
endmodule
