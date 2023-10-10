`timescale 1ns / 1ps
module stimulus;
//input 
reg a;
reg b;
reg ci;
//output
wire s;
wire c;

fullAdder uut(.a(a), .b(b), .ci(ci), .s(s), .c(c) );

initial begin
a=0;
b=0;
ci=0;
#20 a=0; b=0;
ci=1;
#20 a=0; b=1;
#20 ci=0;
#20 a=1; b=0;
#20 ci=1;
#20 a=1; b=1;
#20 ci=0;
end

initial begin

$monitor("a= %d, b= %d, ci= %d | s= %d, c=%d",a,b,ci,s,c);

end
endmodule
