module tb (
);

	reg [6:0] OPCode;
	wire [1:0] ALUOp;
	wire Branch;
	wire MemRead;
	wire MemWrite;
	wire MemToReg;
	wire ALUSrc;
	wire RegWrite;

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

	initial
	begin
		OPCode <= 7'b0110011;
		#50 OPCode <= 7'b0000011;
		#50 OPCode <= 7'b0100011;
		#50 OPCode <= 7'b1100011;  
	end


endmodule