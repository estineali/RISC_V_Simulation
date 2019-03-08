
#Compilation
vlog tb.v Instruction_memory.v Adder.v Program_Counter.v Instruction_Fetch.v

#Opening
vsim -novopt work.tb

#Wave window
view wave

#Adding all three signals
add wave \
{sim:/tb/clk } \
{sim:/tb/reset } \
{sim:/tb/Instruction }


#Switch-on. Run. 
run 500ns
