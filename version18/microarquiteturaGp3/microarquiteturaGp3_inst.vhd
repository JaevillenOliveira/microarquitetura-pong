	component microarquiteturaGp3 is
		port (
			buttons_export          : in  std_logic                    := 'X';             -- export
			clk_clk                 : in  std_logic                    := 'X';             -- clk
			lcd_read_write          : out std_logic;                                       -- read_write
			lcd_register_select     : out std_logic;                                       -- register_select
			lcd_enable_op           : out std_logic;                                       -- enable_op
			lcd_data_out            : out std_logic_vector(7 downto 0);                    -- data_out
			player_1_export         : in  std_logic_vector(2 downto 0) := (others => 'X'); -- export
			player_2_export         : in  std_logic_vector(2 downto 0) := (others => 'X'); -- export
			reset_reset_n           : in  std_logic                    := 'X';             -- reset_n
			vga_monitor_vsync       : out std_logic;                                       -- vsync
			vga_monitor_r           : out std_logic_vector(3 downto 0);                    -- r
			vga_monitor_g           : out std_logic_vector(3 downto 0);                    -- g
			vga_monitor_b           : out std_logic_vector(3 downto 0);                    -- b
			vga_monitor_hsync       : out std_logic;                                       -- hsync
			vga_monitor_score_p1    : out std_logic_vector(2 downto 0);                    -- score_p1
			vga_monitor_score_p2    : out std_logic_vector(2 downto 0);                    -- score_p2
			vga_monitor_game_button : in  std_logic                    := 'X';             -- game_button
			vga_monitor_up_left     : in  std_logic                    := 'X';             -- up_left
			vga_monitor_up_right    : in  std_logic                    := 'X';             -- up_right
			vga_monitor_down_left   : in  std_logic                    := 'X';             -- down_left
			vga_monitor_down_right  : in  std_logic                    := 'X'              -- down_right
		);
	end component microarquiteturaGp3;

	u0 : component microarquiteturaGp3
		port map (
			buttons_export          => CONNECTED_TO_buttons_export,          --     buttons.export
			clk_clk                 => CONNECTED_TO_clk_clk,                 --         clk.clk
			lcd_read_write          => CONNECTED_TO_lcd_read_write,          --         lcd.read_write
			lcd_register_select     => CONNECTED_TO_lcd_register_select,     --            .register_select
			lcd_enable_op           => CONNECTED_TO_lcd_enable_op,           --            .enable_op
			lcd_data_out            => CONNECTED_TO_lcd_data_out,            --            .data_out
			player_1_export         => CONNECTED_TO_player_1_export,         --    player_1.export
			player_2_export         => CONNECTED_TO_player_2_export,         --    player_2.export
			reset_reset_n           => CONNECTED_TO_reset_reset_n,           --       reset.reset_n
			vga_monitor_vsync       => CONNECTED_TO_vga_monitor_vsync,       -- vga_monitor.vsync
			vga_monitor_r           => CONNECTED_TO_vga_monitor_r,           --            .r
			vga_monitor_g           => CONNECTED_TO_vga_monitor_g,           --            .g
			vga_monitor_b           => CONNECTED_TO_vga_monitor_b,           --            .b
			vga_monitor_hsync       => CONNECTED_TO_vga_monitor_hsync,       --            .hsync
			vga_monitor_score_p1    => CONNECTED_TO_vga_monitor_score_p1,    --            .score_p1
			vga_monitor_score_p2    => CONNECTED_TO_vga_monitor_score_p2,    --            .score_p2
			vga_monitor_game_button => CONNECTED_TO_vga_monitor_game_button, --            .game_button
			vga_monitor_up_left     => CONNECTED_TO_vga_monitor_up_left,     --            .up_left
			vga_monitor_up_right    => CONNECTED_TO_vga_monitor_up_right,    --            .up_right
			vga_monitor_down_left   => CONNECTED_TO_vga_monitor_down_left,   --            .down_left
			vga_monitor_down_right  => CONNECTED_TO_vga_monitor_down_right   --            .down_right
		);

