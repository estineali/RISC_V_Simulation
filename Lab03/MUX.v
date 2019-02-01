module MUX
(	
	input[63:0] a,
	input[63:0] b,
	input s,
	output reg[63:0] o
);

	always @ (s)
	begin
		if (s)
			o <= a;
		else
			o <= b;
	end
	
endmodule