`timescale 1ns/1ns
module Q7ShiftRegister#(parameter n = 4)(input[n-1:0]PI,input clk,rst,MSen,sin,I0,I1,output logic[n-1:0] PO);
  logic[1:0]m;
  assign m={I1,I0}; 
always@(posedge clk,posedge rst)begin
    if(rst)
       PO<=0;
    else if(~MSen)
       PO<=PO;
    else
      case(m) 
         2'b00:PO<={sin,PO[n-1:1]};
         2'b01:PO<={sin,PO[n-2:1]};
         2'b10:PO<={PO[0],PO[n-1:1]};
         2'b11:PO<=PI;
     endcase
 end
endmodule
 
