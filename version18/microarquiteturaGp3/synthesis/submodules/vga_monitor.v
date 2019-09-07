module vga_monitor(Clock, HSync, VSync, R, G, B);

//INPUTS
input Clock ;


//OUTPUTS
output reg HSync;
output reg VSync;
output reg [3:0] R;
output reg [3:0] G;
output reg [3:0] B;

//HORIZONTAL TIMING CONSTANTS
localparam hva=640; //visible area
localparam hfp=16; //front porch
localparam hsp=96; //sync pulse
localparam hbp=48; //front porch

//HORIZONTAL TIMING CONSTANTS
localparam vva=480; //visible area
localparam vfp=10; //front porch
localparam vsp=2; //sync pulse
localparam vbp=32; //front porch

localparam H_SIZE=10; // raio da bola
localparam IX_DIR=1;  
localparam IY_DIR=1;
localparam IX=320;
localparam IY=240;

reg clkr;

always @(posedge Clock)
begin
    clkr <= ~clkr;
end

reg [15:0] cnt = 0;
reg pix_stb = 0;

always @(posedge Clock)
    {pix_stb, cnt} <= cnt + 16'h8000;  // divide by 4: (2^16)/4 = 0x4000


reg [9:0] HPOS = 10'b0;
reg [9:0] VPOS = 10'b0;

//Sprites
reg [14:0] barra_e [0:79];			//Barra 100 por 15
reg [14:0] barra_d [0:79];			//Barra 100 por 15
reg [19:0] bola [0:19];			//Bola 20 por 10
reg [649:0] barra_si [0:5];			//Barra superior e inferior

//Posição das Sprites
reg [9:0] barra_e_x = 0;
reg [9:0] barra_d_x = 630;
reg [9:0] barra_s_x = 0;       //Posição x da barra superior
reg [9:0] barra_s_y = 0;      //Posição y da barra superior
reg [9:0] barra_i_x = 0;       //Posição x da barra inferior
reg [9:0] barra_i_y = 474;     //Posição x da barra inferior

reg x_dir = IX_DIR;
reg y_dir = IY_DIR;

reg [9:0] bola_x = IX;
reg [9:0] bola_y = IY;
reg [9:0] barra_e_y = 200;
reg [9:0] barra_d_y = 200;

//Tamanho das sprite
reg [9:0] largura_barra = 15;
reg [9:0] altura_barra = 80;
reg [9:0] tamanho_bola = 20;
reg [9:0] largura_barra_si = 650;
reg [9:0] altura_barra_si = 6;

always @(posedge clkr) begin

	bola [0] [19: 0]  <= 20'b00000000000000000000;
	bola [1] [19: 0]  <= 20'b00000001111100000000;
	bola [2] [19: 0]  <= 20'b00000111111111000000;
	bola [3] [19: 0]  <= 20'b00011111111111110000;
	bola [4] [19: 0]  <= 20'b00111111111111111000;
	bola [5] [19: 0]  <= 20'b00111111111111111000;
	bola [6] [19: 0]  <= 20'b01111111111111111100;
	bola [7] [19: 0]  <= 20'b01111111111111111100;
	bola [8] [19: 0]  <= 20'b11111111111111111110;
	bola [9] [19: 0]  <= 20'b11111111111111111110;
	bola [10] [19: 0] <= 20'b11111111111111111110;
	bola [11] [19: 0] <= 20'b11111111111111111110;
	bola [12] [19: 0] <= 20'b11111111111111111110;
	bola [13] [19: 0] <= 20'b01111111111111111100;
	bola [14] [19: 0] <= 20'b01111111111111111100;
	bola [15] [19: 0] <= 20'b00111111111111111000;
	bola [16] [19: 0] <= 20'b00111111111111111000;
	bola [17] [19: 0] <= 20'b00011111111111110000;
	bola [18] [19: 0] <= 20'b00000111111111000000;
	bola [19] [19: 0] <= 20'b00000001111100000000;


//<Contador>
    if( HPOS < (hva+hfp+hsp+hbp) )
        HPOS <= HPOS + 1;
    else
        begin
            HPOS <= 1'b0;
            if(VPOS < (vva+vfp+vsp+vbp))
                VPOS <= VPOS + 1;
            else
                VPOS <= 1'b0;
        end

//</Contador>

//<Parte que não vamos alterar porque não sabemos o que faz>

    if(HPOS > (hva+hfp) && HPOS < (hva+hfp+hsp))
        HSync <= 1'b1;
    else
        HSync <= 1'b0;

    if(VPOS > (vva+vfp) && VPOS < (vva+vfp+vsp))
        VSync <= 1'b1;
    else
        VSync <= 1'b0;

//</Parte que não vamos alterar porque não sabemos o que faz>


    if((HPOS > hva) || (VPOS > vva))
        begin
            R <= 1'b0;
            G <= 1'b0;
            B <= 1'b0;
        end
    else
        begin
            R <= 4'b0000;
            G <= 4'b0000;
            B <= 4'b0000;
        end

    if((HPOS >= barra_e_x && HPOS <= barra_e_x + largura_barra ) && (VPOS >=  barra_e_y && VPOS <=  barra_e_y + altura_barra))
    	begin
			R <= 4'b1111;
    		G <= 4'b1111;
    		B <= 4'b1111;
 		end


    if((HPOS >= barra_d_x && HPOS <= barra_d_x + largura_barra ) &&  (VPOS >=  barra_d_y && VPOS <=  barra_d_y + altura_barra))
    	begin
    			R <= 4'b1111;
            	G <= 4'b1111;
            	B <= 4'b1111;
    	end

	if((HPOS >= bola_x && HPOS < bola_x + tamanho_bola ) &&  (VPOS >= bola_y && VPOS < bola_y + tamanho_bola))
		begin
			if(bola[HPOS - bola_x][VPOS - bola_y] == 1)
				begin

	    			R <= 4'b1111;
	            	G <= 4'b1111;
	            	B <= 4'b1111;

				end
		end

    if((HPOS >= barra_s_x && HPOS < barra_s_x + largura_barra_si ) &&  (VPOS >= barra_s_y && VPOS < barra_s_y + altura_barra_si))
       	begin
			R <= 4'b1111;
            G <= 4'b1111;
            B <= 4'b1111;
       	end

    if((HPOS >= barra_i_x && HPOS < barra_i_x + largura_barra_si ) &&  (VPOS >= barra_i_y && VPOS < barra_i_y + altura_barra_si))
     	begin
     		R <= 4'b1111;
            G <= 4'b1111;
            B <= 4'b1111;
     	end

    if (pix_stb)
    	begin
		    bola_x <= (x_dir) ? bola_x + 1 : bola_x - 1;  // move left if positive x_dir
		    bola_y <= (y_dir) ? bola_y + 1 : bola_y - 1;  // move down if positive y_dir

		    if (bola_x <= H_SIZE + 1)  // edge of square is at left of screen
		        x_dir <= 1;  // change direction to right
		    if (bola_x >= (hva - H_SIZE - 1))  // edge of square at right
		        x_dir <= 0;  // change direction to left          
		    if (bola_y <= H_SIZE + 1)  // edge of square at top of screen
		        y_dir <= 1;  // change direction to down
		    if (bola_y >= (vva - H_SIZE - 1))  // edge of square at bottom
		        y_dir <= 0;  // change direction to up
		end

end
endmodule
