module tb
(
);

	reg [4:0] rs1, rs2, rd;
	reg [63:0] WriteData;
	reg clk, reset, RegWrite;
	wire [63:0] ReadData1, ReadData2;

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
		#50 rs1 <= 5'b10010;
		#0 rs2 <= 5'b01100;
		#0 rd <= 5'b00100;
		#0 RegWrite <= 1'b1;
		#0 WriteData <= 64'b1010110111011010101;
		#50 rs1 <= 5'b00000;
		#0 RegWrite <= 1'b0;
		#0 rs2 <= 5'b00100;
		#0 rd <= 5'b01111;
		end

	always
	#5 clk = ~clk;


endmodule