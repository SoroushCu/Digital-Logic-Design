//In this module I have created a tri-state buffer 
`timescale 1ns/1ns
module NOTIF1(input a,En,output w);
//Here I have defined the needed wires and supplies
  wire x,y,z;
  supply1 Vdd;
  supply0 Gnd;
//Here we connect the pmos and nmos transistors accordingly.
  pmos #(5,6,7) T1(x,Vdd,En);
  nmos #(3,4,5) T2(x,Gnd,En);
  pmos #(5,6,7) T3(y,Vdd,a);
  pmos #(5,6,7) T4(w,y,x);
  nmos #(3,4,5) T5(w,z,En);
  nmos #(3,4,5) T6(z,Gnd,a);
endmodule
