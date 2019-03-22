
#Compilation
vlog tb.v Top_Control.v Control_unit.v ALU_Control.v

#Opening
vsim -novopt work.tb

#Wave window
view wave

#Adding all three signals
add wave \
{sim:/tb/OPCode } \
{sim:/tb/Funct } \
{sim:/tb/Operation } \
{sim:/tb/Branch } \
{sim:/tb/MemRead } \
{sim:/tb/MemWrite } \
{sim:/tb/MemToReg } \
{sim:/tb/ALUSrc } \
{sim:/tb/RegWrite } 


#Switch-on. Run. 
run 500ns
