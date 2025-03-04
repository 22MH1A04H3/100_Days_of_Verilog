module traffic(
    input in, clk, areset,
    output reg z
);
    parameter r = 2'b00, g = 2'b01, y = 2'b10;
    reg [1:0] current_state, next_state;

    // State transition
    always @(posedge clk or posedge areset) begin
        if (areset)
            current_state <= r;  // Reset to red state
        else
            current_state <= next_state;
    end

    // Next state logic
    always @(*) begin
        case (current_state)
            r: next_state = in ? g : r;
            g: next_state = in ? y : g;
            y: next_state = in ? r : y;
            default: next_state = r;
        endcase
    end

    // Output logic
    always @(*) begin
        case (current_state)
            r: z = 1'b0;
            g: z = 1'b0;
            y: z = 1'b1;
            default: z = 1'b0;
        endcase
    end
endmodule

