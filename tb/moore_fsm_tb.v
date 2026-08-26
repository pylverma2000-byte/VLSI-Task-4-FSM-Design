module moore_fsm_tb();
 reg clk;
 reg reset;
 wire [1:0] state;
 moore_fsm dut (
 .clk(clk),
 .reset(reset),
 .state(state) );
 always #5 clk = ~clk;
 initial begin
 clk = 0;
 reset = 1;
 #10;
 reset = 0;
 #60;
 $finish;
 end
initial begin
 $monitor ( "Time = %0t | Reset = %b | State = %b", $time, reset, state);
 end
endmodule
