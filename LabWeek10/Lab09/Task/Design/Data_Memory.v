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
		Storage[1] <= 8'b10010000;
		Storage[2] <= 8'b10100110;
		Storage[3] <= 8'b01010111;
		Storage[4] <= 8'b10110010;
		Storage[5] <= 8'b10000101;
		Storage[6] <= 8'b00001000;
		Storage[7] <= 8'b10010010;
		Storage[8] <= 8'b01000111;
		Storage[9] <= 8'b01001010;
		Storage[10] <= 8'b00000100;
		Storage[11] <= 8'b11101001;
		Storage[12] <= 8'b01000101;
		Storage[13] <= 8'b10010111;
		Storage[14] <= 8'b01101010;
		Storage[15] <= 8'b01101001;
		Storage[16] <= 8'b01100001;
		Storage[17] <= 8'b01110010;
		Storage[18] <= 8'b11011010;
		Storage[19] <= 8'b00000000;
		Storage[20] <= 8'b01011010;
		Storage[21] <= 8'b11011111;
		Storage[22] <= 8'b01010010;
		Storage[23] <= 8'b00101010;
		Storage[24] <= 8'b01001110;
		Storage[25] <= 8'b00000111;
		Storage[26] <= 8'b10101001;
		Storage[27] <= 8'b01100100;
		Storage[28] <= 8'b10010001;
		Storage[29] <= 8'b11111010;
		Storage[30] <= 8'b11101111;
		Storage[31] <= 8'b10101100;
		Storage[32] <= 8'b00101110;
		Storage[33] <= 8'b10000101;
		Storage[34] <= 8'b10011111;
		Storage[35] <= 8'b01110100;
		Storage[36] <= 8'b00000000;
		Storage[37] <= 8'b00000111;
		Storage[38] <= 8'b10110001;
		Storage[39] <= 8'b10110111;
		Storage[40] <= 8'b10100000;
		Storage[41] <= 8'b10111011;
		Storage[42] <= 8'b11010000;
		Storage[43] <= 8'b01110010;
		Storage[44] <= 8'b10010011;
		Storage[45] <= 8'b01101001;
		Storage[46] <= 8'b00100101;
		Storage[47] <= 8'b01010110;
		Storage[48] <= 8'b00100010;
		Storage[49] <= 8'b00110100;
		Storage[50] <= 8'b00001001;
		Storage[51] <= 8'b10011110;
		Storage[52] <= 8'b01001100;
		Storage[53] <= 8'b00011011;
		Storage[54] <= 8'b00001110;
		Storage[55] <= 8'b11001001;
		Storage[56] <= 8'b00010111;
		Storage[57] <= 8'b11011101;
		Storage[58] <= 8'b00100010;
		Storage[59] <= 8'b00001101;
		Storage[60] <= 8'b00101100;
		Storage[61] <= 8'b11000110;
		Storage[62] <= 8'b10011011;
		Storage[63] <= 8'b01001010;
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