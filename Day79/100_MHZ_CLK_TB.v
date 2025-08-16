module tb;
  reg clk;
  //dut
  clk_gen dut(.clk(clk));
  initial
    begin
      $monitor("%0b at %0t",clk,$time);
      clk=0;
      forever #5 clk = ~clk;
     
      
      #100;
      $finish();
      
    end
  initial
    begin
      $dumpfile("waveform.vcd");
      $dumpvars(0,tb);
      #100;
      $finish();
      
    end
  
endmodule
