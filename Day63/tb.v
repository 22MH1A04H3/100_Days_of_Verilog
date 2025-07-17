// Code your testbench here
// or browse Examples
module tb;
  reg clk;
  reg din;
  reg reset;
  wire out;
  
  fsm dut(.din(din),.clk(clk),.reset(reset),.out(out));
  initial
    begin
      clk=1'b0;
      forever #5 clk = ~clk;
    end
  
  initial
    begin
      $monitor("din = %0b out = %0b at %0t",din,out,$time());
      reset=1'b1;
      #10;
      reset=1'b0;
      #10;
      for(int i=0;i<30;i++)
        begin
          @(posedge clk)
          din=$random();
         
        end
      #10;
      $finish();
      
    end
endmodule
