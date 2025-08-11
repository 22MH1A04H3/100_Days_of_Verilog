class gen;
  logic din;
  mailbox mb;
  task run();
    for(int i=0;i<4;i++)
      begin
    din=$random();
    mb.put(din);
    $display("The generated stimulus is din=%0b",din);
      end
  endtask
endclass
//driver
class div;
  mailbox mb;
  virtual inter in;
  task run();
    forever
      begin
    #10;
  // logic temp;
    mb.get(in.din);
   
    $display("The Drive Stimulus is din=%0b | dout=%0b",in.din,in.q);
      end
  endtask
endclass
//top test bench 

module tb;
  inter inf();
  //dut instatiation
  dff dut(.din(inf.din),.clk(inf.clk),.rst(inf.rst),.q(inf.q));
  gen g;
  div d;
  mailbox mb;
  initial
    begin
      inf.clk=0;
      forever #5 inf.clk= ~inf.clk;
      
    end
  
  initial
    begin
      inf.rst=1;
      #10;
      inf.rst=0;
      #1000;
      $finish();
    end
      initial
        begin
      g=new();
      d=new();
      mb=new();
      g.mb=mb;
      d.mb=mb;
      d.in=inf;
      fork
        g.run();
        d.run();
        
      join
      
      
      
    end
endmodule
