module immediate_data_generator
  (
    input[31:0] inst,
    output[63:0] imm_data
  );
  if (inst[6] == 1'b1)
      imm_data = {{52{inst[31]}}, inst[31], inst[7], inst[30:25], inst[11:8]};
  else
    begin
      if (inst[5] == 1'b1)
        imm_data = {{52{inst[31]}}, inst[31:25], inst[11:7]};
      else
        imm_data = {{52{inst[31]}}, inst[31:20]};  
    end
    
     
endmodule