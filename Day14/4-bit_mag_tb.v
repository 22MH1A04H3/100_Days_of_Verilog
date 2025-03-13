module mag_tb;
reg [3:0]a,b;
wire l_t,g_t,equ;
mag uut(.a(a),.b(b),.l_t(l_t),.g_t(g_t),.equ(equ));
initial
begin
a=4'b0101;b=4'b1010;
#10;
a=4'b0111;b=4'b1111;
#10;
a=4'b0111;b=4'b1110;
#10;
a=4'b0101;b=4'b1100;
#10;
a=4'b1101;b=4'b1100;
#10;
a=4'b0011;b=4'b1101;
#10;
a=4'b0101;b=4'b1010;
#10;
$finish();
end
endmodule
