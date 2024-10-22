// module program_counter#(parameter data_width = 32)()
module Program_Counter (clk, reset, PC)
  
  //Parameterized
  parameter integer data_width = 32;  //RAM width i.e. word size of memory
  
  input clk, reset; 
  output reg [data_width - 1 : 0] PC;
  
  always @(posedge clk) 
    begin 
      if (!rst)              //reset = 0 i.e. asynchronous rst
          PC <= 0;
      end
  else
    begin
      PC <= PC + 4;
    end
endmodule
 