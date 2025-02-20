module counter (output reg [1:0] count, input clk, input rst);
  always @(posedge clk or posedge rst) begin
    if (rst) count <= 0;
    else count <= count + 1;
  end
endmodule
