
#Compilation
vlog tb.v RegisterFile.v instruction_parser.v top.v

#Opening
vsim -novopt work.tb

#Wave window
view wave

#Adding all three signals
add wave \
{sim:/tb/instruction } \
{sim:/tb/ReadData1 } \
{sim:/tb/ReadData2 } 

#Switch-on. Run. 
run 1000ns
