module RISC_V_Processor (
	input clk,    
	input reset	
);

	//Instruction Fetch Output
	wire [31:0] instruction; //contains fetched instruction
	
	Instruction_Fetch IF
	(
		.clk(clk),
		.reset(reset),
		.Instruction(instruction) //Connection 1
	);

	//Instruction Parser Output
	wire [6:0] funct7;
	wire [2:0] funct3;
	wire [4:0] rs1;
	wire [4:0] rs2;
	wire [4:0] rd;
	wire [6:0] opcode;

	instruction_parser IP
	(
		.instruction(instruction), //Connection 2
		.funct7(funct7),
		.rs2(rs2),
		.rs1(rs1),
		.funct3(funct3),
		.rd(rd),
		.opcode(opcode)
	);

	//Register File Input
	wire RegWrite; //connecting RegisterFile to TopControl
	reg [63:0] WriteData;
	initial 
		WriteData <= 64'b0;

	

	//Register File Output
	wire [63:0] ReadData1; 
	wire [63:0] ReadData2;

	RegisterFile RF
	(
		.rs1(rs1), //input from IP
		.rs2(rs2), //input from IP
		.rd(rd), //input from IP
		.WriteData(WriteData), //input from DataMemory/ALU 
		.clk(clk), //input signal
		.reset(reset), //input signal 
		.RegWrite(RegWrite), //input from TopControl 
		.ReadData1(ReadData1), //RF output
		.ReadData2(ReadData2) //RF output 
	);
	

	//immediate gen Outputs
	wire [63:0] imm_data;

	immediate_data_generator IDG
	(
		.inst(instruction), //input from IG
		.imm_data(imm_data) // IDG output
	);

	//TC Input 
	reg [3:0] funct;
	always @(instruction)
		funct <= {instruction[30], instruction[14], instruction[13], instruction[12]};
	
	//TC outputs
	wire [3:0] aluoperation;
	wire memwrite;
	wire memread;
	wire branch;
	wire MemToReg;
	wire ALUSrc;
	
	Top_Control TC
	(
		.OPCode(opcode), //input from IP
		.Funct(funct), //Input Generated from IF Output
		.Operation(aluoperation), //output for ALU
		.Branch(branch), //Output for branch AND Gate
		.MemRead(memread), //Output for Data memory 
		.MemWrite(memwrite), //Output for Data memory 
		.MemToReg(MemToReg),  //Output for Data Writing 
		.ALUSrc(ALUSrc),  //Control ALU 
		.RegWrite(RegWrite) 
	);
	

	//ALUInput
	reg [63:0] b; //Second input of ALU
		//MUX
	always @(ALUSrc) 
	begin
		if(ALUSrc == 1'b0) 
		  b <= ReadData2;
		else
		  b <= imm_data; 
	end

	//ALU Output
	wire zero;
	
	wire [63:0] Result;

	ALU_64_Bit ALU64
	(
		.a(ReadData1),
		.b(b),  
		.operation(aluoperation),
		.Result(Result),
		.Zero(zero)
	);

	//Data Memory Output 
	wire [63:0] Read_Data;
		

	Data_Memory Data_Memory
	(
		.MemWrite(memwrite),
		.MemRead(memread),
		.clk(clk),
		.Mem_Addr(Result),
		.Write_Data(ReadData2),
		.Read_Data(Read_Data)
	);
		//MUX
	always @(MemToReg) 
	begin
		if (MemToReg == 1'b0)
			WriteData <= Read_Data; 
		else 
			WriteData <= Result;
	end


endmodule