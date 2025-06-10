//master_slave_flipflop
module tb;
  reg clk,rst,d;
  wire master,q;
  
  
  master_slave dut(.clk(clk),.rst(rst),.d(d),.master(master),.q(q));
  
  initial
    begin
      clk=0;
      forever #5 clk=~clk;
      
    end
  initial
   begin
     $monitor("reset=%0b data =%0b master=%0b q=%0b",rst,d,master,q);
     rst=1'b0;
     #10;
     rst=1'b1;
     d=1'b1;
     #20;
      rst=1'b0;
     #10;
     rst=1'b1;
     d=1'b0;
     #40;
     $finish();
     
     
   end
endmodule
