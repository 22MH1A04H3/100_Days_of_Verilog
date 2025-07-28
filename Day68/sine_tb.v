// Code your testbench here
// or browse Examples
module tb;
 logic clk=0;
  logic reset;
  logic signed[15:0]sine;
  
  always #5 clk = ~clk;
  
  sine_wave_gen dut(.clk(clk),.reset(reset),.sine(sine));
  
  initial
    begin
      $monitor("sine == %0b",sine);
      reset=1;
      #10;
      reset=0;
      #1000;
      $finish();
    end
endmodule
