module full_adder(
input a,b,cin,
output sum,cout);
  assign {cout,sum}=a+b+cin;
  
endmodule


//interface component
interface inter;
  logic a,b,cin,sum,cout;
  
endinterface
