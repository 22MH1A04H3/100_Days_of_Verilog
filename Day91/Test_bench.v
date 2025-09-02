module tb;
  reg [3:0]din;
  reg [1:0]shift_amnt;
reg direction,shift_type;
  wire [3:0]dout;
 
  
  //module instantiation
  shift dut(.din(din),.shift_amnt(shift_amnt),.direction(direction),.shift_type(shift_type),.dout(dout));
  initial
   begin
     repeat(10)
       begin
         din=$random();
         shift_amnt=$random();
         direction=$random();
         shift_type=$random();
         #10;
         
       end
     #10;
     $stop();
   end
  initial
    begin
      $dumpfile("waveform.vcd");
      $dumpvars();
    end
endmodule
