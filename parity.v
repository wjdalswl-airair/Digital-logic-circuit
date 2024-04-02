`timescale 1ns / 1ps

module ParityCalculator (
    input wire [7:0] byte,
    output reg parity_bit
);

always @(*) begin
    integer count;
    count = 0;
    for (int i = 0; i < 8; i = i + 1) begin
        if (byte[i] == 1'b1) begin
            count = count + 1;
        end
    end
    if (count % 2 == 0) begin
        parity_bit = 1'b0;
    end else begin
        parity_bit = 1'b1;
    end
end

endmodule

module ParityAdder (
    input wire [7:0] data,
    output reg [15:0] data_with_parity
);

reg [7:0] parity;
wire parity_bit;

ParityCalculator parity_calculator(
    .byte(data),
    .parity_bit(parity_bit)
);

always @(*) begin
    data_with_parity = {data, parity};
end

endmodule
