//Complete System Verilog Test bench 

//Generator Component
class generator;
  logic a,b,cin;
  mailbox mbx;
  task run();
    for(int i=0;i<3;i++)
      begin
        a=$random();
        b=$random();
        cin=$random();
        mbx.put({a,b,cin});
        $display("The Generated Transaction is a=%0b | b=%0b | cin=%0b at %0t",a,b,cin,$time);
      end
  endtask
  
endclass

class driver;
  mailbox mbx;
  virtual inter in;/*virtual interface beacause class is dynamic component but interface is static that y virtual*/

   
  task run();
    forever
      begin
        
    logic [2:0]t;
    mbx.get(t);
    in.a=t[2];
    in.b=t[1];
    in.cin=t[0];
    #10;
        $display("Drived transaction a=%0b| b=%0b | cin=%0b | sum = %0b| cout=%0b at%0t",in.a,in.b,in.cin,in.sum,in.cout,$time);
      end
   endtask
   
endclass
//monitor component
class monitor;
  virtual inter inff;
  mailbox mbx1;
  task run();
    for(int i=0;i<2;i++)
      begin
       #20;
        mbx1.put({inff.a,inff.b,inff.cin,inff.sum,inff.cout});
       
        
        $display("Monitored Transaction is a=%0b| b=%0b | cin=%0b | sum = %0b| cout=%0b at %0t",inff.a,inff.b,inff.cin,inff.sum,inff.cout,$time);
        
        
      end
  endtask 
  

  
endclass

//Scoreboard component
class sb;
  mailbox mbx1;
  task run();
    for(int i=0;i<2;i++)
      begin
        logic a1,b1,cin1,sum1,cout1;
        logic [4:0]t;
        #30;
        mbx1.get(t);
        
        a1=t[4];
        b1=t[3];
        cin1=t[2];
        sum1=t[1];
        cout1=t[0];
        
     
        //reference and cheaker
        if((a1^b1^cin1==sum1)&&((a1&b1)|(b1&cin1)|(cin1&a1))==cout1)
          $display("Verification Sucsses...!!! at %0t",$time());
        else
          $display("Verification Failed....!!! at %0t",$time());
      end
  endtask
endclass


module tb;
  inter inf();
  //dut instantiation
  fa dut(.a(inf.a),.b(inf.b),.cin(inf.cin),.sum(inf.sum),.cout(inf.cout));
  generator gen;
  driver div;
  monitor m;
  sb s;
  
  mailbox mbx;
  mailbox mbx1;
  
  initial
    begin
      gen=new();
      div=new();
      m=new();
      s=new();
      mbx=new();
      mbx1=new();
      gen.mbx=mbx;
      div.mbx=mbx;
      div.in=inf;
      m.mbx1=mbx1;
      s.mbx1=mbx1;
      m.inff=inf;
      
     fork
        gen.run();
        div.run();
     
        m.run();
        s.run();
     join
        
      
      #1000;
      $finish();
    end
endmodule
