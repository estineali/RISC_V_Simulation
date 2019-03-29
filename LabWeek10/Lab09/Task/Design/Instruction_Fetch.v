module Instruction_Fetch
(
	input clk, reset,
	output [31:0] Instruction
);

	reg [63:0] PC_In, b;
	wire [63:0] PC_Out, out;

	Program_Counter Program_Counter
	(
		.clk(clk),
		.reset(reset),
		.PC_In(out),
		.PC_Out(PC_Out)
	);
	Adder addIt
	(
		.a(PC_Out),
		.b(b),
		.out(out)
	);
	Instruction_memory memorymodule 
	(
		.Inst_Address(PC_Out),
		.Instruction(Instruction)
	);

	initial
	begin
		b <= 64'b100;
	end

endmodule 