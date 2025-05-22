module tb;

reg [3:0]din;
wire is_palin;
palin dut(.din(din),.is_palin(is_palin));
initial
begin
$monitor("din=%0b and is_palindrome=%0b",din,is_palin);
din=4'b0101;//not a palindrome
#10;
din=4'b1010;//not a palindrome
#10;

din=4'b1111;//palindrome
#10;

din=4'b0111;//not a plindrome
#10;

din=4'b1001;//palindrome
#10;

$finish();


end
endmodule
