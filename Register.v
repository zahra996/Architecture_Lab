module register(
input [31:0] data_in,
input clk,reset,
output reg [31:0] data_out);

always @(posedge clk or negedge reset)
begin
if(reset==0)
 data_out <= 0;
else
 data_out <= data_in;
end
endmodule
