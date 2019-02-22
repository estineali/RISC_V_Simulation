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
  //ALUOp = 4'b0000; //AND
  //ALUOp = 4'b0001; //OR 
  //ALUOp = 4'b0010; //Add
  //ALUOp = 4'b0110; //Subtract
  //ALUOp = 4'b1100; //NOR
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
