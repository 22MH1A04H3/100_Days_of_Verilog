module name(
    input wire [5:0]a, // Six input signals
    output wire y                 // Single output
);
    
    // Example logic: Majority function (y = 1 if 3 or more inputs are 1)
    assign y = a[0]|a[1]|a[2]|a[3]|a[4]|a[5];
    
endmodule
