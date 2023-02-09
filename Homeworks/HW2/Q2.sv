  `timescale 1ns/1ns
module Q2(input a,b, output w);
   wire aa,bb,x,y,z;
   supply1 Vdd;
   supply0 Gnd;
   //Invb
   pmos #(5,7,9) T1(bb,Vdd,b);
   nmos #(3,5,7) T2(bb,Gnd,b);
   //Inva
   pmos #(5,7,9) T3(aa,Vdd,a);
   nmos #(3,5,7) T4(aa,Gnd,a);
   //Upper Part
   pmos #(5,7,9) T5(x,Vdd,bb);
   pmos #(5,7,9) T6(w,x,a);
   pmos #(5,7,9) T7(z,Vdd,b);
   pmos #(5,7,9) T8(w,z,aa);
   //Lower Part
   nmos #(3,5,7) T9(w,y,bb);
   nmos #(3,5,7) T10(w,y,a);
   nmos #(3,5,7) T11(y,Gnd,b);
   nmos #(3,5,7) T12(y,Gnd,aa);
endmodule