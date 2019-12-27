module register_bank(
input [4:0] Read_1,
input [4:0] Read_2,
input [4:0] WriteRegister,
input [63:0] WriteData,
input clk,RegWrite,
output [63:0] Data1,Data2
);

reg [63:0] Register [31:0];
assign Data1=Register[Read_1];
assign Data2=Register[Read_2];

always @(posedge clk)
begin
if (RegWrite == 1)
Register[WriteRegister] <= WriteData;
end
endmodule



