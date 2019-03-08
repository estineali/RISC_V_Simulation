module Program_Counter
(
	input clk, reset,
	input [63:0] PC_In,
	output reg [63:0] PC_Out 
);

	always @ (*)
	begin
		if(reset == 1'b1)
		begin
			PC_Out <= 64'b0000000000000000000000000000000000000000000000000000000000000000;
		end
	end 

	always @( posedge clk) 
	begin
		if (reset == 1'b0)
			PC_Out <= PC_In;
	end

endmodule 