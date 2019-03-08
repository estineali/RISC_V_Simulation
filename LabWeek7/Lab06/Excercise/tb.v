module tb
();

	reg MemWrite, MemRead;
	reg [63:0] Mem_Addr, Write_Data;
	wire [63:0] Read_Data;
	reg clk;
	
	Data_Memory memorymodule 
	(
		.Mem_Addr(Mem_Addr),
		.Write_Data(Write_Data),
		.MemWrite(MemWrite),
		.MemRead(MemRead),
		.Read_Data(Read_Data),
		.clk(clk)
	);

	initial 
	begin
		clk = 1'b0;
		MemWrite <= 1'b0;
		MemRead <= 1'b0;
		Mem_Addr <= 64'b0000;
		Write_Data <= 64'b0000;
		#50 Mem_Addr <= 64'b0100;
		#20 MemRead <= 1'b1;
		#20 MemRead <= 1'b1;
		#1 Write_Data <= 64'b10111110001011101010;
		#20 MemWrite <= 1'b1;
		#20 MemWrite <= 1'b0;
		#50 Mem_Addr <= 64'b1000;
		#50 Mem_Addr <= 64'b1100;
	end

	always
		#5 clk = ~clk;

endmodule