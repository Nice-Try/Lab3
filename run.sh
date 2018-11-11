#! /bin/bash

rm mem.text.hex
rm mem.data.hex
mars a mc CompactTextAtZero dump .text HexText mem.text.hex mem.asm
mars a mc CompactTextAtZero dump .data HexText mem.data.hex mem.asm

iverilog -Wall -o cpu.vvp cpu.t.v
./cpu.vvp

gtkwave cpu.vcd cpu.gtkw
