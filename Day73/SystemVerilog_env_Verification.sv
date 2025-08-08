



class generator;
  
 
  mailbox mbx=new(10);
  task run();
    logic a,b,sel;
    
  
    a=$random();
        b=$random();
        sel=$random();
        mbx.put(a);
    
        mbx.put(b);
        mbx.put(sel);
        $display("Generated stimulus a = %0b b= %0b sel = %0b  ",a,b,sel);
  endtask
endclass



class driver;
  logic a1=0,b1=0,sel1=0;
  mailbox mbx=new(10);
  
  task run();
   
   /* for(int i=0;i<10;i++)
      begin
        
        mbx.get(a1);
        mbx.get(b1);
        mbx.get(sel1);
      
        $display("Drived  stimulus a1 = %0b b1= %0b sel1 = %0b ",a1,b1,sel1);
      end*/
    
        mbx.get(a1);
        mbx.get(b1);
        mbx.get(sel1);
      
        $display("Drived  stimulus a1 = %0b b1= %0b sel1 = %0b ",a1,b1,sel1);
    
    
    
  endtask
  
endclass



interface inter;
  logic a;
  
  logic b;
  logic sel;
  logic y;
  
 
  
endinterface



module tb;
    inter in();
  mux dut(.a(in.a),.b(in.b),.sel(in.sel),.y(in.y));//interface connected with dut
    generator g;
  driver d;
  mailbox mbx;
  
  initial
    begin
      
     
      g=new();
      d=new();
      mbx=new();

      
     
      
     
     
      
      g.mbx=mbx;
      d.mbx=mbx;
  
    //  g.run();
      //d.run();
      
       for(int i=0;i<10;i++)
        begin
          g.run();
      d.run();
        in.a=d.a1;
      in.b=d.b1;
      in.sel=d.sel1;
          #10;
          $display("a = %0b      b= %0b      sel = %0b  y=%0b  ",in.a,in.b,in.sel,in.y);
        end
      
      #1000;
      $finish();
    end
 
endmodule
