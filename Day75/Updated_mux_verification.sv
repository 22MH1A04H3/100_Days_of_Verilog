//dut module
module fa(
input a,b,cin,
output sum,cout);
  assign {cout,sum}=a+b+cin;
endmodule

//interface
interface inter;
  logic a,b,cin;
  logic sum,cout;
  
endinterface
