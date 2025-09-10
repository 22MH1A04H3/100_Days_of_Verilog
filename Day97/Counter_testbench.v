module tb;
  reg clk=0;
  reg rst;
  reg en;
  wire [3:0]count;
  
  u_counter dut(.clk(clk),.rst(rst),.en(en),.count(count));
  always #5 clk = ~clk;
  initial
    begin
      $monitor("clk=%0b |rst=%0b|count = %0b",clk,rst,count);
      rst=1;
      #10;
      rst=0;
      en=1;
      #100;
      $finish();
      
    end
  
endmodule
