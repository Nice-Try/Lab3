#! /bin/bash

# rm fib_func.text.hex
# rm fib_func.data.hex
# mars a mc CompactTextAtZero dump .text HexText fib_func.text.hex asmtest/NINJA/fib_func/fib_func.asm
# mars a mc CompactTextAtZero dump .data HexText fib_func.data.hex asmtest/NINJA/fib_func/fib_func.asm

rm mem.text.hex
rm mem.data.hex
mars a mc CompactTextAtZero dump .text HexText mem.text.hex mem.asm
mars a mc CompactTextAtZero dump .data HexText mem.data.hex mem.asm


iverilog -Wall -o cpu.vvp cpu.t.v
./cpu.vvp

gtkwave cpu.vcd cpu.gtkw
