
#Compilation
vlog tb.v immediate_data_generator.v

#Opening
vsim -novopt work.tb

#Wave window
view wave

#Adding all three signals
add wave \
{sim:/tb/inst } \
{sim:/tb/imm_data } 

#Switch-on. Run. 
run 500ns
