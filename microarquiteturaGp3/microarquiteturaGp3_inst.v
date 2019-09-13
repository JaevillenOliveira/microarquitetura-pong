	microarquiteturaGp3 u0 (
		.buttons_export          (<connected-to-buttons_export>),          //     buttons.export
		.clk_clk                 (<connected-to-clk_clk>),                 //         clk.clk
		.lcd_read_write          (<connected-to-lcd_read_write>),          //         lcd.read_write
		.lcd_register_select     (<connected-to-lcd_register_select>),     //            .register_select
		.lcd_enable_op           (<connected-to-lcd_enable_op>),           //            .enable_op
		.lcd_data_out            (<connected-to-lcd_data_out>),            //            .data_out
		.player_1_export         (<connected-to-player_1_export>),         //    player_1.export
		.player_2_export         (<connected-to-player_2_export>),         //    player_2.export
		.reset_reset_n           (<connected-to-reset_reset_n>),           //       reset.reset_n
		.vga_monitor_vsync       (<connected-to-vga_monitor_vsync>),       // vga_monitor.vsync
		.vga_monitor_r           (<connected-to-vga_monitor_r>),           //            .r
		.vga_monitor_g           (<connected-to-vga_monitor_g>),           //            .g
		.vga_monitor_b           (<connected-to-vga_monitor_b>),           //            .b
		.vga_monitor_hsync       (<connected-to-vga_monitor_hsync>),       //            .hsync
		.vga_monitor_score_p1    (<connected-to-vga_monitor_score_p1>),    //            .score_p1
		.vga_monitor_score_p2    (<connected-to-vga_monitor_score_p2>),    //            .score_p2
		.vga_monitor_game_button (<connected-to-vga_monitor_game_button>), //            .game_button
		.vga_monitor_up_left     (<connected-to-vga_monitor_up_left>),     //            .up_left
		.vga_monitor_up_right    (<connected-to-vga_monitor_up_right>),    //            .up_right
		.vga_monitor_down_left   (<connected-to-vga_monitor_down_left>),   //            .down_left
		.vga_monitor_down_right  (<connected-to-vga_monitor_down_right>)   //            .down_right
	);

