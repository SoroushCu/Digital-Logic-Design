`timescale 1ns/1ns
module Q1PTV(input a,b,c,d,output f); 
     wire abar,bbar,cbar,dbar,x,y,z;
     not #6 (abar,a);
     not #6 (bbar,b);
     not #6 (cbar,c);
     not #6 (dbar,d);
     nand #5 (x,a,cbar);
     nand #8 (y,abar,bbar,c);
     nand #8 (z,abar,b,dbar);
     nand #8 (f,x,y,z);
endmodule
 
 