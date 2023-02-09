`timescale 1ns/1ns
module Q8Moore(input clk,rst,j,output w);
  reg[2:0] ns,ps;
  parameter[2:0] A=3'b000,B=3'b001,C=3'b010,D=3'b011,E=3'b100;

  always@(ps,j)begin
    ns=A;
       case(ps)
         A:ns=j?A:B;
         B:ns=j?C:B;
         C:ns=j?A:D;
         D:ns=j?E:B;
         E:ns=j?A:D;
         default:ns=A;
       endcase
   end
assign w=(ps==E)?1'b1:1'b0;

 always@(posedge clk,posedge rst)begin
    if(rst)
       ps<=A;
    else
      ps<=ns;
end
endmodule
 
