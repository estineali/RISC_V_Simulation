
#Compilation
vlog tb.v ALU_Control.v

#Opening
vsim -novopt work.tb

#Wave window
view wave

#Adding all three signals
add wave \
{sim:/tb/ALUOp } \
{sim:/tb/Funct } \
{sim:/tb/Operation } 

#Switch-on. Run. 
run 500ns
