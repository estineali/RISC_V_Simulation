module tb (
);


	reg [1:0] ALUOp;
	reg [3:0] Funct;
	wire[3:0]  Operation;

	ALU_Control aluc
	(
		.ALUOp(ALUOp),
		.Funct(Funct),
	 	.Operation(Operation)
	);

	initial
	begin
		ALUOp <= 2'b00;
		Funct <= 4'b0000;
		#50 ALUOp <= 2'b01;
		#50 ALUOp <= 2'b10;
		#50 Funct <= 4'b1000;
		#50 Funct <= 4'b0111;
		#50 Funct <= 4'b0110;  
	end


endmodule