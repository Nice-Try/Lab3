#! /bin/bash

iverilog -o regfile.vvp regfile.t.v
iverilog -o regfile_subparts.vvp regfile_subparts.t.v

./regfile.vvp & ./regfile_subparts.vvp
