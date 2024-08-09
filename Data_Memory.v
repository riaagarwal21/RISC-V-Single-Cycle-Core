module Data_Memory(A,WD,WE,clk,rst,RD);
  
  input [31:0] A, WD;
  input WE,clk, rst;
  
  output [31:0] RD;
  
  reg [31:0] Data_MEM [1023:0];
  
  //Read
 
  //assign RD = (!WE) ? Data_MEM[A] : 32'h00000000;
  //Write
  always @(posedge clk) begin
    if (WE) begin
      Data_MEM[A] <= WD;
    end
  end

  assign RD = (~rst) ?32'd0:Data_MEM[A];

  initial begin
    Data_MEM[28] = 32'h00000020;
    Data_MEM[40] = 32'h00000002;

  end
endmodule