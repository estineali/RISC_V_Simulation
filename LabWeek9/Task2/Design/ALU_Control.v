module ALU_Control (
	input [1:0] ALUOp,    
	input [3:0] Funct,
	output reg [3:0] Operation
	
);

	always @(ALUOp or Funct) begin
		if(ALUOp == 2'b00) begin
			Operation <= 4'b0010;  //I/S-Type (ld, sd)
		end

		if(ALUOp == 2'b01) begin
			Operation <= 4'b0110; //SB-Type (Beq)
		end

		if(ALUOp == 2'b10) begin
			if(Funct == 4'b0000) begin
				Operation <= 4'b0010; //Add
			end

			if(Funct == 4'b1000) begin
				Operation <= 4'b0110; //Subtract
			end

			if(Funct == 4'b0111) begin
				Operation <= 4'b0000; //AND? 
			end

			if(Funct == 4'b0110) begin
				Operation <= 4'b0001; //OR? 
			end
		end
	end

endmodule