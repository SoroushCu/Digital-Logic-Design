`timescale 1ns/1ns
module Q18BitUpCounter(inout [7:0] PIO,input clk,rst,cnt,ld,ci,oe,output co);
    logic[7:0] LogInt;
    always@(negedge clk,negedge rst)begin
        if(~rst)
           LogInt<=8'd0;
           else begin
                if(ld)
                   LogInt<=PIO;
                        else if (cnt) LogInt<=ci ? (LogInt+1):LogInt;
           end
     end
     assign PIO=oe?LogInt:8'bz;
     assign co=(cnt&oe)? &{PIO,ci}:1'b0;
endmodule
