module top
(
	input [31:0] instruction,
	output reg [63:0] ReadData1, ReadData2
);

	reg [6:0] funct7, opcode;
	reg [4:0] rs1, rs2, rd;
	reg clk, reset, RegWrite;
	reg [2:0] funct3;

	instruction_parser instruction_parser
	(
		.instruction(instruction),
		.funct7(funct7),
		.rs2(rs2),
		.rs1(rs1),
		.funct3(funct3),
		.rd(rd),
		.opcode(opcode)
	);

	RegisterFile regfile 
	(
		.rs1(rs1),
		.rs2(rs2),
		.rd(rd),
		.WriteData(WriteData),
		.clk(clk),
		.reset(reset),
		.RegWrite(RegWrite),
		.ReadData1(ReadData1),
		.ReadData2(ReadData2)
	);

	initial
	begin
		clk <= 1'b0;
		rs1 <= 5'b0;
		rs2 <= 5'b0;
		rd <= 5'b0;
		WriteData <= 64'b0;
		reset <= 1'b0;
		RegWrite <= 1'b0;
		
	end

	always
	#5 clk = ~clk;


endmodule 