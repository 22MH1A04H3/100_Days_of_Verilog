module tb;
  reg clk;
  reg rst;
  wire clk_out;
  
  //dut 
  clk_gen #(10) dut(.clk(clk),.clk_out(clk_out),.rst(rst));
  initial
    begin
      clk=0;
      forever #5 clk= ~clk;
      #200;
      $finish();
      
        
    end
  initial
    begin
      rst=1'b0;
      #5;
      rst=1'b1;
      #200;
      $finish();
    end
  initial
    begin
      $dumpfile("wavefile.vcd");
      $dumpvars(0,tb);
      #200;
      $finish();
    end

endmodule
