
#Compilation
vlog tb.v Data_Memory.v

#Opening
vsim -novopt work.tb

#Wave window
view wave

#Adding all three signals
add wave \
{sim:/tb/clk } \
{sim:/tb/Read_Data} \
{sim:/tb/Mem_Addr} \
{sim:/tb/Write_Data} \
{sim:/tb/MemWrite} \
{sim:/tb/MemRead} 

#Switch-on. Run. 
run 600ns
