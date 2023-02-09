`timescale 1ns/1ns
module funct(input a,b,c,d,e,oe,output f);
      wire J[0:15];
      wire s[3:0];
      assign J[0:15]={1'b1,~e,1'b1,e,1'b1,~e,1'b0,e,e,~e,~e,e,~e,~e,e,1'b1};
      assign s[3:0]={a,d,b,c};
      mux16to1 M1(.J(J),.s(s),.oe(oe),.f(f));
      
endmodule
