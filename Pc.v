module pc(
input [31:0] data_in,
input clk,reset,load,inc_pc,
output reg [31:0] cout);

always @(posedge clk or posedge reset)
begin
if (reset == 0)
cout <= 0;
else if (load)
cout <= data_in;
else if (inc_pc)
cout <= cout + 1'b1;
end
endmodule
