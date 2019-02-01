
#Compilation
vlog tb.v MUX.v

#Opening
vsim -novopt work.tb

#Wave window
view wave

#Adding all three signals
add wave sim:/tb/a
add wave sim:/tb/b
add wave sim:/tb/c
add wave sim:/tb/o

#Switch-on. Run. 
run 500ns