module module_name
(
input A,
input C,
input B,
input D,
output Z
);

assign Z = A&C | B&D;

endmodule
