#Compilation
vlog tb.v ripple_carry_counter.v T_FF.v D_FF.v

#Opening
vsim -novopt work.tb

#Wave window
view wave

#Adding all three signals
add wave sim:/tb/clk
add wave sim:/tb/reset
add wave sim:/tb/q

#Switch-on. Run. 
run 250ns