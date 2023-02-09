`timescale 1ns/1ns
module Controller(input clk,rst,start,ready,output reg incCounter,loadCounter,ldX,ldR,ldTemp,ldCompReg,InitR,selRegx,selRegR,encomp);
	reg[2:0] ps,ns;
	parameter[2:0] Idle=0,Start=1,Multiplication1=2,Multiplication2=3,Multiplication3=4,Multiplication4=5,ShowAns=6;
	always@(posedge clk,posedge rst)begin
	     if(rst) ps<=3'b000;
		else ps<=ns;
	end
	always@(ps,start,ready) begin
	      case(ps)
	      Idle:ns=start?Start:Idle;
	      Start:ns=Multiplication1;
	      Multiplication1:ns=Multiplication2;
	      Multiplication2:ns=Multiplication3;
	      Multiplication3:ns=Multiplication4;
 	      Multiplication4:ns=ShowAns;
	      ShowAns:ns=ready?Idle:Multiplication1;
	      default ns=Idle;
	      endcase
	end
	always@(posedge clk,posedge rst)begin
	incCounter=0;loadCounter=0;ldX=0;ldR=0;ldTemp=0;InitR=0;selRegx=0;selRegR=0;encomp=0;
	case(ps)
	Idle:begin start<=1'b1;end
	Start:begin ldX<=1'b1;loadCounter<=1'b1;InitR<=1'b1;end
	Multiplication1:begin ldCompReg<=1'b1;selRegx<=1'b1;ldTemp<=1'b1;encomp<=1'b1;end
	Multiplication2:begin selRegR<=1'b1;ldTemp<=1'b1;encomp<=1'b1;end
	Multiplication3:begin selRegx<=1'b1;ldTemp<=1'b1;encomp<=1'b1;incCounter<=1'b1;end
	Multiplication4:begin selRegR<=1'b1;ldTemp<=1'b1;encomp<=1'b1;end
	ShowAns:ldR<=1'b1;
	endcase
	end
endmodule