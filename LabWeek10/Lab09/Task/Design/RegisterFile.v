module RegisterFile
(
	input [4:0] rs1, rs2, rd,
	input [63:0] WriteData,
	input clk, reset, RegWrite,
	output reg [63:0] ReadData1, ReadData2
);

	reg [63:0] Registers [31:0];
	initial
	begin
		Registers[0] <= 64'd0;
		Registers[1] <= 64'd1;
		Registers[2] <= 64'd2;
		Registers[3] <= 64'd5;
		Registers[4] <= 64'd5;
		Registers[5] <= 64'd5;
		Registers[6] <= 64'd5;
		Registers[7] <= 64'd5;
		Registers[8] <= 64'd5;
		Registers[9] <= 64'd5;
		Registers[10] <= 64'd5;
		Registers[11] <= 64'd5;
		Registers[12] <= 64'd5;
		Registers[13] <= 64'd5;
		Registers[14] <= 64'd5;
		Registers[15] <= 64'd5;
		Registers[16] <= 64'd5;
		Registers[17] <= 64'd5;
		Registers[18] <= 64'd5;
		Registers[19] <= 64'd5;
		Registers[20] <= 64'd5;
		Registers[21] <= 64'd5;
		Registers[22] <= 64'd5;
		Registers[23] <= 64'd5;
		Registers[24] <= 64'd5;
		Registers[25] <= 64'd5;
		Registers[26] <= 64'd5;
		Registers[27] <= 64'd5;
		Registers[28] <= 64'd5;
		Registers[29] <= 64'd5;
		Registers[30] <= 64'd5;
		Registers[31] <= 64'd5;
	end

	always @ (posedge clk)
	begin
		if (RegWrite == 1'b1)
			Registers[rd] = WriteData;
	end

	always @ (reset)
	begin
		ReadData1 = 64'b0;
		ReadData2 = 64'b0; 
	end

	always @ (rs1 or rs2 or reset)
	begin
		ReadData1 = Registers [rs1];
		ReadData2 = Registers [rs2];
	end






endmodule