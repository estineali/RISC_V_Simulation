module tb
(
);

  reg [63:0] a, b; 
  wire [63:0] result;
  reg [3:0] op;
  wire zero;
  ALU_64_Bit ALU64Bit
  (
    .a(a),
    .b(b),
    .operation(op),
    .Result(result),
    .Zero(zero)
  );
    
initial
begin
  a = 64'b010101110;
  b = 64'b110001100;
  //op = 4'b0000; //AND 
  //op = 4'b0001; //OR 
  //op = 4'b0010; //Add
  //op = 4'b0110; //Subtract
  op = 4'b1100; //NOR
  #20 a = 64'b1100110;
  #20 a = 64'b0;
  end
endmodule