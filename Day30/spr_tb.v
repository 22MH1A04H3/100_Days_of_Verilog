module spr_tb;
parameter data_w=8,add_w=4;
reg [data_w-1:0]din;
reg clk,we;
reg [add_w-1:0]add;
wire [data_w-1:0]dout;
spr #(data_w,add_w)uut(.din(din),.clk(clk),.we(we),.add(add),.dout(dout));
initial
begin
clk=0;
forever #2 clk=~clk;
end
initial
begin
din=8'h10;add=5'd0;we=1'b1;
#10;
din=8'h20;add=5'd5;
#10;
din=8'h40;add=5'd7;
#10;
we=1'b0;add=5'd0;
#10;
add=5'd5;
#10;
add=5'd7;
#10;
din=8'h10;add=5'd0;we=1'b1;
#10;
din=8'h20;add=5'd5;
#10;
din=8'h40;add=5'd7;
#10;
we=1'b0;add=5'd0;
#10;
add=5'd5;
#10;
add=5'd7;
#10;
$finish();


end
endmodule
