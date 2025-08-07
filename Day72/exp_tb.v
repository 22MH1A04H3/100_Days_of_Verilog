// Code your testbench here
// or browse Examples
module tb;
  parameter depth=3;
  
  reg clk,rst,start;
  reg [depth-1:0]base,exp;
  wire [depth*2-1:0]result;
  wire finish;
  
  
  exp dut(.clk(clk),.rst(rst),.base(base),.exp(exp),.result(result),.finish(finish),.start(start));
  
  
 
  always #5 clk = ~ clk;
  
  initial
    begin
      $monitor("base =%0d exp = %0d result = %0d finish = %0b  ",base,exp,result,finish);
      clk=0;
     rst=1;
      #10;
      rst=0;
      #10;
      start=1;base='d2;exp='d5;
      
      #100;
      $finish();
      
      
    end
endmodule
