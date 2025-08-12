module tb;
  parameter width=8;
  reg clk,rst,w_en,r_en;
  reg [width-1:0]din;
  wire [width-1:0]dout;
  wire  full,empty;
  //dut instatiation
  fifo dut(.clk(clk),.rst(rst),.w_en(w_en),.r_en(r_en),.din(din),.dout(dout),.full(full),.empty(empty));
 initial 
    begin
      clk=0;
      forever #5 clk = ~clk;
      
    end
  initial 
    begin
     
    rst=1;
      #10;
      rst=0;
      #10;
      for(int i=0;i<15;i++)
        begin
          
          w_en=1;
          r_en=0;
          din=$random();
          $display("w_en=%0b | din=%d",w_en,din);
      #10;
        end
      
      for(int i=0;i<15;i++)
        begin
          w_en=0;
          
          r_en=1;
          $display("r_en=%0b | dout=%d",r_en,dout);
         #10;
        end
          
          
          #100;
      $finish();
          
       
  end
  
endmodule
