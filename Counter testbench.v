`timescale 1ns / 1ps

module BinaryCounter_tb;

    parameter NUM_BITS = 4;
    
    reg clk;
    reg reset;
    
    wire [NUM_BITS-1:0] count_value;
    
    BinaryCounter #(
        .NUM_BITS(NUM_BITS)
    ) counter_inst (
        .clk(clk),
        .reset(reset),
        .value(count_value)
    );
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        reset = 1;
        #10 reset = 0;
    end
    
    always @(posedge clk) begin
        $display("Counter: %b", count_value);
    end
    
    initial begin
        #50 $finish;
    end

endmodule