module decade(
input clk,reset,//asynchronous reset
output reg [3:0]q);
always@(posedge clk or posedge reset)
begin
if(reset)
q<=4'b0000;
else if (q[3]&(~q[2])&q[1]&(~q[0]))
q<=4'b0000;
else
q<=q+1;
end
endmodule
