module tb;
  reg clk,reset,din;
  wire q;
  
  
  dual_edge_trigger_ff dut(.clk(clk),.reset(reset),.din(din),.q(q));
  initial
    begin
      clk=0;
      forever #5 clk=~clk;
      
    end
  initial
    begin
      reset=1;din=1;
      
      #10;
      reset=0;din=0;
      
      #10;
      repeat(10)
        begin
          din=$random();
          #10;
          
        end
      #10;
      $finish();
      
      
    end
  initial
    begin
      $dumpfile("dumpwave.vcd");
      $dumpvars();
      
    end
endmodule
