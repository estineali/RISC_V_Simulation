
#Compilation
vlog tb.v Instruction_memory.v

#Opening
vsim -novopt work.tb

#Wave window
view wave

#Adding all three signals
add wave \
{sim:/tb/Instruction } \
{sim:/tb/Inst_Address }

#Switch-on. Run. 
run 500ns
