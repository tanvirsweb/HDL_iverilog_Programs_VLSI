//`timescale ns/ps

module decoder2to4_tb;

//input
reg [1:0]A;
reg E;

//output
wire [3:0]Y;

//intantiate decoder2to4 module
decoder2to4 uut( .A(A), .E(E), .Y(Y) );

initial begin
E = 1'b0;
A = 2'b00;
#20 E= 1'b1;
#20 A= 2'b01;
#20 E= 1'b0;
#20 A= 2'b10;
#20 E= 1'b1;
#20 A= 2'b11;
#20 E=1'b0;
end

initial begin
$monitor("E=%d, A[1]=%d, A[0]=%d \t Y[3]=%d, Y[2]=%d, Y[1]=%d, Y[0]=%d ",E,A[1],A[0],Y[3],Y[2],Y[1],Y[0]);
end

endmodule

