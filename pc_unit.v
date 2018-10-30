// PC unit
module pcUnit
(
input [15:0] branchAddr,  // Branch address from instr decoder
input [25:0] jumpAddr,    // Jump address from instr decoder
input [31:0] regRa,       // Output of regfile Da for jump register
input        ALUzero,     // Output of ALU zero flag when ALU is subtracting
input        ctrlBranch,  // HIGH when branch instr
             ctrlJump,    // HIGH when J type instr
             ctrlJumpReg  // HIGH when jump register instr
);
  // Code goes here
endmodule
