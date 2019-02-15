module tb
(
);
	reg[31:0] inst;
	wire[6:0] f7;
	wire[4:0] rs2;
	wire[4:0] rs1;
	wire[2:0] f3;
	wire[4:0] rd;
	wire[6:0] oc;

	instruction_parser ip
	(
		.instruction(inst),
	  .funct7(f7),
	  .rs2(rs2),
	  .rs1(rs1),
	  .funct3(f3),
	  .rd(rd),
	  .opcode(oc)
	);

	initial
	begin
	 inst = 32'b1011010110010111010010100100111;
	#104 inst = 32'b1101010101101101010010101001010;
	end 
	
endmodule 