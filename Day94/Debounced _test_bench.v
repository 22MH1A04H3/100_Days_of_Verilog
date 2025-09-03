module tb;
  reg clk,reset;
  
  reg noise;
  wire clean;
  
  //dut ibstantioan
  debounce dut(.clk(clk),.reset(reset),.noise(noise),.clean(clean));
  initial
    begin
      clk=0;
      forever #5 clk =~clk;
    end
  initial
    begin
      $monitor("noise =%0b | clean =%0b ", noise,clean);
      reset=1;
      #10;
      reset=0;
      #10;
      repeat(20)
        begin
          noise=$random();
          #1;
          
        end
      #10;
      if(clean==1)
        $display("Test passed : Debounced output is clean ");
      else
        $display("Test Failed : Debounced output is Failed");
      $finish();
      
    end
endmodule
