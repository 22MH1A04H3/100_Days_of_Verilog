module tb_counter;

reg clk, reset, en;
reg [3:0] din;
wire [3:0] dout;

counter uut (
    .din(din),
    .clk(clk),
    .reset(reset),
    .en(en),
    .dout(dout)
);

// clock gen
always #5 clk = ~clk;

initial begin
    // init
    clk = 0; reset = 1; en = 0; din = 4'b0000;
    
    // reset pulse
    #10 reset = 0;

    // enable counting
    #10 en = 1;

    // wait and disable
    #50 en = 0;

    // finish
    #20 $finish;
end

endmodule
