module tb;
reg [3:0]a,b;
reg [2:0]s;
wire [3:0]out;
wire cout;
alu uuu(.a(a),.b(b),.cout(cout),.out(out),.s(s));
initial
begin
$monitor("a=%0d,b=%0d,out=%0d at :%0t",a,b,out,$time);
s=3'b100;a=4'b0101;b=4'b1010;
#10;
s=3'b110;a=4'b1101;b=4'b0010;
#10;

s=3'b111;a=4'b0001;b=4'b1110;
#10;

s=3'b101;a=4'b0011;b=4'b1011;
#10;

s=3'b001;a=4'b0111;b=4'b1111;
#10;

s=3'b010;a=4'b1101;b=4'b1100;
#10;

s=3'b000;a=4'b0010;b=4'b1010;
#10;
$finish();

end

endmodule
