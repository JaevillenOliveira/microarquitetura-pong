
module microarquiteturaGp3 (
	buttons_export,
	clk_clk,
	lcd_read_write,
	lcd_register_select,
	lcd_enable_op,
	lcd_data_out,
	reset_reset_n,
	vga_monitor_vsync,
	vga_monitor_r,
	vga_monitor_g,
	vga_monitor_b,
	vga_monitor_hsync,
	vga_monitor_bola_x,
	vga_monitor_bola_y,
	vga_monitor_barra_e_y,
	vga_monitor_barra_d_y);	

	input	[3:0]	buttons_export;
	input		clk_clk;
	output		lcd_read_write;
	output		lcd_register_select;
	output		lcd_enable_op;
	output	[7:0]	lcd_data_out;
	input		reset_reset_n;
	output		vga_monitor_vsync;
	output	[3:0]	vga_monitor_r;
	output	[3:0]	vga_monitor_g;
	output	[3:0]	vga_monitor_b;
	output		vga_monitor_hsync;
	input	[9:0]	vga_monitor_bola_x;
	input	[9:0]	vga_monitor_bola_y;
	input	[9:0]	vga_monitor_barra_e_y;
	input	[9:0]	vga_monitor_barra_d_y;
endmodule
