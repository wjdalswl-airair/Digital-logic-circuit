`timescale 1ns/1ps
module counter_tb;
reg clk,rst_n;
wire [3:0] cnt;

counter counter_inst(.clk(clk),.rst_n(rst_n),.cnt(cnt));

initial begin
    clk=0; rst_n=1;
    #10
    rst_n=0;
    #10
    rst_n=1;    //초기화
    #200
    rst_n=0;
    #10
    rst_n=1;    //reset 동작확인
    #10
    $finish;
end
always #5 clk = ~clk;

initial begin
    $monitor("시간 = %t, output cnt = %d", $time, cnt);
end
endmodule
