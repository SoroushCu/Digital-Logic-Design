 `timescale 1ns/1ns
module Q6(input a,b,c,d,e,f,g,h,output w);
  wire x,y,z,t;
  //XOR Gates
  Q3 G1(.a(d),.b(h),.w(x));
  Q3 G2(.a(c),.b(g),.w(y));
  Q3 G3(.a(b),.b(f),.w(z));
  Q3 G4(.a(a),.b(e),.w(t));
  // NOR Gate
  Q4 G5 (.a(x),.b(y),.c(z),.d(t),.w(w));
endmodule