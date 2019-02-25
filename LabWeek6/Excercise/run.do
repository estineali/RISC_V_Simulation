
#Compilation
vlog tb.v ALU_64_Bit.v

#Opening
vsim -novopt work.tb

#Wave window
view wave

#Adding all three signals
add wave \
{sim:/tb/op } \
{sim:/tb/a } \
{sim:/tb/b } \
{sim:/tb/zero } \
{sim:/tb/result }  

#Switch-on. Run. 
run 500ns
