`timescale 1ns / 1ps
/****************************************************************************
 * File Name:  pixel_gen.v
 *
 * Created by Kuldeep Gohil      			
 *
 * purpose: To create the objects ball, bar, and wall and to create their
 *	functionality with each other.
 *          
 *	In submitting this file for class work at CSULB I am confirming that 
 *	this is my work product. In the event other code sources are utilized
 *	I will document that code identifying the author. In submitting this 
 * work I acknowledge that plagiarism in student project work is subject
 *	to dismissal from the class      
 ****************************************************************************/
module pixel_gen( pixel_x, pixel_y, vd_on, rst, clk, btn, rgb);

    input wire 	[9:0] 	pixel_x, pixel_y;
    input wire 				vd_on;
    input 						rst, clk;
    input 			[1:0] 	btn;
    output reg 	[2:0]	 	rgb;
    
    //define the max pixel coordinates
    localparam MAX_X = 640;
    localparam MAX_Y = 480;
        
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
    
	 //[Requirement 5]
    localparam BAR_V = 4; 
    
    //variables to define the square ball
    
    localparam BALL_SIZE = 8;
    
    wire [9:0]  ball_x_l , ball_x_r;
    wire [9:0] ball_y_t, ball_y_b;
    wire [9:0] ball_x_next , ball_y_next;
    
    reg [9:0] ball_x_reg, ball_y_reg;
    reg [9:0] x_delta_reg, x_delta_next;
    reg [9:0] y_delta_reg, y_delta_next;
    
    wire wall_on, bar_on, ball_on;
    wire [2:0] wall_rgb, bar_rgb, ball_rgb;
        
        
    localparam BALL_V_P = 2;
    localparam BALL_V_N = -2;
    
    // refresh every 60 hz [Requirement 1]
    wire ref_tick;
    
    assign ref_tick = (pixel_y == 481) && (pixel_x == 0); 
	 
    //===== W A L L =====
	 
    // create wall on the left side four pixels wide
    assign wall_on = (WALL_X_L <= pixel_x) &&  (pixel_x <= WALL_X_R);
    
    // color wall magenta
    assign wall_rgb = 3'b101;
    
    //===== B A R =====
	 
    // color of bar to cyan
    assign bar_rgb = 3'b011;
	 
	 //[Requirement 2 and 3]
    assign bar_y_t = bar_y_reg;
    assign bar_y_b = bar_y_t + BAR_Y_SIZE -1;
    assign bar_on = ((BAR_X_L <= pixel_x) && (pixel_x <= BAR_X_R) 
                  && (bar_y_t <= pixel_y) && (pixel_y <= bar_y_b));
						
    // new bar position
	 
	 //[Requirement 4 and 6]
    always @ (*) begin
        bar_y_next = bar_y_reg; 
        if(ref_tick) begin
            if(btn[1] & (bar_y_b < (MAX_Y - 1 - BAR_V)))
                bar_y_next = bar_y_reg + BAR_V;
            else if( btn[0] & (bar_y_t > BAR_V))
                bar_y_next = bar_y_reg - BAR_V;
        end
    end
	 
    //===== B A L L ===== 
	 
    // create the ball [Requirement 8]
	assign ball_x_l = ball_x_reg;
    assign ball_y_t = ball_y_reg;
    assign ball_x_r = ball_x_l + BALL_SIZE - 1;
    assign ball_y_b = ball_y_t + BALL_SIZE - 1;
    
    // create square ball
    assign ball_on = ((ball_x_l <= pixel_x) && (pixel_x <= ball_x_r) && 
                      (ball_y_t <= pixel_y) && (pixel_y <= ball_y_b));

    // new ball position [Requirement 7]
    assign ball_x_next = (ref_tick) ? ball_x_reg + x_delta_reg: ball_x_reg;
    assign ball_y_next = (ref_tick) ? ball_y_reg + y_delta_reg: ball_y_reg;
    
    // new ball velocity [Requirement 9, 10, and 11]
    always @ (*) begin
        x_delta_next = x_delta_reg;
        y_delta_next = y_delta_reg;
        if(ball_y_t <1)
            y_delta_next = BALL_V_P;
        else if (ball_y_b > (MAX_Y -1))
            y_delta_next = BALL_V_N;
        else if (ball_x_l <= WALL_X_R)
            x_delta_next = BALL_V_P;
        else if ((BAR_X_L <= ball_x_r) && (ball_x_r <= BAR_X_R) && 
                 (bar_y_t <= ball_y_b) && (ball_y_t <= bar_y_b))
            x_delta_next = BALL_V_N;
    end
    
    //color of ball to yellow
    assign ball_rgb = 3'b110;              
    
    // procedural block, assigning reg to next reg
    always @(posedge clk or posedge rst) begin
        if(rst) begin
            bar_y_reg <= 0;
            ball_x_reg <= 0;
            ball_y_reg <= 0;
            x_delta_reg <= 10'h004;
            y_delta_reg <= 10'h004;
        end 
		  
        else begin
            bar_y_reg <= bar_y_next;
            ball_x_reg <= ball_x_next;
            ball_y_reg <= ball_y_next;
            x_delta_reg <= x_delta_next;
            y_delta_reg <= y_delta_next;
        end 
    end 
    
    always @ (*) begin
	 
        // set the rgb to blank when the video is not on
        if(~vd_on) rgb = 3'b000;
        else begin
            if(bar_on) rgb = bar_rgb;
            else if(ball_on) rgb = ball_rgb;
            else if(wall_on) rgb = wall_rgb;
				
            // set rgb to 0 to show black
            else rgb = 3'b000;
        end 
    end 
endmodule