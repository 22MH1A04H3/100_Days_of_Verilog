module tb;
  reg clk,reset;
  wire [4:0]q;
  
  //dut
  lfsr dut(.clk(clk),.reset(reset),.q(q));
  initial
    begin
      $monitor("clk =%0b | q = %b",clk,q);
      clk=0;
      forever #5 clk = ~clk;
    end
  initial
    begin
     reset=1;
      #10;
      reset=0;
      #40;
      $finish();
      
    end
endmodule 
