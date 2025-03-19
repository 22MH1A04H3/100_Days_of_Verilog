module vending_machine(
    input clk,
    input reset,
    input [1:0] in, // coins like five and ten rupees
    output reg out,
    output reg [1:0] c // remaining change will be given
);


  parameter  s0 = 2'b00;
  parameter  s1 = 2'b01;
    parameter s2 = 2'b10;


reg  [1:0]current_state, next_state;

always @(posedge clk or posedge reset) begin
    if (reset) begin
        out <= 1'b0;
        c <= 2'b00;
        current_state <= s0; // Initialize to s0
    end else begin
        current_state <= next_state; // Use non-blocking assignment
    end
end

always @(*) begin
    // Default values
    next_state = current_state; // Default to stay in the current state
    out = 1'b0; // Default output
    c = 2'b00; // Default change

    case (current_state)
        s0: begin
            if (in == 2'b01) begin
                next_state = s1;
            end else if (in == 2'b10) begin
                next_state = s2;
            end
        end

        s1: begin
            if (in == 2'b10) begin
                c = 2'b00;
                out = 1'b1;
                next_state = s0;
            end else begin
                c = 2'b01;
                next_state = s0;
            end
        end

        s2: begin
            if (in == 2'b01) begin
                c = 2'b00;
                out = 1'b1;
                next_state = s0;
            end else if (in == 2'b10) begin
                c = 2'b01;
                out = 1'b1;
                next_state = s0;
            end else begin
                c = 2'b10;
            end
        end

        default: begin
            next_state = s0;
            c = 2'b00;
            out = 1'b0;
        end
    endcase
end

endmodule
