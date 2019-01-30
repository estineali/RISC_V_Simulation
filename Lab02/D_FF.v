module D_FF
(
input c, r,
input d, 
output reg q
);
	always @ (posedge r or negedge c)
		begin
			if (r)
				q <= 1'b0;
			else
				q <= d;
		end

endmodule