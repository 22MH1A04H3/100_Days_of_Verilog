// Code your testbench here
// or browse Examples
module tb;
  reg clk=0;
  reg reset_n;
  reg [3:0]duty_cycle;
  wire pwm;
  
  always #5 clk = ~clk;
  
  pwm dut(.clk(clk),.reset_n(reset_n),.duty_cycle(duty_cycle),.pwm(pwm));
  
  initial
    begin
      $monitor("clk=%0b pwm = %0b",clk,pwm);
      reset_n=1'b0;
      #10;
      reset_n=1'b1;
      #10;
      duty_cycle=4'd5;
      #1000;
     reset_n=1'b0;
      #10;
      reset_n=1'b1;
      #10;
      duty_cycle=4'd8;
      #1000;
      $finish();
      
    end
endmodule
