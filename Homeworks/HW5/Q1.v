  `timescale 1ns/1ns
module Q1(input a,b,c,d , output f);
assign f = (~a&~b&c&~d) |  (~a&~b&c&d) |  (~a&b&~c&~d) | 
       (~a&b&c&d) |  (~a&b&c&~d) |  (a&b&~c&~d) | 
       (a&b&~c&d) |  (a&~b&~c&~d) |  (a&~b&~c&d);
endmodule
