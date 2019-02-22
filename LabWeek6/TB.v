module TB
();

reg [5:0] a, b; 
reg CarryIn;
reg[3:0] ALUOp;
wire r0, r1, r2, r3, r4, r5; 
wire co0;
wire co1;
wire co2;
wire co3;
wire co4;
wire CarryOut;
reg[5:0] Result;

ALU_1_bit alu0
(
  .a(a[0]),
  .b(b[0]),
  .CarryIn(CarryIn),
  .ALUOp(ALUOp),
  .Result(r0),
  .CarryOut(co0)
);

ALU_1_bit alu1
(
  .a(a[1]),
  .b(b[1]),
  .CarryIn(co0),
  .ALUOp(ALUOp),
  .Result(r1),
  .CarryOut(co1)
);

ALU_1_bit alu2
(
  .a(a[2]),
  .b(b[2]),
  .CarryIn(co1),
  .ALUOp(ALUOp),
  .Result(r2),
  .CarryOut(co2)
);

ALU_1_bit alu3
(
  .a(a[3]),
  .b(b[3]),
  .CarryIn(co2),
  .ALUOp(ALUOp),
  .Result(r3),
  .CarryOut(co3)
);

ALU_1_bit alu4
(
  .a(a[4]),
  .b(b[4]),
  .CarryIn(co3),
  .ALUOp(ALUOp),
  .Result(r4),
  .CarryOut(co4)
);

ALU_1_bit alu5
(
  .a(a[5]),
  .b(b[5]),
  .CarryIn(co4),
  .ALUOp(ALUOp),
  .Result(r5),
  .CarryOut(CarryOut)
);

always @ (*)
begin
  assign Result = {r5, r4, r3, r2, r1, r0};
end

initial
begin
  a = 6'b000000;
  b = 6'b000000;
  CarryIn = 1'b0;
  //ALUOp = 4'b0000; //AND
  //ALUOp = 4'b0001; //OR 
  ALUOp = 4'b0010; //Add
  //ALUOp = 4'b0110; //Subtract
  //ALUOp = 4'b1100; //NOR
  #20 a = 6'b100101;
  #20 b = 6'b100010;
end


endmodule
