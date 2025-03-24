module lemmings(
    input clk,
    input areset,    // Freshly brainwashed Lemmings walk left.
    input bump_left,
    input bump_right,
    input ground,
    input dig,
    output walk_left,
    output walk_right,
    output aaah,
    output digging
); 
   parameter l   = 3'b000, 
          r   = 3'b001, 
          f_l = 3'b010, 
          f_r = 3'b011, 
          d_l = 3'b100, 
          d_r = 3'b101;


reg[2:0] current_state, next_state;


    // State transition logic
    always @(posedge clk or posedge areset) begin
        if (areset)
            current_state <= l;  // Reset to walking left
        else
            current_state <= next_state;  // Transition to next state
    end

    // Next state logic
    always @(*) begin
        case (current_state)
            l: begin
                if (~ground)
                    next_state = f_l;  // Fall left if not on ground
                else if (dig)
                    next_state = d_l;  // Start digging left
                else if (bump_left)
                    next_state = r;    // Bump left, walk right
                else
                    next_state = l;    // Continue walking left
            end
            r: begin
                if (~ground)
                    next_state = f_r;  // Fall right if not on ground
                else if (dig)
                    next_state = d_r;  // Start digging right
                else if (bump_right)
                    next_state = l;    // Bump right, walk left
                else
                    next_state = r;    // Continue walking right
            end
            f_l: begin
                if (ground)
                    next_state = l;    // If on ground, walk left
                else
                    next_state = f_l;  // Continue falling left
            end
            f_r: begin
                if (ground)
                    next_state = r;    // If on ground, walk right
                else
                    next_state = f_r;  // Continue falling right
            end
            d_l: begin
                if (ground)
                    next_state = d_l;  // Continue digging left if on ground
                else
                    next_state = f_l;  // If not on ground, fall left
            end
            d_r: begin
                if (ground)
                    next_state = d_r;  // Continue digging right if on ground
                else
                    next_state = f_r;  // If not on ground, fall right
            end
            default: next_state = l;  // Default to walking left for undefined states
        endcase
    end

    // Output logic
    assign walk_left = (current_state == l);
    assign walk_right = (current_state == r);
    assign aaah = (current_state == f_l) || (current_state == f_r);  // Falling states
    assign digging = (current_state == d_l) || (current_state == d_r);  // Digging states
endmodule
