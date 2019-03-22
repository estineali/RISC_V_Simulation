module tb (
);


	reg [6:0] OPCode;
	reg [3:0] Funct;
	wire[3:0]  Operation;
	wire Branch;
	wire MemRead;
	wire MemWrite;
	wire MemToReg;
	wire ALUSrc;
	wire RegWrite;

	Top_Control TC
	(
		.OPCode(OPCode),
		.Funct(Funct),
		.Operation(Operation),
		.Branch(Branch),
		.MemRead(MemRead),
		.MemWrite(MemWrite),
		.MemToReg(MemToReg),
		.ALUSrc(ALUSrc),
		.RegWrite(RegWrite)
	);

	initial
	begin
		Funct <= 4'b0000;
		OPCode <= 7'b0000011;
		#50 OPCode <= 7'b0100011;
		#50 OPCode <= 7'b1100011;
		#50 OPCode <= 7'b0110011;
		#50 Funct <= 4'b1000;
		#50 Funct <= 4'b0111;
		#50 Funct <= 4'b0110;  
	end


endmodule