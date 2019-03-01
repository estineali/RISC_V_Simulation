module tb
(
);

	reg [31:0] instruction;
	wire [63:0] ReadData1, ReadData2;

	top TOP 
	(
		.instruction(instruction),
		.ReadData1(ReadData1),
		.ReadData2(ReadData2)
	);

	initial
	begin
	end
endmodule