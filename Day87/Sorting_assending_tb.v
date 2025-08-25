module tb;
  reg [31:0]a,b,c,d,e,f;
  wire [31:0]m,n,o,p,q,r;
  
  sort dut(.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.m(m),.n(n),.o(o),.p(p),.q(q),.r(r));
  initial
    begin
      
      a='d60;
      b='d50;
      c='d40;
      d='d30;
      e='d20;
      f='d10;
      $display("The Input sequance : %0d %0d %0d %0d %0d %0d ",a,b,c,d,e,f);
      #10;
      
      $display("The Sorted sequance : %0d %0d %0d %0d %0d %0d ",m,n,o,p,q,r);
      #10;
      $finish();
      
    end
endmodule
