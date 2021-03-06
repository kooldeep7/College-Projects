`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/10/2018 11:55:51 AM
// Design Name: 
// Module Name: pixgen
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module pixgen(clk, reset, video_on, btn, pix_x, pix_y,graph_rgb);
	input clk , reset, video_on;
	input [1:0] btn;
	input [9:0] pix_x, pix_y;
	output reg [2:0] graph_rgb;
	
	//define the max pixel coordinates
	localparam MAX_X = 640;
	localparam MAX_Y = 480;
	
	//60 hz refresh wire
	wire refr_tick;
	
	//wall parameters
	localparam WALL_X_L = 32;
	localparam WALL_X_R = 35;
	
	//bar parameters
	localparam BAR_X_L = 600;
	localparam BAR_X_R = 603;
	
	//changing bar parameters
	wire [9:0] bar_y_t, bar_y_b;
	
	// size of bar
	localparam BAR_Y_SIZE = 72;
	
	reg [9:0] bar_y_reg, bar_y_next;
	
	localparam BAR_V = 4;
	
	//variables to define the square ball
	
	localparam BALL_SIZE =8;
	
	wire [9:0]  ball_x_l , ball_x_r;
	wire [9:0] ball_y_t, ball_y_b;
	wire [9:0] ball_x_next , ball_y_next;
	
	reg [9:0] ball_x_reg, ball_y_reg;
	reg [9:0] x_delta_reg, x_delta_next;
	reg [9:0] y_delta_reg, y_delta_next;
	
	localparam BALL_V_P = 2;
	localparam BALL_V_N = -2;
	
	//variables to define round ball 
	wire [2:0] rom_addr, rom_col;
    wire rom_bit;
    
	reg[7:0] rom_data;

	//output signals
	
	wire wall_on, bar_on, sq_ball_on, rd_ball_on;
	wire [2:0] wall_rgb, bar_rgb, ball_rgb;
	
	//round ball image
	always @(*)
        case(rom_addr)
            3'h0:	rom_data = 8'b00111100; //
            3'h1:	rom_data = 8'b01111110; //
            3'h2:	rom_data = 8'b11111111; //
            3'h3:	rom_data = 8'b11111111; //
            3'h4:	rom_data = 8'b11111111; //
            3'h5:	rom_data = 8'b11111111; //
            3'h6:	rom_data = 8'b01111110; //
            3'h7:	rom_data = 8'b00111100; //
        endcase
	//change and update the location of the ball 
	always @(posedge clk, posedge reset)
		if(reset)
            begin
                bar_y_reg <=0;
                ball_x_reg <=0;
                ball_y_reg <=0;
                x_delta_reg <= 10'h004;
                y_delta_reg <= 10'h004;
            end
		else
            begin
                bar_y_reg <= bar_y_next;
                ball_x_reg <= ball_x_next;
                ball_y_reg <= ball_y_next;
                x_delta_reg <= x_delta_next;
                y_delta_reg <= y_delta_next;
            end
	
	//create refresh signal
	assign refr_tick = (pix_y ==481) && (pix_x == 0);
	
	//define when the wall is on
	assign wall_on = (WALL_X_L <= pix_x) && (pix_x <= WALL_X_R);
	//wall color
	assign wall_rgb = 3'b001;
	//assign the values for bar
	assign bar_y_t = bar_y_reg;
	assign bar_y_b = bar_y_t + BAR_Y_SIZE -1;
	assign bar_on = ((BAR_X_L <= pix_x) && (pix_x <= BAR_X_R) && (bar_y_t <= pix_y) && (pix_y <= bar_y_b));
	//bar color			 
	assign bar_rgb = 3'b010;
	//update the location of the bar
	always @(*)
	   begin
            bar_y_next = bar_y_reg;
            if(refr_tick)
                if(btn[1] & (bar_y_b < (MAX_Y - 1 - BAR_V)))
                    bar_y_next = bar_y_reg + BAR_V;
                else if( btn[0] & (bar_y_t > BAR_V))
                    bar_y_next = bar_y_reg - BAR_V;
        end
	
	//square ball
	
	assign ball_x_l = ball_x_reg;
	assign ball_y_t = ball_y_reg;
	assign ball_x_r = ball_x_l + BALL_SIZE - 1;
	assign ball_y_b = ball_y_t + BALL_SIZE - 1;
	
	assign sq_ball_on =  ((ball_x_l <= pix_x) && (pix_x <= ball_x_r) && (ball_y_t <= pix_y) && (pix_y <= ball_y_b));
	
	assign rom_addr = pix_y[2:0] - ball_y_t[2:0];	
	assign rom_col = pix_x[2:0] - ball_x_l[2:0];
	assign rom_bit = rom_data[rom_col];
	
	assign rd_ball_on = sq_ball_on & rom_bit;
	
	assign ball_rgb = 3'b111;
	
	assign ball_x_next = (refr_tick) ? ball_x_reg + x_delta_reg: ball_x_reg;
	assign ball_y_next = (refr_tick) ? ball_y_reg + y_delta_reg: ball_y_reg;
	
	//update the ball movement
	always @(*)
        begin
            x_delta_next = x_delta_reg;
            y_delta_next = y_delta_reg;
            if(ball_y_t <1)
                y_delta_next = BALL_V_P;
            else if (ball_y_b > (MAX_Y -1))
                y_delta_next = BALL_V_N;
            else if (ball_x_l <= WALL_X_R)
                x_delta_next =BALL_V_P;
            else if ((BAR_X_L <= ball_x_r) && (ball_x_r <= BAR_X_R) && (bar_y_t <= ball_y_b) && (ball_y_t <= bar_y_b))
                x_delta_next = BALL_V_N;
        end
	//update the pixel colors
	always @(*)
		if(~video_on)
			graph_rgb = 3'b000;
		else
			if(wall_on)
				graph_rgb = wall_rgb;
			else if(bar_on)
				graph_rgb = bar_rgb;
			else if(rd_ball_on)
				graph_rgb = ball_rgb;
			else 
				graph_rgb = 3'b000;
	
	
endmodule
