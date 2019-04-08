onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic /tb/r5/clk
add wave -noupdate -format Logic /tb/r5/reset
add wave -noupdate -format Literal /tb/r5/instruction
add wave -noupdate -format Literal /tb/r5/funct7
add wave -noupdate -format Literal /tb/r5/funct3
add wave -noupdate -format Literal /tb/r5/rs1
add wave -noupdate -format Literal /tb/r5/rs2
add wave -noupdate -format Literal /tb/r5/rd
add wave -noupdate -format Literal /tb/r5/opcode
add wave -noupdate -format Literal /tb/r5/WriteData
add wave -noupdate -format Logic /tb/r5/RegWrite
add wave -noupdate -format Literal /tb/r5/ReadData1
add wave -noupdate -format Literal /tb/r5/ReadData2
add wave -noupdate -format Literal /tb/r5/imm_data
add wave -noupdate -format Literal /tb/r5/funct
add wave -noupdate -format Literal /tb/r5/aluoperation
add wave -noupdate -format Logic /tb/r5/memwrite
add wave -noupdate -format Logic /tb/r5/memread
add wave -noupdate -format Logic /tb/r5/branch
add wave -noupdate -format Logic /tb/r5/MemToReg
add wave -noupdate -format Logic /tb/r5/ALUSrc
add wave -noupdate -format Literal /tb/r5/b
add wave -noupdate -format Logic /tb/r5/zero
add wave -noupdate -format Literal /tb/r5/Result
add wave -noupdate -format Literal /tb/r5/Read_Data
add wave -noupdate -format Logic /tb/r5/IF/clk
add wave -noupdate -format Logic /tb/r5/IF/reset
add wave -noupdate -format Literal /tb/r5/IF/Instruction
add wave -noupdate -format Literal /tb/r5/IF/PC_In
add wave -noupdate -format Literal /tb/r5/IF/b
add wave -noupdate -format Literal /tb/r5/IF/PC_Out
add wave -noupdate -format Literal /tb/r5/IF/out
add wave -noupdate -format Logic /tb/r5/IF/Program_Counter/clk
add wave -noupdate -format Logic /tb/r5/IF/Program_Counter/reset
add wave -noupdate -format Literal /tb/r5/IF/Program_Counter/PC_In
add wave -noupdate -format Literal /tb/r5/IF/Program_Counter/PC_Out
add wave -noupdate -format Literal /tb/r5/IF/addIt/a
add wave -noupdate -format Literal /tb/r5/IF/addIt/b
add wave -noupdate -format Literal /tb/r5/IF/addIt/out
add wave -noupdate -format Literal /tb/r5/IF/memorymodule/Inst_Address
add wave -noupdate -format Literal /tb/r5/IF/memorymodule/Instruction
add wave -noupdate -format Literal /tb/r5/IP/instruction
add wave -noupdate -format Literal /tb/r5/IP/funct7
add wave -noupdate -format Literal /tb/r5/IP/rs2
add wave -noupdate -format Literal /tb/r5/IP/rs1
add wave -noupdate -format Literal /tb/r5/IP/funct3
add wave -noupdate -format Literal /tb/r5/IP/rd
add wave -noupdate -format Literal /tb/r5/IP/opcode
add wave -noupdate -format Literal /tb/r5/RF/rs1
add wave -noupdate -format Literal /tb/r5/RF/rs2
add wave -noupdate -format Literal /tb/r5/RF/rd
add wave -noupdate -format Literal /tb/r5/RF/WriteData
add wave -noupdate -format Logic /tb/r5/RF/clk
add wave -noupdate -format Logic /tb/r5/RF/reset
add wave -noupdate -format Logic /tb/r5/RF/RegWrite
add wave -noupdate -format Literal /tb/r5/RF/ReadData1
add wave -noupdate -format Literal /tb/r5/RF/ReadData2
add wave -noupdate -format Literal /tb/r5/IDG/inst
add wave -noupdate -format Literal /tb/r5/IDG/imm_data
add wave -noupdate -format Literal /tb/r5/TC/OPCode
add wave -noupdate -format Literal /tb/r5/TC/Funct
add wave -noupdate -format Literal /tb/r5/TC/Operation
add wave -noupdate -format Logic /tb/r5/TC/Branch
add wave -noupdate -format Logic /tb/r5/TC/MemRead
add wave -noupdate -format Logic /tb/r5/TC/MemWrite
add wave -noupdate -format Logic /tb/r5/TC/MemToReg
add wave -noupdate -format Logic /tb/r5/TC/ALUSrc
add wave -noupdate -format Logic /tb/r5/TC/RegWrite
add wave -noupdate -format Literal /tb/r5/TC/ALUOp
add wave -noupdate -format Literal /tb/r5/TC/CU/OPCode
add wave -noupdate -format Literal /tb/r5/TC/CU/ALUOp
add wave -noupdate -format Logic /tb/r5/TC/CU/Branch
add wave -noupdate -format Logic /tb/r5/TC/CU/MemRead
add wave -noupdate -format Logic /tb/r5/TC/CU/MemWrite
add wave -noupdate -format Logic /tb/r5/TC/CU/MemToReg
add wave -noupdate -format Logic /tb/r5/TC/CU/ALUSrc
add wave -noupdate -format Logic /tb/r5/TC/CU/RegWrite
add wave -noupdate -format Literal /tb/r5/TC/aluc/ALUOp
add wave -noupdate -format Literal /tb/r5/TC/aluc/Funct
add wave -noupdate -format Literal /tb/r5/TC/aluc/Operation
add wave -noupdate -format Literal /tb/r5/ALU64/a
add wave -noupdate -format Literal /tb/r5/ALU64/b
add wave -noupdate -format Literal /tb/r5/ALU64/operation
add wave -noupdate -format Literal /tb/r5/ALU64/Result
add wave -noupdate -format Logic /tb/r5/ALU64/Zero
add wave -noupdate -format Logic /tb/r5/Data_Memory/MemWrite
add wave -noupdate -format Logic /tb/r5/Data_Memory/MemRead
add wave -noupdate -format Logic /tb/r5/Data_Memory/clk
add wave -noupdate -format Literal /tb/r5/Data_Memory/Mem_Addr
add wave -noupdate -format Literal /tb/r5/Data_Memory/Write_Data
add wave -noupdate -format Literal /tb/r5/Data_Memory/Read_Data
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ns} 0}
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {1 us}
