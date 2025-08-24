module tb;
  reg din,clk,reset;
  wire out;
  
  detect dut(.din(din),.clk(clk),.reset(reset),.out(out));
  initial 
    begin
      clk=0;
      forever #5 clk = ~clk;
      
    end
  initial
    begin
      $monitor("clk = %0b |reset = %0b  | din = %0b | out = %0b",clk,reset,din,out);
      din=0;reset=1'b1;
      #10;
      din=0;reset=1'b0;
      #10;
      din=1'b0;
      #10;
      din=1'b0;
      #10;
      din=1'b0;
      #10;
      din=1'b0;
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
      din=1'b0;
      #10;
      din=1'b0;
      #10;
      din=1'b0;
      #10;
      din=1'b1;
      #10;
      din=1'b0;
      #10;
      din=1'b1;
   
      
      
      
  
      
   /* repeat(20)
        begin
          din=$random();
          #10;
          
        end*/
      #50;
      $finish();
      
    end
  initial
    begin
      $dumpfile("waveform.vcd");
      $dumpvars(0,tb);
    end
   
endmodule
