`timescale 1ns/1ns
module Q9ShiftRegister(input [7:0]PI, input CLK,si,output logic[7:0]PO);
      logic[7:0]temp;
      integer cnt=0;
      always@(negedge CLK)begin
        if(cnt==0)begin
            temp<=PI;
        end
        else begin
            temp<=PO;
        end
        cnt=cnt+1;
      end
        assign PO = {si, temp[7:1]};
endmodule