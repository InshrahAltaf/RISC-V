module Fetch_Unit(clk, rst, instruction);
  //Parameterized
  parameter integer data_width = 32;   //RAM width i.e. word size of memory
  parameter integer addr_width = 32;   //RAM depth 
  
  input clk;
  input wire rst;
  output reg [32:0] instruction;
  wire [32:0] inst_addr;
  
  Instruction_Memory (.clk(clk), .addr(inst_addr), .instruction(instruction));
  Program_Counter (.clk(clk), .rst(rst), .PC(inst_addr));
  
endmodule
