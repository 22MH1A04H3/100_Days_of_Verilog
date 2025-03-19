

module tb_vending_machine;

    
    reg clk;
    reg reset;
    reg [1:0] in; // coins input
    wire out;     // output signal
    wire [1:0] c; // remaining change

    // Instantiate the vending machine
    vending_machine uut (
        .clk(clk),
        .reset(reset),
        .in(in),
        .out(out),
        .c(c)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 10 time units clock period
    end

    // Test sequence
    initial begin
        // Initialize inputs
        reset = 1;
        in = 2'b00;
        #10; // Wait for a clock cycle

        // Release reset
        reset = 0;
        #10;

        // Test case 1: Insert 5 rupees
        in = 2'b01; // 5 rupees
        #10;

        // Test case 2: Insert 10 rupees
        in = 2'b10; // 10 rupees
        #10;

        // Test case 3: Insert 5 rupees again
        in = 2'b01; // 5 rupees
        #10;

        // Test case 4: Insert 10 rupees
        in = 2'b10; // 10 rupees
        #10;

        // Test case 5: Insert invalid coin (no coin)
        in = 2'b00; // No coin
        #10;

        // Test case 6: Reset the machine
        reset = 1;
        #10;
        reset = 0;
        #10;

        // Test case 7: Insert 5 rupees after reset
        in = 2'b01; // 5 rupees
        #10;

        // Test case 8: Insert 10 rupees
        in = 2'b10; // 10 rupees
        #10;

        // End simulation
        $finish;
    end

  

endmodule
