`include "cpu.v"

// CPU testbench

module cpu_test();

  reg clk;

  initial clk = 0;
  always #10 clk = !clk;

  CPU cpu(.clk(clk));

  initial begin

  $readmemh("mips1.text.hex", cpu.datamem.memory, 0);
      //   if (init_data) begin
      // $readmemh("mem.data.hex", cpu.datamem.memory, 2048);
      //   end
  $dumpfile("cpu.vcd");
  $dumpvars();

  #2000 $finish();
  end
endmodule
