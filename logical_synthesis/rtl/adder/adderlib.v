//-----------------------------------------------------
// Design Name : adderlib
// File Name   : adderlib.v
// Function    : Default 8-bits adder from the library used to compile
// Coder       : Marcio Monteiro
//-----------------------------------------------------

module adderlib (
		A,
		B,
		Sum
	);
	parameter WIDTH = 8;

	input  [WIDTH-1:0] A, B;
	output [WIDTH:0] Sum;
	assign Sum = A + B;
endmodule // buffer_adder
