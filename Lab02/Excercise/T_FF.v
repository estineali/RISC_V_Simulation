module T_FF
(
	input c, r,
	output q
);
	wire qb;

	//D-FlipFlop module instance

	D_FF dff0
	(
		.c(c),
		.r(r),
		.q(q),
		.d(qb)
	);

	not n1(qb,q);
endmodule