module tb;
  reg din;
  reg clk;
  reg rst;
  wire out;
  
  fsm dut(.din(din),.clk(clk),.rst(rst),.out(out));
  
  initial
    begin
      clk=1'b0;
      forever #5 clk = ~clk;
      
    end
  initial
    begin
      $monitor(" din = %0b out = %0b at %0t ",din,out,$time);
      rst=1'b1;
      #10;
      rst=1'b0;
      #10;
      din=1'b1;
      #10;
      din=1'b1;
      #10;
      din=1'b0;
      #10;
      din=1'b1;
      #10;
      din=1'b1;
      #10;
      din=1'b1;
      #10;
      din=1'b1;
      #10;
      din=1'b0;
      #10;
      din=1'b1;
      #10;
      $finish();
      
    end
endmodule
