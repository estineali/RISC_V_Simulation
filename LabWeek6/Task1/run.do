
#Compilation
vlog TB.v ALU_1_bit.v

#Opening
vsim -novopt work.TB

#Wave window
view wave

#Adding all three signals
add wave \
{sim:/TB/ALUOp } \
{sim:/TB/a } \
{sim:/TB/b } \
{sim:/TB/CarryIn } \
{sim:/TB/Result } \
{sim:/TB/CarryOut } 

#Switch-on. Run. 
run 500ns
