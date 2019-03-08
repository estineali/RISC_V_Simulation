module tb
();
	
	reg clk, reset;
	wire [31:0] Instruction; 

	Instruction_Fetch Instruction_Fetch
	(
		.clk(clk),
		.reset(reset),
		.Instruction(Instruction)
	);

	initial
	begin
		clk <= 1'b1;
		reset <= 1'b1;
		#100 reset <= 1'b0;
	end

	always 
		#5 clk = ~clk;

endmodule 