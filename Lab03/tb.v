module tb
(
);
	reg[63:0] a;
	reg[63:0] b;
	reg c;
	wire[63:0] o;

	MUX m1
	(
		.a(a),
		.b(b),
		.s(c),
		.o(o)
	);

	initial
	begin
	c = 1'b0;
	a = 64'hFF;
	b = 64'hcc;
	end 
	
	always
	#5 c = ~c;

	initial
	begin
	 c = 1'b0;
	a = 64'hFF;
	b = 64'hcc;
	end 
	
	initial
	$monitor("Time = ", $time, "---> Output = %d", o);
endmodule 