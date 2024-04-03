module counter(clk,rst_n,cnt);
input clk,rst_n;
output [3:0] cnt;

reg [3:0] cnt;

always @(posedge clk) begin
if(~rst_n)
    cnt=4'b0000;
else
    cnt=cnt+1;
end
endmodule
