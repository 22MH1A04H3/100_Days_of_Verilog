//Generator Component
class genarator;
  logic a,b,cin;
  mailbox mbx;
  task run();
    for(int i=0;i<10;i++)
      begin
        a=$random();
        b=$random();
        cin=$random();
        mbx.put({a,b,cin});
        $display("Generated Stimulus a=%0b | b=%0b cin=%0b",a,b,cin);
        
      end
  endtask 
endclass

//driver component
class driver;
 // logic a,b,cin,sum,cout;
 virtual inter in;
  
  
  mailbox mbx;
  task run();
    forever
    begin
      //temp variables
      logic [2:0]temp;
      mbx.get(temp);
      in.a=temp[2];
      in.b=temp[1];
      in.cin=temp[0];
      #1;
      $display("Driven stimulus is a=%0b | b=%0b |cin =%0b |sum=%0b |cout=%0b",in.a,in.b,in.cin,in.sum,in.cout);
   
    end
  endtask
endclass

//test bench 
module tb;
  inter in1();
  
  //dut
  full_adder dut(.a(in1.a),.b(in1.b),.cin(in1.cin),.sum(in1.sum),.cout(in1.cout));
  mailbox mbx;
  genarator gen;
  driver div;
  initial
    begin
      
      gen=new();
      div=new();
      mbx=new();
      gen.mbx=mbx;
      div.mbx=mbx;
      div.in=in1;
      fork
        gen.run();
        div.run();
        
      join
      
    end
endmodule
