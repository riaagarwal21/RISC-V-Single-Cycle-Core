module Instruction_Memory(A,rst,RD);
  
  input [31:0] A;
  input rst;
  
  output [31:0] RD;
  
  reg [31:0] Mem [1023:0];
  
  //active low reset
  assign RD = (rst == 1'b0) ? 32'h00000000 : Mem[A[31:2]];
  initial begin
    $readmemh("memfile.hex",Mem);
  end

  /*
  initial begin
    //Mem[0] = 32'hFFC4A303;
    //Mem[1] = 32'h00832383;
    //Mem[0] = 32'h0064A423;
    Mem[0] = 32'h0062E233;

  end*/
  
endmodule