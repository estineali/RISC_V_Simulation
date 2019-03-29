module RISC_V_Processor (
	input clk,    
	input reset	
);
	//Instruction Fetch Output
	wire [31:0] instruction; //contains fetched instruction
	
	//Instruction Parser Output
	reg [6:0] funct7;
	reg [2:0] funct3;
	wire [4:0] rs1;
	wire [4:0] rs2;
	wire [4:0] rd;
	wire [6:0] opcode;

	//Register File Input
	wire [63:0] WriteData;
	always @(MemToReg) begin :
		if(MemToReg == 1'b1) begin
			WriteData <= Read_Data;
		end 
		else begin
			WriteData <= Result;
		end
	end

	//Register File Output
	wire [63:0] ReadData1; 
	wire [63:0] ReadData2;
	

	//immediate gen Outputs
	wire [63:0] imm_data;


	//TC Input 
	reg [3:0] funct;
	always @(instruction) begin :
		funct <= {instruction[30], instruction[14], instruction[13], instruction[12]};
	end
	
	//TC outputs
	wire RegWrite;
	wire [3:0] aluoperation;
	wire memwrite;
	wire memread;
	wire branch;
	wire MemToReg;
	wire ALUSrc;

	//ALUInput
	reg [63:0] b;
	always @(ALUSrc) begin : 
		if(ALUSrc == 1'b0) begin
			b <= ReadData2;
		end 
		else begin
			b <= imm_data; 
		end
	end

	//ALU Output
	wire zero;
	wire [63:0] Result;

	//Data Memory Output 
	wire [63:0] Read_Data;


	Instruction_Fetch IF
	(
		.clk(clk),
		.reset(reset),
		.Instruction(instruction)
	);

	instruction_parser IP
	(
		.instruction(instruction),
		.funct7(funct7),
		.rs2(rs2),
		.rs1(rs1),
		.funct3(funct3),
		.rd(rd),
		.opcode(opcode)
	);
	
	RegisterFile RF
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

	immediate_data_generator IDG
	(
		.inst(instruction),
		.imm_data(imm_data)
	);

	Top_Control TC
	(
		.OPCode(opcode),
		.Funct(funct),
		.Operation(aluoperation),  
		.Branch(branch), 
		.MemRead(memread), 
		.MemWrite(memwrite), 
		.MemToReg(MemToReg),  
		.ALUSrc(ALUSrc),  
		.RegWrite(RegWrite) 
	);

	ALU_64_Bit ALU64
	(
		.a(ReadData1),
		.b(b),  
		.operation(aluoperation)
		.Result(Result),
		.Zero(zero)
	);

	Data_Memory Data_Memory
	(
		.MemWrite(memwrite),
		.MemRead(memread),
		.clk(clk),
		.Mem_Addr(Result),
		.Write_Data(ReadData2),
		.Read_Data(Read_Data)
	);


endmodule