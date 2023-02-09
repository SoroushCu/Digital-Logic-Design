`timescale 1ns/1ns
module FAQ1(input a,b,CIN,output SUM,COUT);
   wire x,y,z;
   nand #(10,8) (y,a,b);
   xor #(17,19) (x,a,b);
   nand #(10,8) (z,x,CIN);
   nand #(10,8) (COUT,y,z);
   xor #(17,19) (SUM,x,CIN);
endmodule
 //assign #(10,8) y=(~a|~b);
   //assign #(17,19) x=a^b;
   //assign #(10,8) z=(~x|~CIN);
   //assign #(10,8) COUT=(~y|~z);
   //assign #(17,19) SUM=x^CIN;