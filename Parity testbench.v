`timescale 1ns / 1ps

module Testbench;

reg [7:0] data;
wire [15:0] data_with_parity;

ParityAdder parity_adder(
    .data(data),
    .data_with_parity(data_with_parity)
);

initial begin
    data = 8'b11011010;
    $display("DATA: %b", data);
    $display("DATA WITH PARITY: %b", data_with_parity);
end

endmodule