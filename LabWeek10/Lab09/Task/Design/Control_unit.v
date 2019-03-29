module Control_unit (
	input [6:0] OPCode,
	output reg [1:0] ALUOp,
	output reg Branch,
	output reg MemRead,
	output reg MemWrite,
	output reg MemToReg,
	output reg ALUSrc,
	output reg RegWrite
);

	always @(OPCode) 
	begin 
	
		if(OPCode[6:4] == 3'b011) begin //R-Type	
			ALUOp <= 2'b10;
			Branch <= 1'b0;
			MemWrite <= 1'b0;
			MemRead <= 1'b0;
			RegWrite <= 1'b1;
			MemToReg <= 1'b0;
			ALUSrc <= 1'b0;
		end

		if(OPCode[6:4] == 3'b000) begin //I-Type ld 
			ALUOp <= 2'b00;
			Branch <= 1'b0;
			MemWrite <= 1'b0;
			MemRead <= 1'b1;
			RegWrite <= 1'b1;
			MemToReg <= 1'b1;
			ALUSrc <= 1'b1;
		end

		if(OPCode[6:4] == 3'b010) begin //I-Type sd
			ALUOp <= 2'b00;
			Branch <= 1'b0;
			MemWrite <= 1'b1;
			MemRead <= 1'b0;
			RegWrite <= 1'b0;
			MemToReg <= 1'b0;
			ALUSrc <= 1'b1;
		end

		if(OPCode[6:4] == 3'b110) begin //SB-Type beq
			ALUOp <= 2'b01;
			Branch <= 1'b1;
			MemWrite <= 1'b0;
			MemRead <= 1'b0;
			RegWrite <= 1'b0;
			MemToReg <= 1'b0;
			ALUSrc <= 1'b0;
		end
	end
endmodule