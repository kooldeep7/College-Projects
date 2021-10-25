`timescale 1ns / 1ps
/****************************************************************************
 * File Name:  vga.v
 *
 * Created by Kuldeep Gohil      			
 *
 * purpose: To create the signals of the horizontal (h_sync), vertical
 *          sync (v_sync), and video on (vd_on) depending on the counts
 *          of the horizontal pixel and the vertical pixel.
 *
 *	In submitting this file for class work at CSULB I am confirming that 
 *	this is my work product. In the event other code sources are utilized
 *	I will document that code identifying the author. In submitting this 
 * work I acknowledge that plagiarism in student project work is subject
 *	to dismissal from the class
 ****************************************************************************/
module vga_sync(clk, rst, h_sync, v_sync, vd_on, v_count, h_count);
    
    // initialization of input
	input 		      clk, rst;
	
    // initialization of output
	output reg          	vd_on;
   output reg 	[9:0]  	v_count, h_count;	
   output wire          h_sync, v_sync;
    
    // initialization of regs and wires	 
	reg 			[1:0] 	count, d;
	wire 						h_end, v_end;
	
	
	//Adds 1 bit to reg d until flag is set by variable tick	
	always @ (*) begin
		if(tick) 	d = 2'b0;
		else	    	d = 2'b1 + count;
	end

	// this behavioral block sets count to reg d
	always @ (posedge clk or posedge rst) begin
		if(rst)		count <= 2'b0;
		else			count <= d;
	end

    // make 25 Mhz tick
    assign tick = (count == 3);
    
    // check when the counter for horizontal and vertical ends
    assign h_end = (h_count == 799);
    assign v_end = (v_count == 524);
    
    // assgin h sync and v sync
    assign h_sync = ~(h_count >= 656 && h_count <= 751);
    assign v_sync = ~(v_count >= 490 && v_count <= 491);
    
    // assert vd_on when v count is less than 480 and h count is less than 640
    always @(*) vd_on = ((v_count < 480) && (h_count < 640));
    

	//Adds 1 bit to reg h and v count until the flag is set 
	//by variable h and v count	
    always @(posedge clk or posedge rst) begin
        if(rst)	 		h_count <= 10'b0; else
        if(tick)begin
            if(h_end) 	h_count <= 10'b0;
            else		   h_count <= h_count + 10'b1;
        end
    end
    
    always @(posedge clk or posedge rst)begin
        if(rst) 				v_count <= 10'b0; else
        if( tick ) begin 
            if(h_end) begin
                if(v_end)  v_count <= 10'b0;
                else      	v_count <= v_count + 10'b1;
            end
        end
    end
endmodule