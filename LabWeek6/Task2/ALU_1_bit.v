module ALU_1_bit
  
( input a, b, CarryIn,
  input[3:0] ALUOp, 
  output reg Result, 
  output reg CarryOut
);
always @ (ALUOp or a or b or CarryIn)
begin
  if (ALUOp[1:0] == 2'b00)
    begin
      if (ALUOp[3:2] == 2'b00)
        Result <= a & b;
      else
      begin
        if (ALUOp[3:2] == 2'b11)
          assign Result = ~(a | b);  
      end
    end 
    
  if (ALUOp[1:0] == 2'b01)
      begin
        if (ALUOp[3:2] == 2'b00)
          assign Result = a | b;
      end
  if (ALUOp[1:0] == 2'b10)
    begin
    if (ALUOp[3:2] == 2'b00)
      begin
        assign Result = (a & ~b & ~CarryIn) | (~a & b & ~CarryIn) | (~a & ~b & CarryIn) | (a & b & CarryIn);
        assign CarryOut = (a & CarryIn) | (b & CarryIn) | (a & b);
      end
    else
      begin
        if (ALUOp[3:2] == 2'b01)
        begin
          assign Result = (a & ~b & ~CarryIn) | (~a & b & ~CarryIn) | (~a & ~b & CarryIn) | (a & b & CarryIn);
          assign CarryOut = (a & CarryIn) | (b & CarryIn) | (a & b);
        end  
      end
    end
end
endmodule