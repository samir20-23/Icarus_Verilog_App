module test;
  reg clk, rst;
  wire [1:0] count;

  counter uut (count, clk, rst);

  initial begin
    $monitor("Time: %0t, Reset: %b, Count: %b", $time, rst, count);
    
    clk = 0; rst = 1; #5;
    rst = 0; #5;

    repeat(5) begin
      clk = 1; #5;
      clk = 0; #5;
    end

    $finish;
  end
endmodule
