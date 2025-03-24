module lemmings_tb;
    reg clk;
    reg areset;
    reg bump_left;
    reg bump_right;
    reg ground;
    reg dig;
    wire walk_left;
    wire walk_right;
    wire aaah;
    wire digging;

    // Instantiate the DUT (Device Under Test)
    lemmings uut (
        .clk(clk),
        .areset(areset),
        .bump_left(bump_left),
        .bump_right(bump_right),
        .ground(ground),
        .dig(dig),
        .walk_left(walk_left),
        .walk_right(walk_right),
        .aaah(aaah),
        .digging(digging)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin
        // Initialize inputs
        clk = 0;
        areset = 1;
        bump_left = 0;
        bump_right = 0;
        ground = 1;
        dig = 0;
        #10;

        areset = 0; // Release reset
        #20;
        
        // Test case: Walk left normally
        #50;
        bump_left = 1; // Simulate bump into left wall
        #10;
        bump_left = 0;
        
        // Test case: Walk right normally
        #50;
        bump_right = 1; // Simulate bump into right wall
        #10;
        bump_right = 0;

        // Test case: Falling when ground disappears
        #50;
        ground = 0;
        #30;
        ground = 1;
        
        // Test case: Digging
        #50;
        dig = 1;
        #20;
        dig = 0;
        
        // More test cases can be added here
        
        #100;
        $stop;
    end
endmodule
