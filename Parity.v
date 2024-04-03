module parity(
    input a, b, c,
    output F
);
    assign F = ~(a&b) & ~c;
endmodule
