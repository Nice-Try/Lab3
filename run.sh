#! /bin/bash

rm mips1.text.hex
mars a mc CompactTextAtZero dump .text HexText mips1.text.hex mips1.asm

iverilog -Wall -o cpu.vvp cpu.t.v
./cpu.vvp

gtkwave cpu.vcd cpu.gtkw
