module tb;
  reg clk;
  reg rst;
  reg din,v;
  wire y;
  
  fsm dut(.clk(clk),.rst(rst),.din(din),.v(v),.y(y));
  initial
    begin
      clk=1'b0;
      forever #5 clk = ~clk;
    end
  
  initial
    begin
      $monitor(" v = %0b din = %0b y = %0b at %0t",v,din,y,$time);
      rst=1'b1;
      #10;
      rst=1'b0;
      #10;
      v=1'b1;
      #10;
      for(int i=0;i<10;i++)
        begin
          din=$random;
          #10;
          
        end
      #10;
      $finish();
    end
endmodule
