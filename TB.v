module TB
();

reg a, b, CarryIn;
reg[3:0] ALUOp;
wire Result, CarryOut;


ALU_1_bit alu
(
  .a(a),
  .b(b),
  .CarryIn(CarryIn),
  .ALUOp(ALUOp),
  .Result(Result),
  .CarryOut(CarryOut)
);

initial
begin
  a = 1'b0;
  b = 1'b0;
  CarryIn = 1'b0;
  ALUOp = 4'b0000;
  #20 a = 1'b1;
  #20 b = 1'b1;
  #20 a = 1'b0;
  #20 a = 1'b1;
  #20 CarryIn = 1'b1;
  #20 a = 1'b0;
  #20 b = 1'b0;
  #20 a = 1'b1;
  #20 b = 1'b1;
end


endmodule
