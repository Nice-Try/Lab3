# Nice Try Lab 3 Report
Louise Nielsen and Camille Xue

## CPU Architecture
Louise

## Test plan
Camille - stuff with Ben on Thursday
Louise - stuff yesterday + today

After making the submodules for the cpu and doing unit tests for most of them, we created a verilog testbench for our single cycle cpu that would load an assembly file into the datamemory and excute the program. After our inital test, we found that our cpu seemed to be working partially, and saw that several of our modules were actual still being clocked, like our ALU and our cpu control LUT. After eliminating that, we discovered that our PC unit wasn't incrementing properly and our CPU could only successfully complete the first instruction. We also found that our datamemory wasn't indexing properly, since we where not dividing the MIPS PC by 4, which would actually give the Verilog array index. After fixing these issues, we were able to start testing the functionality of each instruction using more complex assembly tests. 

## Performance/area analysis of design
One of the most area expensive parts of our CPU is the CPU control signal LUT because it has essentially 12 input bits, 6 for the opcode and 6 for the funct of the instruction. A 4-input LUT uses 15 muxes, a 7-input would use something like 135 muxes by using 8 4-input muxes and 7 muxes after that. So to have 12 inputs, we would need well over 200 muxes just to implement our control signal LUT. Or alternatively, we could have two separate 6-input LUT since the 6 instructions that are determined by their funct have the same opcode value. This would reduce the size of our LUT, since you'd only need one additional mux to determine which of the two LUT should be used to determine the control signals. For example, if the opcode is just 000000, then the control signals are actually determined by the funct value, which tells what the specific instruction is. If it's not, then the opcode determins the control signals directly. 



## Work plan reflection
Together
