module Instruction_Memory(clk, addr, instruction);
    //Parameterized
  parameter integer data_width = 32;  //RAM width i.e. word size of memory
  parameter integer addr_width =32;   //RAM depth 
  
  input clk;
  input [addr_width - 1 : 0] addr;
  output reg [data_width - 1 : 0] instruction;
  
  initial
      begin
        $readmemh("Instructions.hex", instruction_memory);  // Put the absolute path of the machine code that you want to execute.
    end
 // assign instruction = instruction_memory[addr[31:2]];
  always @ (posedge clk)
    begin
      instruction <= mem[addr];
    end 
endmodule