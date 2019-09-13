
module microarquiteturaGp3 (
	buttons_export,
	clk_clk,
	lcd_read_write,
	lcd_register_select,
	lcd_enable_op,
	lcd_data_out,
	player_1_export,
	player_2_export,
	reset_reset_n,
	vga_monitor_vsync,
	vga_monitor_r,
	vga_monitor_g,
	vga_monitor_b,
	vga_monitor_hsync,
	vga_monitor_score_p1,
	vga_monitor_score_p2,
	vga_monitor_game_button,
	vga_monitor_up_left,
	vga_monitor_up_right,
	vga_monitor_down_left,
	vga_monitor_down_right);	

	input		buttons_export;
	input		clk_clk;
	output		lcd_read_write;
	output		lcd_register_select;
	output		lcd_enable_op;
	output	[7:0]	lcd_data_out;
	input	[2:0]	player_1_export;
	input	[2:0]	player_2_export;
	input		reset_reset_n;
	output		vga_monitor_vsync;
	output	[3:0]	vga_monitor_r;
	output	[3:0]	vga_monitor_g;
	output	[3:0]	vga_monitor_b;
	output		vga_monitor_hsync;
	output	[2:0]	vga_monitor_score_p1;
	output	[2:0]	vga_monitor_score_p2;
	input		vga_monitor_game_button;
	input		vga_monitor_up_left;
	input		vga_monitor_up_right;
	input		vga_monitor_down_left;
	input		vga_monitor_down_right;
endmodule
