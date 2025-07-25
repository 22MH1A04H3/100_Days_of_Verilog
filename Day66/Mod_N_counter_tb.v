// Code your testbench here
// or browse Examples
module tb;
  reg clk=0;
  reg rst_n;
  parameter n=20;
  
  wire [$clog2(n)-1:0]q;
  
  always #5 clk=~clk;
  counter dut(.clk(clk),.rst_n(rst_n),.q(q));
  
  initial
    begin
      $monitor("q == %0b at %0t ",q,$time);
      rst_n=1'b0;
      #10;
      rst_n=1'b1;
      #400;
      $finish();
      
    end
 
endmodule
