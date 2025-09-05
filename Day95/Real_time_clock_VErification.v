module tb;
   reg  clk,rst,clr,en;
  wire  [6:0]HRL_M,HRL_L,MIN_M,MIN_L,SEC_L,SEC_M;
  
  top dut(.clk(clk),.rst(rst),.clr(clr),.en(en),.HRL_M(HRL_M),.HRL_L(HRL_L),.MIN_M(MIN_M),.MIN_L(MIN_L),.SEC_L(SEC_L),.SEC_M(SEC_M));
  
  initial
    begin
      clk=0;
      forever #5 clk = ~clk;
      
    end
  initial
    begin
      $monitor("en=%0b | HRL_M = %b",en,HRL_M);
      $monitor("en=%0b | HRL_L = %b",en,HRL_L);
      $monitor("en=%0b | MIN_M = %b",en,MIN_M);
      $monitor("en=%0b | MIN_L = %b",en,MIN_L);
      $monitor("en=%0b | SEC_L = %b",en,SEC_L);
      $monitor("en=%0b | SEC_M = %b",en,SEC_M);
      
      rst=1;clr=1;
      en=0;
      #10;
      rst=0;clr=0;
      en=1;
      #1000;
      $stop();
      
    end
  
endmodule
