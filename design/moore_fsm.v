module moore_fsm(
 input clk,
 input reset,
 output reg [1:0]state );

 parameter S0 = 2'b00;
 parameter S1 = 2'b01;
parameter S2 = 2'b10;

 always@(posedge clk)
begin
 if(reset)
 state <= S0;
 else
 S0 <= S1;
 S1 <= S2;
 S2 <= S0;
 default state : S0;
 end
endmodule
