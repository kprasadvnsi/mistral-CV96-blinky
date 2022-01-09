module top (led);

wire clk;
output led;

cyclonev_oscillator osc (
.oscena(0),
.clkout(clk)
);


reg [31:0] counter;
reg led_status;

initial begin
	counter <= 32'b0;
	led_status <= 1'b0;
end

always @ (posedge clk) 
begin
	counter <= counter + 1'b1;
	if (counter > 100000000)
	begin
		led_status <= !led_status;
		counter <= 32'b0;
	end
end

assign led = led_status;

endmodule 