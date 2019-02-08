module clock_divider
(
	input clock_n, reset_p,
	output reg div_clk
);

parameter max_count = 40000000;
reg [31:0] counter; 

always @(posedge reset_p or negedge clock_n)
begin 
	if (reset_p)
		begin
		div_clk <= 0;
		counter <= 0;
		end
	else
	begin
		if (counter == max_count)
			begin
			div_clk <= ~div_clk
			counter <= 0;
			end
		else
			counter <= counter + 1
	end
end

endmodule