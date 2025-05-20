module counter(
input [3:0]din,
input clk,reset,en,
output  reg [3:0]dout);
//reg [3:0]w;

always@(posedge clk)
begin
if(reset)
begin
dout<=4'b0001;

end
else if(en)
begin
dout<=dout+1;
end
else
begin
dout<=dout;
end
end
//assign dout=w;
endmodule
