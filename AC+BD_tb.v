`timescale 1ns / 1ps
module stimulus;
// Inputs
reg A;
reg B;
reg C;
reg D; 
// Outputs
wire Z;
// Instantiate the
//Unit Under Test
//(UUT)
module_name uut
(
.A(A),
.B(B),
.C(C),
.D(D),
.Z(Z)
);
initial begin
// Initialize Inputs
A = 0;
B = 0;
C = 0;
D = 0;
#20 A = 0; B = 0;
#20 A = 0; B = 1;
#20 A = 1; B = 0; C = 1; D = 1;
#20 A = 1; B = 1; C = 1; D = 1;
#40;
end
initial begin
$monitor("A=%d,B=%d,C=%d,D=%d \tZ=%d \n",A,B,C,D,Z);
end
endmodule
