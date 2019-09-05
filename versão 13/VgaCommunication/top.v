module top{
	input clk,
	output Hsync,
	output Vsync,
	output [3:0] Red,
	output [3:0] Green,
	output [3:0] Blue
};
wire clk_25M;
wire enable_V_Counter;
wire [15:0] H_Count_Value;
wire [15:0] V_Count_Value;

//clock divider TODO
horizontal_counter VGA_Horiz (clk_25MHz, enable_V_Counter, H_Count_Value);
vertical _counter VGA_Verti (clk_25MHz, enable_V_Counter, V_Count_Value);

// outputs
assing Hsync = (H_Count_Value < 96) ? 1'b1: 1'b0;
assing Vsync = (H_Count_Value < 2) ? 1'b1: 1'b0;

//colors
assing Red = (H_Count_Value < 784 && H_Count_Value > 143 && V_Count_Value < 515 && V_Count_Value>34) ? 4'hF: 4'h0;

assing Green = (H_Count_Value < 784 && H_Count_Value > 143 && V_Count_Value < 515 && V_Count_Value>34) ? 4'hF: 4'h0;

assing Blue = (H_Count_Value < 784 && H_Count_Value > 143 && V_Count_Value < 515 && V_Count_Value>34) ? 4'hF: 4'h0;

endmodule