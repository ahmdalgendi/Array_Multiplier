SetActiveLib -work
comp -include "$DSN\src\MUL.vhd" 
comp -include "$DSN\src\TestBench\mul_TB.vhd" 
asim TESTBENCH_FOR_mul 
wave 
wave -noreg A
wave -noreg b
wave -noreg c
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$DSN\src\TestBench\mul_TB_tim_cfg.vhd" 
# asim TIMING_FOR_mul 
