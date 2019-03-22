
#Compilation
vlog tb.v Control_unit.v

#Opening
vsim -novopt work.tb

#Wave window
view wave

#Adding all three signals
add wave \
{sim:/tb/OPCode } \
{sim:/tb/ALUOp } \
{sim:/tb/Branch } \
{sim:/tb/MemRead } \
{sim:/tb/MemWrite } \
{sim:/tb/MemToReg } \
{sim:/tb/ALUSrc } \
{sim:/tb/RegWrite } 


#Switch-on. Run. 
run 500ns
