//In this module I have created a NAND gate.
  `timescale 1ns/1ns
module NAND (input i1,i2,output out);
//Here I have defined the needed wires and supplies.
   wire y;
   supply1 Vdd;
   supply0 Gnd;
//Here we connect the pmos and nmos transistors accordingly.
   pmos #(5,6,7) T1(out,Vdd,i1);
   pmos #(5,6,7) T2(out,Vdd,i2);
   nmos #(3,4,5) T3(y,Gnd,i2);
   nmos #(3,4,5) T4(out,y,i1);
endmodule
