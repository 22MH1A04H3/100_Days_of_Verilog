module full_adder(input a,b,cin,
output sum,cout);
assign {cout,sum}=a+b+cin;
endmodule
