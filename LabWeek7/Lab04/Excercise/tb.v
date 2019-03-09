module tb
(
);

	reg [31:0] instruction;
	wire [63:0] ReadData1, ReadData2;
	reg clk;

	top TOP 
	(
		.instruction(instruction),
		.ReadData1(ReadData1),
		.ReadData2(ReadData2)
	);

	initial
	begin
		clk <= 1'b0;
		instruction <= 32'b10101011010001110101001110110101;
	end

	always 
		#5 clk = ~clk;

endmodule