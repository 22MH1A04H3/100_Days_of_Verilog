module tb;
parameter data_w=8, data_d=32, add_w=8;

reg [data_w-1:0] din1, din2;
reg [add_w-1:0] add1, add2;
reg clk, rst;
reg we1, we2;
wire [data_w-1:0] dout1, dout2;

// Instantiate the DUT
dpr uut (
    .din1(din1), .din2(din2), 
    .dout1(dout1), .dout2(dout2), 
    .clk(clk), .rst(rst), 
    .add1(add1), .add2(add2), 
    .we1(we1), .we2(we2)
);

// Clock Generation
initial begin
    clk = 0;
    forever #5 clk = ~clk; 
end

// Test Sequence
initial begin
    // Apply reset
    rst = 1'b1;
    we1 = 0;
    we2 = 0;
    din1 = 0;
    din2 = 0;
    add1 = 0;
    add2 = 0;
    #10;
    
    rst = 1'b0; // Release reset
    #10;
    
    // First port write verification
    we1 = 1'b1;
    din1 = 8'ha2; add1 = 8'h00; #10;
    din1 = 8'h22; add1 = 8'h10; #10;
    din1 = 8'h32; add1 = 8'h20; #10;
    din1 = 8'h56; add1 = 8'h22; #10;
    din1 = 8'h42; add1 = 8'h34; #10;
    din1 = 8'h72; add1 = 8'h44; #10;
    
    // Disable write and read from memory
    we1 = 1'b0;
    add1 = 8'h00; #10;
    add1 = 8'h10; #10;
    add1 = 8'h20; #10;
    add1 = 8'h22; #10;
    add1 = 8'h34; #10;
    add1 = 8'h44; #10;
    
    // Second port write verification
    we2 = 1'b1;
    din2 = 8'ha2; add2 = 8'h00; #10;
    din2 = 8'h22; add2 = 8'h10; #10;
    din2 = 8'h32; add2 = 8'h20; #10;
    din2 = 8'h56; add2 = 8'h22; #10;
    din2 = 8'h42; add2 = 8'h34; #10;
    din2 = 8'h72; add2 = 8'h44; #10;
    
    // Disable write and read from memory
    we2 = 1'b0;
    add2 = 8'h00; #10;
    add2 = 8'h10; #10;
    add2 = 8'h20; #10;
    add2 = 8'h22; #10;
    add2 = 8'h34; #10;
    add2 = 8'h44; #10;

    #30;
    $finish;
end

endmodule
