module Instruction_memory
(
	input [63:0] Inst_Address,
	output reg [31:0] Instruction
);
	
	reg [7:0] instructions [15:0];

	initial
	begin
		instructions[0] <= 8'b10000011;
		instructions[1] <= 8'b00110100;
		instructions[2] <= 8'b00000101;
		instructions[3] <= 8'b00001111;
		instructions[4] <= 8'b10110011;
		instructions[5] <= 8'b10000100;
		instructions[6] <= 8'b10011010;
		instructions[7] <= 8'b00000000;
		instructions[8] <= 8'b10010011;
		instructions[9] <= 8'b10000100;
		instructions[10] <= 8'b00010100;
		instructions[11] <= 8'b00000000;
		instructions[12] <= 8'b00100011;
		instructions[13] <= 8'b00111000;
		instructions[14] <= 8'b10010101;
		instructions[15] <= 8'b00001110;
	end

	always @( Inst_Address )
	begin
		Instruction = {instructions[Inst_Address+3], instructions[Inst_Address+2], instructions[Inst_Address+1], instructions[Inst_Address]};
	end

endmodule 