module PC(PCnext,PC,rst,clk);
  
  input [31:0] PCnext;
  input rst, clk;
  
  output reg [31:0] PC;
  
  always @(posedge clk) begin
    if (rst == 1'b0) begin
      PC <= 32'h00000000;
    end
    else begin
      PC <= PCnext;
    end   
  end

endmodule