module ALU_64_Bit 
(
input [63:0] a, b, 
input [3:0] operation,
output reg [63:0] Result,
output reg Zero
);


always @ (a or b or operation)
	begin
	  if (operation[3:0] == 4'b0000)
	    begin
	      Result <= (a & b);
	    end
	  else
	    if (operation == 4'b0001)
		    Result <= (a | b);
	    else
	      if (operation == 4'b0010)
	          Result <= (a + b);
	      else
	        if (operation == 4'b0110)
	            Result <= (a - b);
	        else
	          if (operation == 4'b1100)
	              Result <= (~(a | b));
	end

always @ (Result)
	begin
		if (Result == 64'b0)
	      	Zero <= 1'b1;
	      else
	      	Zero <= 1'b0;  
	end
endmodule