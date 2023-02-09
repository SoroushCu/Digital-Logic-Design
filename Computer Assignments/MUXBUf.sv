/*In this module I've created a 4 to 1
MUX using a Tristate buffer only.*/
 `timescale 1ns/1ns
module MUXBUf(input a2,b2,c2,d2,s02,s12,output out2);
//Here I've defined the needed wires.
  wire x,y,z,o;
/*The supply is used to connect 
to the En of the buffers to create an inverter*/
  supply1 Vdd;
/*Based on the design for a 4 to 1 MUX
with tri-state buffers,I've used the 
Buffer from problem 2 (8 gates) and connected
them in the proper manner.*/
  NOTIF1 G1 (.a(s02),.En(Vdd),.w(x));
  NOTIF1 G2 (.a(a2),.En(x),.w(z));
  NOTIF1 G3 (.a(c2),.En(s02),.w(z));
  NOTIF1 G4 (.a(b2),.En(x),.w(o));
  NOTIF1 G5 (.a(d2),.En(s02),.w(o));
  NOTIF1 G6 (.a(s12),.En(Vdd),.w(y));
  NOTIF1 G7 (.a(o),.En(s12),.w(out2));
  NOTIF1 G8 (.a(z),.En(y),.w(out2));
endmodule