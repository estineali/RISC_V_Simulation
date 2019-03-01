
#Compilation
vlog tb.v RegisterFile.v

#Opening
vsim -novopt work.tb

#Wave window
view wave

#Adding all three signals
add wave \
{sim:/tb/clk } \
{sim:/tb/rs1 } \
{sim:/tb/rs2 } \
{sim:/tb/rd } \
{sim:/tb/WriteData } \
{sim:/tb/reset } \
{sim:/tb/RegWrite } \
{sim:/tb/ReadData1 } \
{sim:/tb/ReadData2 } 

#Switch-on. Run. 
run 1000ns
