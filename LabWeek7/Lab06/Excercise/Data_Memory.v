module Data_Memory
(
	input MemWrite, MemRead, clk,
	input [63:0] Mem_Addr, Write_Data,
	output reg [63:0] Read_Data
);

	reg [7:0] Storage [63:0];

	initial
	begin
		Storage[0] <= 8'b00000000;
		Storage[1] <= 8'b01000111;
		Storage[2] <= 8'b11111101;
		Storage[3] <= 8'b01000001;
		Storage[4] <= 8'b00101110;
		Storage[5] <= 8'b11111000;
		Storage[6] <= 8'b00101011;
		Storage[7] <= 8'b00110001;
		Storage[8] <= 8'b10110110;
		Storage[9] <= 8'b10000000;
		Storage[10] <= 8'b00100111;
		Storage[11] <= 8'b00101111;
		Storage[12] <= 8'b10010010;
		Storage[13] <= 8'b11011001;
		Storage[14] <= 8'b10000110;
		Storage[15] <= 8'b00110110;
	end


	always @ (Mem_Addr or MemRead or clk) 
	begin
		if (MemRead == 1'b1)
		begin
			Read_Data <= {Storage[Mem_Addr + 7], Storage[Mem_Addr + 6], Storage[Mem_Addr + 5], Storage[Mem_Addr + 4], 
							Storage[Mem_Addr + 3], Storage[Mem_Addr + 2], Storage[Mem_Addr + 1], Storage[Mem_Addr]};
		end
	end

	always @(posedge clk)
	begin
		if (MemWrite == 1'b1)
		begin
			Storage[Mem_Addr + 7] <= Write_Data[63:56];
			Storage[Mem_Addr + 6] <= Write_Data[55:48];
			Storage[Mem_Addr + 5] <= Write_Data[47:40];
			Storage[Mem_Addr + 4] <= Write_Data[39:32];			 
			Storage[Mem_Addr + 3] <= Write_Data[31:24];
			Storage[Mem_Addr + 2] <= Write_Data[23:16];
			Storage[Mem_Addr + 1] <= Write_Data[15:8];
			Storage[Mem_Addr] <= Write_Data[7:0];
		end
	end

endmodule