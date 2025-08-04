module tb;
  parameter depth=6;
  reg [depth-1:0]a,b;
  wire l_t,g_t,eq,neq;
  
  
  //module instantiation
  n_bit_comp dut(.a(a),.b(b),.l_t(l_t),.g_t(g_t),.eq(eq),.neq(neq));
  
  initial
    begin
      $monitor("a = %0b    b = %0b    l_t =%0b    g_t = %0b   eq = %0b    neq = %0b,",a,b,l_t,g_t,eq,neq);
      for(int i=0;i<10;i++)
        begin
          a=$random();
          b=$random();
         
        #10;
          
        end
      #10;
      $finish();
    end
endmodule
