module halfAdder
(
input a,
input b,
output o,
output c
);

assign o = (~a)&b | a&(~b) ;
assign c = a&b ;

endmodule

