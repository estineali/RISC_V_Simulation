module Top_Control (
	input [6:0] OPCode,
	input [3:0] Funct,
	output [3:0] Operation, //Output from ALU_control
	output Branch, //Output from Control_Unit
	output MemRead, //Output from Control_Unit
	output MemWrite, //Output from Control_Unit
	output MemToReg, //Output from Control_Unit
	output ALUSrc, //Output from Control_Unit
	output RegWrite //Output from Control_Unit
);

	wire [1:0] ALUOp;

	Control_unit CU
	(
		.OPCode(OPCode),
		.ALUOp(ALUOp),
	 	.Branch(Branch),
	 	.MemRead(MemRead),
	 	.MemWrite(MemWrite),
	 	.MemToReg(MemToReg),
	 	.ALUSrc(ALUSrc),
	 	.RegWrite(RegWrite)
	);

	ALU_Control aluc
	(
		.ALUOp(ALUOp),
		.Funct(Funct),
	 	.Operation(Operation)
	);

endmodule