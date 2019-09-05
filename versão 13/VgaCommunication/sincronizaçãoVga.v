module sicro(Clock, HSync, VSync, R, G, B, bola_x, bola_y, barra_e_y, barra_d_y);


//INPUTS
input Clock ;
input [9:0] bola_x;
input [9:0] bola_y;
input [9:0] barra_e_y;
input [9:0] barra_d_y;


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

reg clkr;


always @(posedge Clock)
begin
    clkr <= ~clkr;

end

reg [9:0] HPOS = 10'b0;

reg [9:0] VPOS = 10'b0;


//Sprites
reg [14:0] barra_e [0:79];			//Barra 100 por 15
reg [14:0] barra_d [0:79];			//Barra 100 por 15
reg [19:0] bola [0:19];			//Bola 20 por 10
reg [649:0] barra_si [0:5];			//Barra superior e inferior


//Pocição das Sprites
reg [9:0] barra_e_x = 0;
reg [9:0] barra_d_x = 630;
reg [9:0] barra_s_x = 0;       //Posição x da barra superior
reg [9:0] barra_s_y = 0;      //Posição y da barra superior
reg [9:0] barra_i_x = 0;       //Posição x da barra inferior
reg [9:0] barra_i_y = 474;     //Posição x da barra inferior



reg [9:0] y = 190;

//Tamanho das sprite
reg [9:0] largura_barra = 15;
reg [9:0] altura_barra = 80;
reg [9:0] tamanho_bola = 20;
reg [9:0] largura_barra_si = 650;
reg [9:0] altura_barra_si = 6;

always @(posedge clkr) begin

	  barra_e [0][14:0] <= 15'b111111111111111;
	  barra_e [1][14:0] <= 15'b111111111111111;
	  barra_e [2][14:0] <= 15'b111111111111111;
	  barra_e [3][14:0] <= 15'b111111111111111;
	  barra_e [4][14:0] <= 15'b111111111111111;
	  barra_e [5][14:0] <= 15'b111111111111111;
	  barra_e [6][14:0] <= 15'b111111111111111;
	  barra_e [7][14:0] <= 15'b111111111111111;
	  barra_e [8][14:0] <= 15'b111111111111111;
	  barra_e [9][14:0] <= 15'b111111111111111;
	  barra_e [10][14:0] <= 15'b111111111111111;
	  barra_e [11][14:0] <= 15'b111111111111111;
	  barra_e [12][14:0] <= 15'b111111111111111;
	  barra_e [13][14:0] <= 15'b111111111111111;
	  barra_e [14][14:0] <= 15'b111111111111111;
	  barra_e [15][14:0] <= 15'b111111111111111;
	  barra_e [16][14:0] <= 15'b111111111111111;
	  barra_e [17][14:0] <= 15'b111111111111111;
	  barra_e [18][14:0] <= 15'b111111111111111;
	  barra_e [19][14:0] <= 15'b111111111111111;
	  barra_e [20][14:0] <= 15'b111111111111111;
	  barra_e [21][14:0] <= 15'b111111111111111;
	  barra_e [22][14:0] <= 15'b111111111111111;
	  barra_e [23][14:0] <= 15'b111111111111111;
	  barra_e [24][14:0] <= 15'b111111111111111;
	  barra_e [25][14:0] <= 15'b111111111111111;
	  barra_e [26][14:0] <= 15'b111111111111111;
	  barra_e [27][14:0] <= 15'b111111111111111;
	  barra_e [28][14:0] <= 15'b111111111111111;
	  barra_e [29][14:0] <= 15'b111111111111111;
	  barra_e [30][14:0] <= 15'b111111111111111;
	  barra_e [31][14:0] <= 15'b111111111111111;
	  barra_e [32][14:0] <= 15'b111111111111111;
	  barra_e [33][14:0] <= 15'b111111111111111;
	  barra_e [34][14:0] <= 15'b111111111111111;
	  barra_e [35][14:0] <= 15'b111111111111111;
	  barra_e [36][14:0] <= 15'b111111111111111;
	  barra_e [37][14:0] <= 15'b111111111111111;
	  barra_e [38][14:0] <= 15'b111111111111111;
	  barra_e [39][14:0] <= 15'b111111111111111;
	  barra_e [40][14:0] <= 15'b111111111111111;
	  barra_e [41][14:0] <= 15'b111111111111111;
	  barra_e [42][14:0] <= 15'b111111111111111;
	  barra_e [43][14:0] <= 15'b111111111111111;
	  barra_e [44][14:0] <= 15'b111111111111111;
	  barra_e [45][14:0] <= 15'b111111111111111;
	  barra_e [46][14:0] <= 15'b111111111111111;
	  barra_e [47][14:0] <= 15'b111111111111111;
	  barra_e [48][14:0] <= 15'b111111111111111;
	  barra_e [49][14:0] <= 15'b111111111111111;
	  barra_e [50][14:0] <= 15'b111111111111111;
	  barra_e [51][14:0] <= 15'b111111111111111;
	  barra_e [52][14:0] <= 15'b111111111111111;
	  barra_e [53][14:0] <= 15'b111111111111111;
	  barra_e [54][14:0] <= 15'b111111111111111;
	  barra_e [55][14:0] <= 15'b111111111111111;
	  barra_e [56][14:0] <= 15'b111111111111111;
	  barra_e [57][14:0] <= 15'b111111111111111;
	  barra_e [58][14:0] <= 15'b111111111111111;
	  barra_e [59][14:0] <= 15'b111111111111111;
	  barra_e [60][14:0] <= 15'b111111111111111;
	  barra_e [61][14:0] <= 15'b111111111111111;
	  barra_e [62][14:0] <= 15'b111111111111111;
	  barra_e [63][14:0] <= 15'b111111111111111;
	  barra_e [64][14:0] <= 15'b111111111111111;
	  barra_e [65][14:0] <= 15'b111111111111111;
	  barra_e [66][14:0] <= 15'b111111111111111;
	  barra_e [67][14:0] <= 15'b111111111111111;
	  barra_e [68][14:0] <= 15'b111111111111111;
	  barra_e [69][14:0] <= 15'b111111111111111;
	  barra_e [70][14:0] <= 15'b111111111111111;
	  barra_e [71][14:0] <= 15'b111111111111111;
	  barra_e [72][14:0] <= 15'b111111111111111;
	  barra_e [73][14:0] <= 15'b111111111111111;
	  barra_e [74][14:0] <= 15'b111111111111111;
	  barra_e [75][14:0] <= 15'b111111111111111;
	  barra_e [76][14:0] <= 15'b111111111111111;
	  barra_e [77][14:0] <= 15'b111111111111111;
	  barra_e [78][14:0] <= 15'b111111111111111;
	  barra_e [79][14:0] <= 15'b111111111111111;


	  barra_d [0][14:0] <= 15'b111111111111111;
	  barra_d [1][14:0] <= 15'b111111111111111;
	  barra_d [2][14:0] <= 15'b111111111111111;
	  barra_d [3][14:0] <= 15'b111111111111111;
	  barra_d [4][14:0] <= 15'b111111111111111;
	  barra_d [5][14:0] <= 15'b111111111111111;
	  barra_d [6][14:0] <= 15'b111111111111111;
	  barra_d [7][14:0] <= 15'b111111111111111;
	  barra_d [8][14:0] <= 15'b111111111111111;
	  barra_d [9][14:0] <= 15'b111111111111111;
	  barra_d [10][14:0] <= 15'b111111111111111;
	  barra_d [11][14:0] <= 15'b111111111111111;
	  barra_d [12][14:0] <= 15'b111111111111111;
	  barra_d [13][14:0] <= 15'b111111111111111;
	  barra_d [14][14:0] <= 15'b111111111111111;
	  barra_d [15][14:0] <= 15'b111111111111111;
	  barra_d [16][14:0] <= 15'b111111111111111;
	  barra_d [17][14:0] <= 15'b111111111111111;
	  barra_d [18][14:0] <= 15'b111111111111111;
	  barra_d [19][14:0] <= 15'b111111111111111;
	  barra_d [20][14:0] <= 15'b111111111111111;
	  barra_d [21][14:0] <= 15'b111111111111111;
	  barra_d [22][14:0] <= 15'b111111111111111;
	  barra_d [23][14:0] <= 15'b111111111111111;
	  barra_d [24][14:0] <= 15'b111111111111111;
	  barra_d [25][14:0] <= 15'b111111111111111;
	  barra_d [26][14:0] <= 15'b111111111111111;
	  barra_d [27][14:0] <= 15'b111111111111111;
	  barra_d [28][14:0] <= 15'b111111111111111;
	  barra_d [29][14:0] <= 15'b111111111111111;
	  barra_d [30][14:0] <= 15'b111111111111111;
	  barra_d [31][14:0] <= 15'b111111111111111;
	  barra_d [32][14:0] <= 15'b111111111111111;
	  barra_d [33][14:0] <= 15'b111111111111111;
	  barra_d [34][14:0] <= 15'b111111111111111;
	  barra_d [35][14:0] <= 15'b111111111111111;
	  barra_d [36][14:0] <= 15'b111111111111111;
	  barra_d [37][14:0] <= 15'b111111111111111;
	  barra_d [38][14:0] <= 15'b111111111111111;
	  barra_d [39][14:0] <= 15'b111111111111111;
	  barra_d [40][14:0] <= 15'b111111111111111;
	  barra_d [41][14:0] <= 15'b111111111111111;
	  barra_d [42][14:0] <= 15'b111111111111111;
	  barra_d [43][14:0] <= 15'b111111111111111;
	  barra_d [44][14:0] <= 15'b111111111111111;
	  barra_d [45][14:0] <= 15'b111111111111111;
	  barra_d [46][14:0] <= 15'b111111111111111;
	  barra_d [47][14:0] <= 15'b111111111111111;
	  barra_d [48][14:0] <= 15'b111111111111111;
	  barra_d [49][14:0] <= 15'b111111111111111;
	  barra_d [50][14:0] <= 15'b111111111111111;
	  barra_d [51][14:0] <= 15'b111111111111111;
	  barra_d [52][14:0] <= 15'b111111111111111;
	  barra_d [53][14:0] <= 15'b111111111111111;
	  barra_d [54][14:0] <= 15'b111111111111111;
	  barra_d [55][14:0] <= 15'b111111111111111;
	  barra_d [56][14:0] <= 15'b111111111111111;
	  barra_d [57][14:0] <= 15'b111111111111111;
	  barra_d [58][14:0] <= 15'b111111111111111;
	  barra_d [59][14:0] <= 15'b111111111111111;
	  barra_d [60][14:0] <= 15'b111111111111111;
	  barra_d [61][14:0] <= 15'b111111111111111;
	  barra_d [62][14:0] <= 15'b111111111111111;
	  barra_d [63][14:0] <= 15'b111111111111111;
	  barra_d [64][14:0] <= 15'b111111111111111;
	  barra_d [65][14:0] <= 15'b111111111111111;
	  barra_d [66][14:0] <= 15'b111111111111111;
	  barra_d [67][14:0] <= 15'b111111111111111;
	  barra_d [68][14:0] <= 15'b111111111111111;
	  barra_d [69][14:0] <= 15'b111111111111111;
	  barra_d [70][14:0] <= 15'b111111111111111;
	  barra_d [71][14:0] <= 15'b111111111111111;
	  barra_d [72][14:0] <= 15'b111111111111111;
	  barra_d [73][14:0] <= 15'b111111111111111;
	  barra_d [74][14:0] <= 15'b111111111111111;
	  barra_d [75][14:0] <= 15'b111111111111111;
	  barra_d [76][14:0] <= 15'b111111111111111;
	  barra_d [77][14:0] <= 15'b111111111111111;
	  barra_d [78][14:0] <= 15'b111111111111111;
	  barra_d [79][14:0] <= 15'b111111111111111;


	bola [0] [19: 0] <= 20'b00000000000000000000;
	bola [1] [19: 0] <= 20'b00000001111100000000;
	bola [2] [19: 0] <= 20'b00000111111111000000;
	bola [3] [19: 0] <= 20'b00011111111111110000;
	bola [4] [19: 0] <= 20'b00111111111111111000;
	bola [5] [19: 0] <= 20'b00111111111111111000;
	bola [6] [19: 0] <= 20'b01111111111111111100;
	bola [7] [19: 0] <= 20'b01111111111111111100;
	bola [8] [19: 0] <= 20'b11111111111111111110;
	bola [9] [19: 0] <= 20'b11111111111111111110;
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

    if((HPOS >= barra_e_x && HPOS <= barra_e_x + largura_barra ) &&  (VPOS >=  barra_e_y && VPOS <=  barra_e_y + altura_barra))
    	begin
    		if(barra_e[HPOS - barra_e_x][VPOS -  barra_e_y] == 1)
    			begin

    				R <= 4'b1111;
            	G <= 4'b1111;
            	B <= 4'b1111;

    			end

 		end


    if((HPOS >= barra_d_x && HPOS <= barra_d_x + largura_barra ) &&  (VPOS >=  barra_d_y && VPOS <=  barra_d_y + altura_barra))
    	begin
    		if(barra_d[HPOS - barra_d_x][VPOS -  barra_d_y] == 1)
    			begin

    				R <= 4'b1111;
            	G <= 4'b1111;
            	B <= 4'b1111;

    			end
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



end
endmodule
