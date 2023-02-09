`timescale 1ns/1ns
module Q38BitShiftRegister(input [7:0] PI,input clk,rst,shen,ld,si,output logic [7:0] PO,output so);
    assign so=PO[0];
    always@(negedge clk,negedge rst)begin
      if(~rst)
          PO<=8'd0;
      else if(ld)
         PO<=PI;
      else
        PO<=(shen)?{si,PO[7:1]}:PO;
     end
endmodule
