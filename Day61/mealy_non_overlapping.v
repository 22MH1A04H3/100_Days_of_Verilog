module fsm(
  input din, clk, rst,
  output reg out
);

  // State declaration
  typedef enum logic[2:0] {s0=3'b000, s1=3'b001, s2=3'b010, s3=3'b011, s4=3'b100} state_t;

  state_t current_state, next_state;

  // State transition
  always @(posedge clk) begin
    if (rst)
      current_state <= s0;
    else
      current_state <= next_state;
  end

  // Output logic
  always @(posedge clk) begin
    case (next_state)
      s4: out <= 1;
      default: out <= 0;
    endcase
  end

  // Next state logic
  always @(*) begin
    case (current_state)
      s0: next_state = din ? s1 : s0;
      s1: next_state = din ? s2 : s0;
      s2: next_state = din ? s2 : s3;
      s3: next_state = din ? s1 : s4;
      s4: next_state = din ? s0 : s0;
      default: next_state = s0;
    endcase
  end

endmodule
