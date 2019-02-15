
#Compilation
vlog tb.v instruction_parser.v

#Opening
vsim -novopt work.tb

#Wave window
view wave

#Adding all three signals
add wave \
{sim:/tb/inst } \
{sim:/tb/f7 } \
{sim:/tb/rs2 } \
{sim:/tb/rs1 } \
{sim:/tb/f3 } \
{sim:/tb/rd } \
{sim:/tb/oc }

#Switch-on. Run. 
run 500ns
