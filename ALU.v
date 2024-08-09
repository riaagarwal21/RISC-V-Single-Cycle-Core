module ALU(A,B,ALUControl,Result,Z,N,V,C);
  
  //declaring inputs
  input [31:0] A,B;
  input [2:0] ALUControl;
  
  //declaring outputs
  output [31:0]Result;
  output Z,N,V,C;
  
  //declaring interim wires
  wire [31:0] A_and_B;
  wire [31:0] A_or_B;
  wire [31:0] not_B;
  wire [31:0] mux_1;
  wire [31:0] sum;
  wire [31:0] mux_2;
  wire [31:0] slt;
  wire cout;
  
  
  //logic deign
  assign A_and_B = A & B;
  assign A_or_B = A | B;
  assign not_B = ~B;
  assign mux_1 = (ALUControl[0] == 1'b0) ? B : not_B;
  assign {cout, sum} = A + mux_1 + ALUControl[0];
  assign slt = {31'b0000000000000000000000000000000,sum[31]};
  assign mux_2 = (ALUControl[2:0] == 3'b000) ? sum : 
                 (ALUControl[2:0] == 3'b001) ? sum :
                 (ALUControl[2:0] == 3'b010) ? A_and_B :
                 (ALUControl[2:0] == 3'b011) ? A_or_B :
                 (ALUControl[2:0] == 3'b101) ? slt : 32'h00000000;
  assign Result = mux_2;
  assign Z = &(~mux_2);
  assign N = mux_2[31];
  assign C = cout & (~ALUControl[1]);
  assign V = (~ALUControl[1]) & (A[31] ^ sum[31]) & (~(A[31] ^ B[31] ^ ALUControl[0]));
  
endmodule