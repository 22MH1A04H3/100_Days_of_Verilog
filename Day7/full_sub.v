module full_sub(
input a,b,c,
output sum,barrow);
assign sum=a^b^c;
assign barrow=(~a)&b|b&c|c&(~a);

endmodule
