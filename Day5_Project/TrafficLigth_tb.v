
module traffic_tb;

    // Inputs
    reg clk;
    reg areset;
    reg in;

    // Outputs
    wire z;

    // Instantiate the traffic module
    traffic uut (
        .clk(clk),
        .areset(areset),
        .in(in),
        .z(z)
    );

    // Clock generation
    always #5 clk = ~clk;  // 10ns clock period (5ns high, 5ns low)

    initial begin
        // Initialize inputs
        clk = 0;
        areset = 1;  // Apply reset
        in = 0;

        #10 areset = 0;  // Deassert reset

        #10 in = 1;  // Move from Red to Green
        #10 in = 1;  // Move from Green to Yellow
        #10 in = 1;  // Move from Yellow to Red
        #10 in = 0;  // Stay in Red

        #20 $finish;  // End simulation
    end

    // Monitor changes
    initial begin
        $monitor("Time = %0t | Reset = %b | in = %b | z = %b", 
                  $time, areset, in, z);
    end

endmodule
