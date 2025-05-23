module tb;
reg [9:0]num;
wire is_arm;

arm dut(.num(num),.is_arm(is_arm));
initial
begin
$monitor("the input number =%0d is_armstrong number = %0b",num,is_arm);
num=153;
#10;
num=143;
#10;
num=999;
#10;
num=222;
#10;
num=153;
#10;
$finish();

end
endmodule
