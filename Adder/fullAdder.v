module fullAdder
(
input a,
input b,
input ci,
output s,
output c
);

assign s = (a^b)^ci ;
assign c = a&b | b&ci | ci&a ;

endmodule

