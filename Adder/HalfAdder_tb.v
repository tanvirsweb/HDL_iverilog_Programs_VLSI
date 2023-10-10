`timescale 1ns / 1ps
module half_adder_tb;

//input
reg a;
reg b;

//output
wire o;
wire c;

//declare instance of module
halfAdder uut(.a(a), .b(b), .o(o), .c(c));

initial begin
a=0;
b=0;
#20 a=0; b=0;
#20 a=0; b=1;
#20 a=1; b=0;
#20 a=1; b=1;
end

initial begin
$monitor("a=%d , b=%d \t sum=%d carry=%d \n",a,b,o,c);
end 

endmodule
