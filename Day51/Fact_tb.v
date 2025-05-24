module tb;
reg [3:0]num;
wire [31:0]fact;
fact dut(.num(num),.fact(fact));
initial
begin
$monitor("The Factorial value of %0d is : %0d",num,fact);
num=4'd5;
#10;
num=4'd6;
#10;
num=4'd4;
#10;
num=4'd3;
#10;
num=4'd2;
#10;
num=4'd8;
#10;
num=4'd9;
#10;
$finish();

end
endmodule
