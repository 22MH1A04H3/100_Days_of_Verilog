// Code your testbench here
// or browse Examples
module tb;
 reg clk,en,rst;
  wire [3:0]q;
  
  up_down uut(.clk(clk),.en(en),.rst(rst),.q(q));
  initial
    begin
      clk=0;
      forever #5 clk=~clk;
    end
  
  initial
    begin
      
      $monitor("reset =%0b  enable =%0b , q =%0b",rst,en,q);
      
      
      rst=0;en=0;
      #10;
      rst=1;en=1;
      #100;
      rst=0;en=0;
      #10;
      rst=1;en=0;
      #100;
      $finish();
      
      
      
    end
  
endmodule
