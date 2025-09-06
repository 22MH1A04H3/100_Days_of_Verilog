module tb;
  reg c,n,clk,rst;
  wire q1,q_bar;
  
  cnff dut(.c(c),.n(n),.clk(clk),.rst(rst),.q1(q1),.q_bar(q_bar));
  
  initial
    begin
      clk=0;
      forever #5 clk = ~clk;
      
    end
  initial
    begin
      $monitor("clk = %0b | c=%0b | n =%0b | q1 =%0b | q_bar = %0b ",clk,c,n,q1,q_bar);
      rst=1;
      #5;
      rst=0; c=0;n=0;
      #100;
     
     
      c=1;n=0;
      #100;
       c=0;n=1;
      #100;
      c=1;n=0;
      #100;
       c=1;n=1;
      #100;
      $finish();
      
    end
endmodule 
