module tb;
reg din;
reg clk,rst;
wire [3:0]dout;
sipo uut(.din(din),.clk(clk),.reset(rst),.dout(dout));
initial
begin
clk=0;
forever #5 clk=~clk;
end
 initial begin
        // Initialize inputs
       // clk = 0;
        rst = 1;
        din = 0;

        // Apply reset
        #10 rst = 0;

        // Apply test stimulus
        #10 din = 1;
        #10 din = 0;
        #10 din = 1;
        #10 din = 1;
        #10 din = 0;
        #10 din = 1;
        #10 din = 1;

        // Apply reset again
        #20 rst = 1;
        #10 rst = 0;

        // More test cases
        #10 din = 1;
        #10 din = 0;
        #10 din = 0;
        #10 din = 1;

        // Finish simulation
        #50 $finish;
    end
endmodule
