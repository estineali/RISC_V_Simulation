module tb
();

	reg [63:0] Inst_Address;
	wire [31:0] Instruction;

	Instruction_memory memorymodule 
	(
		.Inst_Address(Inst_Address),
		.Instruction(Instruction)
	);

	initial 
	begin
		Inst_Address <= 64'b0000;
		#50 Inst_Address <= 64'b0100;
		#50 Inst_Address <= 64'b1000;
		#50 Inst_Address <= 64'b1100; 
	end

endmodule