
#Compilation
vlog tb.v RISC_V_Processor.v Top_Control.v RegisterFile.v Program_Counter.v instruction_parser.v Instruction_memory.v Instruction_Fetch.v immediate_data_generator.v Data_Memory.v Control_unit.v ALU_Control.v ALU_64_Bit.v Adder.v
 
#Opening
vsim -novopt work.tb

#Wave window
view wave

#Adding all signals
do wave.do


#Switch-on. Run. 
run 500ns
