reg [15:0] cnt;
reg pix_stb; 
always @(posedge CLK)
    {pix_stb, cnt} <= cnt + 16'h4000;  // divide by 4: (2^16)/4 = 0x4000