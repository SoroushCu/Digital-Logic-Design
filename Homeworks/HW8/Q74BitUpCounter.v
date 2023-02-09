`timescale 1ns/1ns
module Q74BitUpCounter(input [3:0] PI,input clk,rst,cnt,ld,ci,output reg[3:0] PO,output co);
    always@(posedge clk,posedge rst)begin
        if(rst)
           PO<=4'd0;
           else begin
                if(ld)
                   PO<=PI;
                        else if (cnt) PO<=ci ? (PO+1):PO;
           end
     end
     assign co=(cnt)? &{PO,ci}:1'b0;
endmodule
