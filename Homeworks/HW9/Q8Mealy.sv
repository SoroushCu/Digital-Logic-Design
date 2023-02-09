`timescale 1ns/1ns
module Q8Mealy(input clk,rst,j,output w);
  logic[1:0] ns,ps;
  parameter[1:0] A=2'b00,B=2'b01,C=2'b10,D=2'b11;
  
  always@(ps,j)begin
    ns=A;
       case(ps)
         A:ns=j?A:B;
         B:ns=j?C:B;
         C:ns=j?A:D;
         D:ns=j?C:B;
         default:ns=A;
       endcase
   end
assign w=(ps==D)?j:1'b0;

always@(posedge clk,posedge rst)begin
    if(rst)
       ps<=A;
    else
      ps<=ns;
end
endmodule
 
