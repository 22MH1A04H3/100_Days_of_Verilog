//dff is a memory element with starafe one bit and delay
module dff(
input din,
input clk,
input reset,
output reg q);
always@(posedge clk or posedge reset) //asyn reset
begin
if(reset)
q=1'b0;
else
q=din;

end
endmodule
