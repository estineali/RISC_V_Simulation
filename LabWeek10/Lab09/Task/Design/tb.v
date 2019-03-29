module tb (
);

	reg clk;
	reg reset; 

	RISC_V_Processor r5
	(
		.clk(clk),
		.reset(reset)
	);

	initial 
	begin : 
		clk <= 1'b0;
		reset <= 1'b0;
	end

	always
		#5 clk = ~clk; 

endmodule