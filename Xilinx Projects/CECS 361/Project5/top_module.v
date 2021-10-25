`timescale 1ns / 1ps
/****************************************************************************
 * File Name:  top_module.v
 *
 * Created by Kuldeep Gohil
 *
 * purpose: top_module of this project which maps out the inputs/outputs
 *				of the reset sync module(AISO), vga sync module, and pixel 
 *				gen module.
 *          
 *	In submitting this file for class work at CSULB I am confirming that 
 *	this is my work product. In the event other code sources are utilized
 *	I will document that code identifying the author. In submitting this 
 * work I acknowledge that plagiarism in student project work is subject
 *	to dismissal from the class
 ****************************************************************************/
module top_module(clk, rst, btn, rgb, h_sync, v_sync);
    
    // initialized inputs
    input       		clk, rst;
    input 	[1:0] 	btn;
        
    // initialize wires
    wire       		vd_on;
    wire 	[9:0] 	v_count, h_count;    
    wire 	[2:0] 	rgb_next;
    wire       		rst_sync;
    	 
    // initialize outputs	 
    output 				h_sync, v_sync;
    output 	[2:0] 	rgb;
    
    // initialize AISO module 
    AISO reset_sync(.rst(rst),			 // input
                    .clk(clk),			 // input
                    .rst_sync(rst_sync) // output
                    );
                    
    // initialize vga_sync module 
    vga_sync vs(.clk(clk),              // input
                .rst(rst_sync),       	 // input
                .h_sync(h_sync),        // output
                .v_sync(v_sync),        // output
                .vd_on(vd_on),    		 // output
                .v_count(v_count),      // output
                .h_count(h_count)       // output
                );
    
    // initialize pixel gen module
    pixel_gen pg(.pixel_x(h_count),     // input 
                 .pixel_y(v_count),     // input
                 .vd_on(vd_on),   		 // input
                 .rst(rst_sync),        // input
                 .clk(clk),             // input
                 .btn(btn),             // input
                 .rgb(rgb)              // output
                 );
endmodule
