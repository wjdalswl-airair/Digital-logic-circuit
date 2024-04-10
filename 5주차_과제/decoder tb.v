`timescale 1ns / 1ps
module decoder2x4_tb;

  reg [1:0] i;

  wire [3:0] d;

  decoder2x4 dut (
    .i(i),
    .d(d)
  );

  initial begin
    $monitor("Time=%0t, i=%b, d=%b", $time, i, d);
    
    i = 2'b00;
    #10;
    
    i = 2'b01;
    #10;
    
    i = 2'b10;
    #10;
    
    i = 2'b11;
    #10;
    
    i = 2'b10; 
    #10;
    
    $finish;
  end

endmodule


module decoder tb(
    input i,
    output d
    );
endmodule
