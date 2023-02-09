`timescale 1ns/1ns
module OnescounterAlTBQ6;
	logic [126 : 0] aa;
	wire [6 : 0] ww;
	OnescounterAlQ6 #6 UUT(aa, ww);
	initial begin
		repeat (12) #1000 aa=$random();
	        #1000;
		#1000 aa = 127'b1;
		repeat(254) #1000 aa={~aa[0],aa[126:1]}; 
		#1000 $stop;
	end
endmodule

