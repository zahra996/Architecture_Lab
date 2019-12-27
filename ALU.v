module alu(
input [7:0] A,B,                 
input [3:0] ALU_Ope,
output CarryOut,
output reg [63:0] ALU_Result);

assign carryOut =ALU_Result ? 0 : 1;

always @(A,B,ALU_Ope)
begin
case(ALU_Ope)
 4'b0000: ALU_Result = A & B;
 4'b0001: ALU_Result = A | B;
 4'b0010: ALU_Result = A + B;
 4'b0110: ALU_Result = A - B;
endcase
end
endmodule
