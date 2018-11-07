`include "alu.v"
`include "regfile.v"
`include "instruction_decoder.v"
`include "datamemory.v"
`include "mux5.v"
`include "mux32.v"

`define LW    6'h23
`define SW    6'h2b
`define J     6'h2
`define JAL   6'h3
`define BEQ   6'h4
`define BNE   6'h5
`define XORI  6'he
`define ADDI  6'h8

`define ARITH 6'h0
`define JR    6'h8
`define ADD   6'h20
`define SUB   6'h22
`define SLT   6'h2a

module CPUcontrolLUT (
input       clk,
input [5:0] opcode,
            funct,
output reg  ctrlJ,
            ctrlJR,
            ctrlJAL,
            ctrlBEQ,
            ctrlBNE,
            RegDst,
            RegWr,
            ALUctrl,
            ALUsrc,
            MemWr,
            MemToReg
  );

  always @(posedge clk) begin
    case(opcode)
      `LW: begin
        ctrlJ = 0;   ctrlJR = 0;  ctrlJAL = 0;
        ctrlBEQ = 0; ctrlBNE = 0;
        RegDst = 0;  RegWr = 0;
        ALUctrl = 0; ALUsrc = 0;
        MemWr = 0;   MemToReg = 0;
      end
      `SW: begin
        ctrlJ = 0;   ctrlJR = 0;  ctrlJAL = 0;
        ctrlBEQ = 0; ctrlBNE = 0;
        RegDst = 0;  RegWr = 0;
        ALUctrl = 0; ALUsrc = 0;
        MemWr = 0;   MemToReg = 0;
      end
      `J: begin
        ctrlJ = 0;   ctrlJR = 0;  ctrlJAL = 0;
        ctrlBEQ = 0; ctrlBNE = 0;
        RegDst = 0;  RegWr = 0;
        ALUctrl = 0; ALUsrc = 0;
        MemWr = 0;   MemToReg = 0;
      end
      `JAL: begin
        ctrlJ = 0;   ctrlJR = 0;  ctrlJAL = 0;
        ctrlBEQ = 0; ctrlBNE = 0;
        RegDst = 0;  RegWr = 0;
        ALUctrl = 0; ALUsrc = 0;
        MemWr = 0;   MemToReg = 0;
      end
      `BEQ: begin
        ctrlJ = 0;   ctrlJR = 0;  ctrlJAL = 0;
        ctrlBEQ = 0; ctrlBNE = 0;
        RegDst = 0;  RegWr = 0;
        ALUctrl = 0; ALUsrc = 0;
        MemWr = 0;   MemToReg = 0;
      end
      `BNE: begin
        ctrlJ = 0;   ctrlJR = 0;  ctrlJAL = 0;
        ctrlBEQ = 0; ctrlBNE = 0;
        RegDst = 0;  RegWr = 0;
        ALUctrl = 0; ALUsrc = 0;
        MemWr = 0;   MemToReg = 0;
      end
      `XORI: begin
        ctrlJ = 0;   ctrlJR = 0;  ctrlJAL = 0;
        ctrlBEQ = 0; ctrlBNE = 0;
        RegDst = 0;  RegWr = 0;
        ALUctrl = 0; ALUsrc = 0;
        MemWr = 0;   MemToReg = 0;
      end
      `ADDI: begin
        ctrlJ = 0;   ctrlJR = 0;  ctrlJAL = 0;
        ctrlBEQ = 0; ctrlBNE = 0;
        RegDst = 0;  RegWr = 0;
        ALUctrl = 0; ALUsrc = 0;
        MemWr = 0;   MemToReg = 0;
      end
      `ARITH: begin
        case(funct)
          `JR: begin
            ctrlJ = 0;   ctrlJR = 0;  ctrlJAL = 0;
            ctrlBEQ = 0; ctrlBNE = 0;
            RegDst = 0;  RegWr = 0;
            ALUctrl = 0; ALUsrc = 0;
            MemWr = 0;   MemToReg = 0;
          end
          `ADD: begin
            ctrlJ = 0;   ctrlJR = 0;  ctrlJAL = 0;
            ctrlBEQ = 0; ctrlBNE = 0;
            RegDst = 0;  RegWr = 0;
            ALUctrl = 0; ALUsrc = 0;
            MemWr = 0;   MemToReg = 0;
          end
          `SUB: begin
            ctrlJ = 0;   ctrlJR = 0;  ctrlJAL = 0;
            ctrlBEQ = 0; ctrlBNE = 0;
            RegDst = 0;  RegWr = 0;
            ALUctrl = 0; ALUsrc = 0;
            MemWr = 0;   MemToReg = 0;
          end
          `SLT: begin
            ctrlJ = 0;   ctrlJR = 0;  ctrlJAL = 0;
            ctrlBEQ = 0; ctrlBNE = 0;
            RegDst = 0;  RegWr = 0;
            ALUctrl = 0; ALUsrc = 0;
            MemWr = 0;   MemToReg = 0;
          end
        endcase
      end
    endcase
  end
endmodule
