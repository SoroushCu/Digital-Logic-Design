`timescale 1ns/1ns
module OnescounterTBQ5;
	logic [126 : 0] aa;
	wire [6 : 0] ww;
	OnescounterQ4 #6 UUT(aa, ww);
	initial begin
		repeat (12) #1000 aa=$random();
	        #1000;
		#1000 aa = 127'b1;
		repeat(254) #1000 aa={~aa[0],aa[126:1]}; 
		#1000 $stop;
	end
endmodule

