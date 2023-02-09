//In this Module I've created a 4 to 1
//MUX with 2 input NAND gates only.
  `timescale 1ns/1ns
module MUXNAND(input a,b,c,d,s0,s1, output out);
//Here I have defined the needed wires.
  wire x,y,z,w,f,h,k,l,m,o;
/*Based on the design for a 4 to 1 MUX
with 2 input NAND gates,I've used the 
NAND gate from problem 1 (11 gates) and connected
them in the proper manner.*/
  NAND T1 (.i1(s0),.i2(s0),.out(x));
  NAND T2 (.i1(s0),.i2(d),.out(o));
  NAND T3 (.i1(s1),.i2(k),.out(m));
  NAND T4 (.i1(s1),.i2(s1),.out(y));
  NAND T5 (.i1(b),.i2(x),.out(z));
  NAND T6 (.i1(o),.i2(z),.out(k));
  NAND T7 (.i1(s0),.i2(c),.out(w));
  NAND T8 (.i1(x),.i2(a),.out(f));
  NAND T9 (.i1(w),.i2(f),.out(h));
  NAND T10 (.i1(h),.i2(y),.out(l));
  NAND T11 (.i1(l),.i2(m),.out(out));
endmodule
  
  
