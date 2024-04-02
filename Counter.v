`timescale 1ns / 1ps

module BinaryCounter #(
    parameter NUM_BITS = 4
)(
    input wire clk,
    input wire reset,
    output reg [NUM_BITS-1:0] value
);

reg [NUM_BITS-1:0] max_value;

always @(*) begin
    max_value = (1 << NUM_BITS) - 1;
end

always @(posedge clk or posedge reset) begin
    if (reset) begin
        value <= 0;
    end else begin
        if (value == max_value) begin
            value <= 0;
        end else begin
            value <= value + 1;
        end
    end
end

endmodule