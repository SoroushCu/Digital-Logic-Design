  `timescale 1ns/1ns
module MUX16to1(input [0:15] J ,input[3:0] s,output w);
       wire out1,out2,out3,out4;
       MUX4to1 MUX1 (.a(J[0]),.b(J[1]),.c(J[2]),.d(J[3]),.s({s[1],s[0]}),.w(out1));
       MUX4to1 MUX2 (.a(J[4]),.b(J[5]),.c(J[6]),.d(J[7]),.s({s[1],s[0]}),.w(out2));
       MUX4to1 MUX3 (.a(J[8]),.b(J[9]),.c(J[10]),.d(J[11]),.s({s[1],s[0]}),.w(out3));
       MUX4to1 MUX4 (.a(J[12]),.b(J[13]),.c(J[14]),.d(J[15]),.s({s[1],s[0]}),.w(out4));
       MUX4to1 MUX5 (.a(out1),.b(out2),.c(out3),.d(out4),.s({s[3],s[2]}),.w(w));
endmodule
