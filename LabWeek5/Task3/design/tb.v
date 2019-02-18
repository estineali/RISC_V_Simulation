module tb
  (
  );
  reg[31:0] inst;
	wire[63:0] imm_data;
  
  immediate_data_generator idg
  (
    .inst(inst),
    .imm_data(imm_data) 
  );
  
  initial
	begin
	inst = 32'b11011010110010111010010100100111;
	#104 inst = 32'b01101010101101101010010101001010;
	end 
  
endmodule 