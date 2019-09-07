	component microarquiteturaGp3 is
		port (
			bola_x_out_export     : out std_logic_vector(9 downto 0);                    -- export
			buttons_export        : in  std_logic_vector(3 downto 0) := (others => 'X'); -- export
			clk_clk               : in  std_logic                    := 'X';             -- clk
			lcd_read_write        : out std_logic;                                       -- read_write
			lcd_register_select   : out std_logic;                                       -- register_select
			lcd_enable_op         : out std_logic;                                       -- enable_op
			lcd_data_out          : out std_logic_vector(7 downto 0);                    -- data_out
			reset_reset_n         : in  std_logic                    := 'X';             -- reset_n
			vga_monitor_vsync     : out std_logic;                                       -- vsync
			vga_monitor_r         : out std_logic_vector(3 downto 0);                    -- r
			vga_monitor_g         : out std_logic_vector(3 downto 0);                    -- g
			vga_monitor_b         : out std_logic_vector(3 downto 0);                    -- b
			vga_monitor_hsync     : out std_logic;                                       -- hsync
			vga_monitor_bola_x    : in  std_logic_vector(9 downto 0) := (others => 'X'); -- bola_x
			vga_monitor_bola_y    : in  std_logic_vector(9 downto 0) := (others => 'X'); -- bola_y
			vga_monitor_barra_e_y : in  std_logic_vector(9 downto 0) := (others => 'X'); -- barra_e_y
			vga_monitor_barra_d_y : in  std_logic_vector(9 downto 0) := (others => 'X'); -- barra_d_y
			bola_y_out_export     : out std_logic_vector(9 downto 0);                    -- export
			barra_e_y_out_export  : out std_logic_vector(9 downto 0);                    -- export
			barra_d_y_out_export  : out std_logic_vector(9 downto 0)                     -- export
		);
	end component microarquiteturaGp3;

	u0 : component microarquiteturaGp3
		port map (
			bola_x_out_export     => CONNECTED_TO_bola_x_out_export,     --    bola_x_out.export
			buttons_export        => CONNECTED_TO_buttons_export,        --       buttons.export
			clk_clk               => CONNECTED_TO_clk_clk,               --           clk.clk
			lcd_read_write        => CONNECTED_TO_lcd_read_write,        --           lcd.read_write
			lcd_register_select   => CONNECTED_TO_lcd_register_select,   --              .register_select
			lcd_enable_op         => CONNECTED_TO_lcd_enable_op,         --              .enable_op
			lcd_data_out          => CONNECTED_TO_lcd_data_out,          --              .data_out
			reset_reset_n         => CONNECTED_TO_reset_reset_n,         --         reset.reset_n
			vga_monitor_vsync     => CONNECTED_TO_vga_monitor_vsync,     --   vga_monitor.vsync
			vga_monitor_r         => CONNECTED_TO_vga_monitor_r,         --              .r
			vga_monitor_g         => CONNECTED_TO_vga_monitor_g,         --              .g
			vga_monitor_b         => CONNECTED_TO_vga_monitor_b,         --              .b
			vga_monitor_hsync     => CONNECTED_TO_vga_monitor_hsync,     --              .hsync
			vga_monitor_bola_x    => CONNECTED_TO_vga_monitor_bola_x,    --              .bola_x
			vga_monitor_bola_y    => CONNECTED_TO_vga_monitor_bola_y,    --              .bola_y
			vga_monitor_barra_e_y => CONNECTED_TO_vga_monitor_barra_e_y, --              .barra_e_y
			vga_monitor_barra_d_y => CONNECTED_TO_vga_monitor_barra_d_y, --              .barra_d_y
			bola_y_out_export     => CONNECTED_TO_bola_y_out_export,     --    bola_y_out.export
			barra_e_y_out_export  => CONNECTED_TO_barra_e_y_out_export,  -- barra_e_y_out.export
			barra_d_y_out_export  => CONNECTED_TO_barra_d_y_out_export   -- barra_d_y_out.export
		);

