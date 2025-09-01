
module tb;
  reg clk,reset;
  wire clk_0,clk_90,clk_180,clk_270;
  clk_phase dut(.clk(clk),.reset(reset),.clk_0(clk_0),.clk_90(clk_90),.clk_180(clk_180),.clk_270(clk_270));
  initial 
    begin
      clk=0;
      forever #5 clk=~clk;
      
    end
  initial
    begin
      
      reset=1'b1;
      #10;
      reset=1'b0;
      #100;
      
      $finish();
      
    end
  initial
    begin
      $dumpfile("waveform.vcd");
      $dumpvars(0,tb);
    end
  
endmodule 
