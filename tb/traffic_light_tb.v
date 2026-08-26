module traffic_light_tb;
 reg clk;
 reg reset;
 wire red;
 wire yellow;
 wire green;
 traffic_light dut (
 .clk(clk),
 .reset(reset),
 .red(red),
 .yellow(yellow),
 .green(green) );
 always #5 clk = ~clk;
 initial begin
 clk = 0;
 reset = 1;
 #10 reset = 0;

 #60;
 $finish;
 end
 initial begin
 $monitor ( "Time=%0t Reset=%b Red=%b Yellow=%b Green=%b",
 $time, reset, red, yellow, green);
 end
 endmodule
