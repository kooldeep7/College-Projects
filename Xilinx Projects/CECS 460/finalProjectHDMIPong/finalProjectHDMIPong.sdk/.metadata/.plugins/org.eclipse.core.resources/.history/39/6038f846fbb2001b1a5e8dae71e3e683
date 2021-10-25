/**
 * Example of using the Digilent display drivers for Zybo Z7 HDMI output, with animation
 * Russell Joyce, 11/03/2019
 */
 
 //Worked on by Kuldeep Gohil 
 //CECS 460 FINAL PROJECT: HDMI PONG GAME 

#include <stdio.h>
#include "xil_types.h"
#include "xil_cache.h"
#include "xparameters.h"
#include "display_ctrl.h"
#include "xgpio.h"
#include "xadcps.h"
#include "xuartps.h"

// Frame size (based on 1440x900 resolution, 32 bits per pixel)
#define MAX_FRAME (1920*1080)
#define FRAME_STRIDE (1920*4)
// Redefine IP ID/Address
#define XADC_DEVICE_ID 		XPAR_XADCPS_0_DEVICE_ID
#define UART_BASEADDR 		XPAR_PS7_UART_1_BASEADDR

DisplayCtrl dispCtrl; // Display driver struct
u32 frameBuf[DISPLAY_NUM_FRAMES][MAX_FRAME] __attribute__((aligned(0x20))); // Frame buffers for video data
void *pFrames[DISPLAY_NUM_FRAMES]; // Array of pointers to the frame buffers

// GPIO structs
XGpio dip, push;
int psb_check, dip_check; // variable used to store data from gpio

// Correct XADC data conversion
XAdcPs XAdcInst;
#define XAdcPs_RawToVoltage(AdcData) 					\
	((((float)(AdcData))* (1.0f))/65536.0f)


// parameters to control the ball
int ballx, bally; // variables to store current ball position
int ballxstart = 928;
int ballystart = 500;
int ballwidth = 64;
int ballheight = 64;
int ballvel = 5;
int maxballvel = 24;

// variable to set the paddle size and movement
int paddlewidth = 42;
int paddleheight = 288;
int paddlemove = 30;

// parameters to control the player 1 paddle
int paddle1x, paddle1y; // variables to store current player 1 paddle position
int paddle1xstart = 20;
int paddle1ystart = 400;

// parameters to control the player 2 paddle
int paddle2x, paddle2y, paddle2height; // variables to store current player 2 paddle position
int paddle2xstart = 1856;
int paddle2ystart = 400;

// parameters to control the horizontal block
int blockx, blocky;
int blockwidth = 400;
int blockheight = 100;
int blockxstart = 950;
int blockystart = 100;

// Function to convert XADC fraction to integer
int XAdcFractionToInt(float floatnum)
{
	float temp;
	temp = floatnum;
	if (floatnum < 0) {
		temp = -(floatnum);
	}
	return( ((int)((temp -(float)((int)temp)) * (1000.0f))));
}

// Function to display a horizontal block based on a given x and y position
void horBlock(u32 stride, u32 *frame, u32 red, u32 green, u32 blue, u32 horblockxstart, u32 horblockystart){

	//horizontal block for 7-segment score creation

	int horblockx, horblocky;
	int horblockwidth = 50;
	int horblockheight = 10;

	for (horblockx = horblockxstart; horblockx < horblockxstart+horblockwidth; horblockx++) {
		for (horblocky = horblockystart; horblocky < horblockystart+horblockheight; horblocky++) {
			frame[horblocky*stride + horblockx] = (red << BIT_DISPLAY_RED) | (green << BIT_DISPLAY_GREEN) | (blue << BIT_DISPLAY_BLUE);
		}
	}
}

// Function to display a vertical block based on a given x and y position
void verBlock(u32 stride, u32 *frame, u32 red, u32 green, u32 blue, u32 verblockxstart, u32 verblockystart){

	//vertical block for 7-segment score creation

	int verblockx, verblocky;
	int verblockwidth = 10;
	int verblockheight = 50;

	for (verblockx = verblockxstart; verblockx < verblockxstart+verblockwidth; verblockx++) {
		for (verblocky = verblockystart; verblocky < verblockystart+verblockheight; verblocky++) {
			frame[verblocky*stride + verblockx] = (red << BIT_DISPLAY_RED) | (green << BIT_DISPLAY_GREEN) | (blue << BIT_DISPLAY_BLUE);
		}
	}
}

int scoreL = 0;
int scoreR = 0;

// left side 7-segment score numbers
void lnumZero(u32 stride, u32 *frame, u32 red, u32 green, u32 blue){

	// segment a
	int horblockxstart = 880;
	int horblockystart = 30;
	horBlock(stride, frame, red, green, blue, horblockxstart, horblockystart);

	// segment b
	int verblockxstart = 930;
	int verblockystart = 40;
	verBlock(stride, frame, red, green, blue, verblockxstart, verblockystart);

	// segment c
	verblockxstart = 930;
	verblockystart = 100;
	verBlock(stride, frame, red, green, blue, verblockxstart, verblockystart);

	// segment d
	horblockxstart = 880;
	horblockystart = 150;
	horBlock(stride, frame, red, green, blue, horblockxstart, horblockystart);

	// segment e
	verblockxstart = 870;
	verblockystart = 100;
	verBlock(stride, frame, red, green, blue, verblockxstart, verblockystart);

	// segment f
	verblockxstart = 870;
	verblockystart = 40;
	verBlock(stride, frame, red, green, blue, verblockxstart, verblockystart);

}
void lnumOne(u32 stride, u32 *frame, u32 red, u32 green, u32 blue){

	// segment b
	int verblockxstart = 930;
	int verblockystart = 40;
	verBlock(stride, frame, red, green, blue, verblockxstart, verblockystart);

	// segment c
	verblockxstart = 930;
	verblockystart = 100;
	verBlock(stride, frame, red, green, blue, verblockxstart, verblockystart);
}
void lnumTwo(u32 stride, u32 *frame, u32 red, u32 green, u32 blue){

	// segment a
	int horblockxstart = 880;
	int horblockystart = 30;
	horBlock(stride, frame, red, green, blue, horblockxstart, horblockystart);

	// segment b
	int verblockxstart = 930;
	int verblockystart = 40;
	verBlock(stride, frame, red, green, blue, verblockxstart, verblockystart);

	// segment d
	horblockxstart = 880;
	horblockystart = 150;
	horBlock(stride, frame, red, green, blue, horblockxstart, horblockystart);

	// segment e
	verblockxstart = 870;
	verblockystart = 100;
	verBlock(stride, frame, red, green, blue, verblockxstart, verblockystart);

	// segment g
	horblockxstart = 880;
	horblockystart = 90;
	horBlock(stride, frame, red, green, blue, horblockxstart, horblockystart);


}
void lnumThree(u32 stride, u32 *frame, u32 red, u32 green, u32 blue){

	// segment a
	int horblockxstart = 880;
	int horblockystart = 30;
	horBlock(stride, frame, red, green, blue, horblockxstart, horblockystart);

	// segment b
	int verblockxstart = 930;
	int verblockystart = 40;
	verBlock(stride, frame, red, green, blue, verblockxstart, verblockystart);

	// segment c
	verblockxstart = 930;
	verblockystart = 100;
	verBlock(stride, frame, red, green, blue, verblockxstart, verblockystart);

	// segment d
	horblockxstart = 880;
	horblockystart = 150;
	horBlock(stride, frame, red, green, blue, horblockxstart, horblockystart);

	// segment g
	horblockxstart = 880;
	horblockystart = 90;
	horBlock(stride, frame, red, green, blue, horblockxstart, horblockystart);


}
void lnumFour(u32 stride, u32 *frame, u32 red, u32 green, u32 blue){

	// segment b
	int verblockxstart = 930;
	int verblockystart = 40;
	verBlock(stride, frame, red, green, blue, verblockxstart, verblockystart);

	// segment c
	verblockxstart = 930;
	verblockystart = 100;
	verBlock(stride, frame, red, green, blue, verblockxstart, verblockystart);

	// segment f
	verblockxstart = 870;
	verblockystart = 40;
	verBlock(stride, frame, red, green, blue, verblockxstart, verblockystart);

	// segment g
	int horblockxstart = 880;
	int horblockystart = 90;
	horBlock(stride, frame, red, green, blue, horblockxstart, horblockystart);


}
void lnumFive(u32 stride, u32 *frame, u32 red, u32 green, u32 blue){

	// segment a
	int horblockxstart = 880;
	int horblockystart = 30;
	horBlock(stride, frame, red, green, blue, horblockxstart, horblockystart);

	// segment c
	int verblockxstart = 930;
	int verblockystart = 100;
	verBlock(stride, frame, red, green, blue, verblockxstart, verblockystart);

	// segment d
	horblockxstart = 880;
	horblockystart = 150;
	horBlock(stride, frame, red, green, blue, horblockxstart, horblockystart);

	// segment f
	verblockxstart = 870;
	verblockystart = 40;
	verBlock(stride, frame, red, green, blue, verblockxstart, verblockystart);

	// segment g
	horblockxstart = 880;
	horblockystart = 90;
	horBlock(stride, frame, red, green, blue, horblockxstart, horblockystart);


}
void lnumSix(u32 stride, u32 *frame, u32 red, u32 green, u32 blue){

	// segment a
	int horblockxstart = 880;
	int horblockystart = 30;
	horBlock(stride, frame, red, green, blue, horblockxstart, horblockystart);

	// segment c
	int verblockxstart = 930;
	int verblockystart = 100;
	verBlock(stride, frame, red, green, blue, verblockxstart, verblockystart);

	// segment d
	horblockxstart = 880;
	horblockystart = 150;
	horBlock(stride, frame, red, green, blue, horblockxstart, horblockystart);

	// segment e
	verblockxstart = 870;
	verblockystart = 100;
	verBlock(stride, frame, red, green, blue, verblockxstart, verblockystart);

	// segment f
	verblockxstart = 870;
	verblockystart = 40;
	verBlock(stride, frame, red, green, blue, verblockxstart, verblockystart);

	// segment g
	horblockxstart = 880;
	horblockystart = 90;
	horBlock(stride, frame, red, green, blue, horblockxstart, horblockystart);


}
void lnumSeven(u32 stride, u32 *frame, u32 red, u32 green, u32 blue){

	// segment a
	int horblockxstart = 880;
	int horblockystart = 30;
	horBlock(stride, frame, red, green, blue, horblockxstart, horblockystart);

	// segment b
	int verblockxstart = 930;
	int verblockystart = 40;
	verBlock(stride, frame, red, green, blue, verblockxstart, verblockystart);

	// segment c
	verblockxstart = 930;
	verblockystart = 100;
	verBlock(stride, frame, red, green, blue, verblockxstart, verblockystart);

}
void lnumEight(u32 stride, u32 *frame, u32 red, u32 green, u32 blue){

	// segment a
	int horblockxstart = 880;
	int horblockystart = 30;
	horBlock(stride, frame, red, green, blue, horblockxstart, horblockystart);

	// segment b
	int verblockxstart = 930;
	int verblockystart = 40;
	verBlock(stride, frame, red, green, blue, verblockxstart, verblockystart);

	// segment c
	verblockxstart = 930;
	verblockystart = 100;
	verBlock(stride, frame, red, green, blue, verblockxstart, verblockystart);

	// segment d
	horblockxstart = 880;
	horblockystart = 150;
	horBlock(stride, frame, red, green, blue, horblockxstart, horblockystart);

	// segment e
	verblockxstart = 870;
	verblockystart = 100;
	verBlock(stride, frame, red, green, blue, verblockxstart, verblockystart);

	// segment f
	verblockxstart = 870;
	verblockystart = 40;
	verBlock(stride, frame, red, green, blue, verblockxstart, verblockystart);

	// segment g
	horblockxstart = 880;
	horblockystart = 90;
	horBlock(stride, frame, red, green, blue, horblockxstart, horblockystart);


}
void lnumNine(u32 stride, u32 *frame, u32 red, u32 green, u32 blue){

	// segment a
	int horblockxstart = 880;
	int horblockystart = 30;
	horBlock(stride, frame, red, green, blue, horblockxstart, horblockystart);

	// segment b
	int verblockxstart = 930;
	int verblockystart = 40;
	verBlock(stride, frame, red, green, blue, verblockxstart, verblockystart);

	// segment c
	verblockxstart = 930;
	verblockystart = 100;
	verBlock(stride, frame, red, green, blue, verblockxstart, verblockystart);

	// segment d
	horblockxstart = 880;
	horblockystart = 150;
	horBlock(stride, frame, red, green, blue, horblockxstart, horblockystart);

	// segment f
	verblockxstart = 870;
	verblockystart = 40;
	verBlock(stride, frame, red, green, blue, verblockxstart, verblockystart);

	// segment g
	horblockxstart = 880;
	horblockystart = 90;
	horBlock(stride, frame, red, green, blue, horblockxstart, horblockystart);


}

// right side 7-segment score numbers
void rnumZero(u32 stride, u32 *frame, u32 red, u32 green, u32 blue){

	// segment a
	int horblockxstart = 990;
	int horblockystart = 30;
	horBlock(stride, frame, red, green, blue, horblockxstart, horblockystart);

	// segment b
	int verblockxstart = 1040;
	int verblockystart = 40;
	verBlock(stride, frame, red, green, blue, verblockxstart, verblockystart);

	// segment c
	verblockxstart = 1040;
	verblockystart = 100;
	verBlock(stride, frame, red, green, blue, verblockxstart, verblockystart);

	// segment d
	horblockxstart = 990;
	horblockystart = 150;
	horBlock(stride, frame, red, green, blue, horblockxstart, horblockystart);

	// segment e
	verblockxstart = 980;
	verblockystart = 100;
	verBlock(stride, frame, red, green, blue, verblockxstart, verblockystart);

	// segment f
	verblockxstart = 980;
	verblockystart = 40;
	verBlock(stride, frame, red, green, blue, verblockxstart, verblockystart);

}
void rnumOne(u32 stride, u32 *frame, u32 red, u32 green, u32 blue){

	int verblockxstart = 1030;
	int verblockystart = 40;

	verBlock(stride, frame, red, green, blue, verblockxstart, verblockystart);

	verblockxstart = 1030;
	verblockystart = 100;
	verBlock(stride, frame, red, green, blue, verblockxstart, verblockystart);
}
void rnumTwo(u32 stride, u32 *frame, u32 red, u32 green, u32 blue){

	// segment a
	int horblockxstart = 990;
	int horblockystart = 30;
	horBlock(stride, frame, red, green, blue, horblockxstart, horblockystart);

	// segment b
	int verblockxstart = 1040;
	int verblockystart = 40;
	verBlock(stride, frame, red, green, blue, verblockxstart, verblockystart);

	// segment d
	horblockxstart = 990;
	horblockystart = 150;
	horBlock(stride, frame, red, green, blue, horblockxstart, horblockystart);

	// segment e
	verblockxstart = 980;
	verblockystart = 100;
	verBlock(stride, frame, red, green, blue, verblockxstart, verblockystart);

	// segment g
	horblockxstart = 990;
	horblockystart = 90;
	horBlock(stride, frame, red, green, blue, horblockxstart, horblockystart);


}
void rnumThree(u32 stride, u32 *frame, u32 red, u32 green, u32 blue){

	// segment a
	int horblockxstart = 990;
	int horblockystart = 30;
	horBlock(stride, frame, red, green, blue, horblockxstart, horblockystart);

	// segment b
	int verblockxstart = 1040;
	int verblockystart = 40;
	verBlock(stride, frame, red, green, blue, verblockxstart, verblockystart);

	// segment c
	verblockxstart = 1040;
	verblockystart = 100;
	verBlock(stride, frame, red, green, blue, verblockxstart, verblockystart);

	// segment d
	horblockxstart = 990;
	horblockystart = 150;
	horBlock(stride, frame, red, green, blue, horblockxstart, horblockystart);

	// segment g
	horblockxstart = 990;
	horblockystart = 90;
	horBlock(stride, frame, red, green, blue, horblockxstart, horblockystart);


}
void rnumFour(u32 stride, u32 *frame, u32 red, u32 green, u32 blue){

	// segment b
	int verblockxstart = 1040;
	int verblockystart = 40;
	verBlock(stride, frame, red, green, blue, verblockxstart, verblockystart);

	// segment c
	verblockxstart = 1040;
	verblockystart = 100;
	verBlock(stride, frame, red, green, blue, verblockxstart, verblockystart);

	// segment f
	verblockxstart = 980;
	verblockystart = 40;
	verBlock(stride, frame, red, green, blue, verblockxstart, verblockystart);

	// segment g
	int horblockxstart = 990;
	int horblockystart = 90;
	horBlock(stride, frame, red, green, blue, horblockxstart, horblockystart);


}
void rnumFive(u32 stride, u32 *frame, u32 red, u32 green, u32 blue){

	// segment a
	int horblockxstart = 990;
	int horblockystart = 30;
	horBlock(stride, frame, red, green, blue, horblockxstart, horblockystart);

	// segment c
	int verblockxstart = 1040;
	int verblockystart = 100;
	verBlock(stride, frame, red, green, blue, verblockxstart, verblockystart);

	// segment d
	horblockxstart = 990;
	horblockystart = 150;
	horBlock(stride, frame, red, green, blue, horblockxstart, horblockystart);

	// segment f
	verblockxstart = 980;
	verblockystart = 40;
	verBlock(stride, frame, red, green, blue, verblockxstart, verblockystart);

	// segment g
	horblockxstart = 990;
	horblockystart = 90;
	horBlock(stride, frame, red, green, blue, horblockxstart, horblockystart);


}
void rnumSix(u32 stride, u32 *frame, u32 red, u32 green, u32 blue){

	// segment a
	int horblockxstart = 990;
	int horblockystart = 30;
	horBlock(stride, frame, red, green, blue, horblockxstart, horblockystart);

	// segment c
	int verblockxstart = 1040;
	int verblockystart = 100;
	verBlock(stride, frame, red, green, blue, verblockxstart, verblockystart);

	// segment d
	horblockxstart = 990;
	horblockystart = 150;
	horBlock(stride, frame, red, green, blue, horblockxstart, horblockystart);

	// segment e
	verblockxstart = 980;
	verblockystart = 100;
	verBlock(stride, frame, red, green, blue, verblockxstart, verblockystart);

	// segment f
	verblockxstart = 980;
	verblockystart = 40;
	verBlock(stride, frame, red, green, blue, verblockxstart, verblockystart);

	// segment g
	horblockxstart = 990;
	horblockystart = 90;
	horBlock(stride, frame, red, green, blue, horblockxstart, horblockystart);


}
void rnumSeven(u32 stride, u32 *frame, u32 red, u32 green, u32 blue){

	// segment a
	int horblockxstart = 990;
	int horblockystart = 30;
	horBlock(stride, frame, red, green, blue, horblockxstart, horblockystart);

	// segment b
	int verblockxstart = 1040;
	int verblockystart = 40;
	verBlock(stride, frame, red, green, blue, verblockxstart, verblockystart);

	// segment c
	verblockxstart = 1040;
	verblockystart = 100;
	verBlock(stride, frame, red, green, blue, verblockxstart, verblockystart);

}
void rnumEight(u32 stride, u32 *frame, u32 red, u32 green, u32 blue){

	// segment a
	int horblockxstart = 990;
	int horblockystart = 30;
	horBlock(stride, frame, red, green, blue, horblockxstart, horblockystart);

	// segment b
	int verblockxstart = 1040;
	int verblockystart = 40;
	verBlock(stride, frame, red, green, blue, verblockxstart, verblockystart);

	// segment c
	verblockxstart = 1040;
	verblockystart = 100;
	verBlock(stride, frame, red, green, blue, verblockxstart, verblockystart);

	// segment d
	horblockxstart = 990;
	horblockystart = 150;
	horBlock(stride, frame, red, green, blue, horblockxstart, horblockystart);

	// segment e
	verblockxstart = 980;
	verblockystart = 100;
	verBlock(stride, frame, red, green, blue, verblockxstart, verblockystart);

	// segment f
	verblockxstart = 980;
	verblockystart = 40;
	verBlock(stride, frame, red, green, blue, verblockxstart, verblockystart);

	// segment g
	horblockxstart = 990;
	horblockystart = 90;
	horBlock(stride, frame, red, green, blue, horblockxstart, horblockystart);


}
void rnumNine(u32 stride, u32 *frame, u32 red, u32 green, u32 blue){

	// segment a
	int horblockxstart = 990;
	int horblockystart = 30;
	horBlock(stride, frame, red, green, blue, horblockxstart, horblockystart);

	// segment b
	int verblockxstart = 1040;
	int verblockystart = 40;
	verBlock(stride, frame, red, green, blue, verblockxstart, verblockystart);

	// segment c
	verblockxstart = 1040;
	verblockystart = 100;
	verBlock(stride, frame, red, green, blue, verblockxstart, verblockystart);

	// segment d
	horblockxstart = 990;
	horblockystart = 150;
	horBlock(stride, frame, red, green, blue, horblockxstart, horblockystart);

	// segment f
	verblockxstart = 980;
	verblockystart = 40;
	verBlock(stride, frame, red, green, blue, verblockxstart, verblockystart);

	// segment g
	horblockxstart = 990;
	horblockystart = 90;
	horBlock(stride, frame, red, green, blue, horblockxstart, horblockystart);


}

// Function to display the center line that divides the score
void scoreLine(u32 stride, u32 *frame, u32 red, u32 green, u32 blue){
	int verblockx, verblocky;
	int verblockwidth = 8;
	int verblockheight = 150;
	int verblockxstart = 956;
	int verblockystart = 20;

	for (verblockx = verblockxstart; verblockx < verblockxstart+verblockwidth; verblockx++) {
		for (verblocky = verblockystart; verblocky < verblockystart+verblockheight; verblocky++) {
			frame[verblocky*stride + verblockx] = (red << BIT_DISPLAY_RED) | (green << BIT_DISPLAY_GREEN) | (blue << BIT_DISPLAY_BLUE);
		}
	}
}

// Function to display the Pong menu
void PongPrintMenu()
{
	xil_printf("\x1B[H"); //Set cursor to top left of terminal
	xil_printf("\n\r");
	xil_printf("HDMI output enabled\n\r");
	xil_printf("Current Resolution: %s\n\r", dispCtrl.vMode.label);
	xil_printf("Welcome to HDMI PONG in 1080P!\n\r");
	xil_printf("May the best player WIN!\n\r");
	xil_printf("**************************************************\n\r");
	xil_printf("*       CECS 460 FINAL PROJECT: HDMI PONG        *\n\r");
	xil_printf("**************************************************\n\r");
	xil_printf("\n\r");
	xil_printf("1 - Two Player\n\r");
	xil_printf("2 - Single Player\n\r");
	xil_printf("3 - Show Joystick Data Stream\n\r");
	xil_printf("4 - Hide Joystick Data Stream\n\r");
	xil_printf("**************************************************\n\r");
	xil_printf("\n\r");
}

int main(void) {

	int i;
    int menu = 1;  // variable that controls when the menu prints
    int showjoy = 0;  // variable to control if to show joystick voltages
    int gamemode, pgamemode;  // variable to control game mode
    char userInput = 0;
	// Xadc variables
	u32 XAdcRawData;
	float XAdcVolData;
	int xStatus , Y1voltage, Y2voltage;

	// Xadc structs
	XAdcPs_Config *XAdcPsConfigPtr;
	XAdcPs *XAdcInstPtr = &XAdcInst;

	// Variable to hold the color values
	u32 red, green, blue;

	// Initialize an array of pointers to the 2 frame buffers
	for (i = 0; i < DISPLAY_NUM_FRAMES; i++)
		pFrames[i] = frameBuf[i];

	// Initialize switches
	XGpio_Initialize(&dip, XPAR_SWITCHES_DEVICE_ID);
    XGpio_SetDataDirection(&dip, 1, 0xffffffff);

    // Initialize buttons
    XGpio_Initialize(&push, XPAR_BUTTONS_DEVICE_ID);
    XGpio_SetDataDirection(&push, 1, 0xffffffff);

    // Xadc configuration and initialization
    XAdcPsConfigPtr = XAdcPs_LookupConfig(XADC_DEVICE_ID);
	if (XAdcPsConfigPtr == NULL) {
		return XST_FAILURE;
	}
    XAdcPs_CfgInitialize(XAdcInstPtr, XAdcPsConfigPtr, XAdcPsConfigPtr->BaseAddress);
    xStatus = XAdcPs_SelfTest(XAdcInstPtr);
	if (xStatus != XST_SUCCESS) {
		return XST_FAILURE;
	}

	// Initialize the display controller
	DisplayInitialize(&dispCtrl, XPAR_AXIVDMA_0_DEVICE_ID, XPAR_VTC_0_DEVICE_ID, XPAR_HDMI_AXI_DYNCLK_0_BASEADDR, pFrames, FRAME_STRIDE);

	// Start with the first frame buffer (of two)
	DisplayChangeFrame(&dispCtrl, 0);

	// Set the display resolution
	DisplaySetMode(&dispCtrl, &VMODE_1920x1080);

	// Enable video output
	DisplayStart(&dispCtrl);

	// Display welcome message
	xil_printf("\x1B[H"); //Set cursor to top left of terminal
	xil_printf("\x1B[2J"); //Clear terminal
	PongPrintMenu();

	// Get parameters from display controller struct
	u32 stride = dispCtrl.stride / 4;
	u32 width = dispCtrl.vMode.width;
	u32 height = dispCtrl.vMode.height;

	// Variables to control the frame
	u32 *frame;
	u32 buff = dispCtrl.curFrame;

	// Variables use to control the ball movement direction
	int right = 1;
	int down = 1;

	// Setting the defualt mode to two players
	paddle2height = paddleheight;
	gamemode = 0;
	pgamemode = 0;

	/* Flush UART FIFO */
	while (XUartPs_IsReceiveData(UART_BASEADDR))
	{
		XUartPs_ReadReg(UART_BASEADDR, XUARTPS_FIFO_OFFSET);
	}


	while (1) {

		// Print the menu after a new UART input
		if (menu == 1) {
			PongPrintMenu();
		}

		// Check if there is data from UART and Store it in a variable, then change the menu variable to reprint the menu
		if (XUartPs_IsReceiveData(UART_BASEADDR))
		{
			userInput = XUartPs_ReadReg(UART_BASEADDR, XUARTPS_FIFO_OFFSET);
			menu = 1;
		}
		else
		{
			userInput = '0';
			menu = 0;
		}

        // Case statement that uses user input to change modes or toggle on/off joystick data
		switch (userInput) {
			case '1':
				gamemode = 0;
				scoreL = 0;
				scoreR = 0;
				xil_printf("2 Player Mode Selected                    \r");
				userInput = 0;
				break;
			case '2':
				gamemode = 1;
				scoreL = 0;
				scoreR = 0;
				xil_printf("Single Player Mode Selected               \r");
				userInput = 0;
				break;
			case '3':
				showjoy = 1;
				xil_printf("Joystick Data Stream Toggled On           \r");
				userInput = 0;
				break;
			case '4':
				showjoy = 0;
				xil_printf("Joystick Data Stream Toggled Off          \r");
				userInput = 0;
				break;
		}

		// If statement to change the parameters that control the paddle size
		if ((gamemode == 1) && (pgamemode == gamemode)) {
			paddle1ystart = 400;
			paddle2ystart = 0;
			paddle2height = 1080;
			pgamemode = 0;
			ballvel = 5;

		}
		else if ((gamemode == 0) && (pgamemode == gamemode)){
			paddle1ystart = 400;
			paddle2ystart = 400;
			paddle2height = paddleheight;
			pgamemode = 1;
			ballvel = 5;
		}

		// Read adc data for player 1 joystick y axis on AD14 and convert to voltage value
		XAdcRawData = XAdcPs_GetAdcData(XAdcInstPtr,XADCPS_CH_AUX_MIN+14); // Get ADC data from AD14 (Pair JA1-JA7)
		XAdcVolData = XAdcPs_RawToVoltage(XAdcRawData);
		Y1voltage = XAdcFractionToInt(XAdcVolData);


		// Read adc data for player 2 joystick y axis on AD7 and convert to voltage value
		XAdcRawData = XAdcPs_GetAdcData(XAdcInstPtr,XADCPS_CH_AUX_MIN+7); // Get ADC data from AD7 (Pair JA2-JA8)
		XAdcVolData = XAdcPs_RawToVoltage(XAdcRawData);
		Y2voltage = XAdcFractionToInt(XAdcVolData);

		// Depending on the user input show the XADC data stream
		if (showjoy == 1) {
			xil_printf("P1 Y axis is %d mV. P2 Y axis is %d mV.  \r", Y1voltage, Y2voltage);
		}

		// Check the dip switch input
		dip_check = XGpio_DiscreteRead(&dip, 1);

		// Dip switches control the color of the ball and paddle
		if (dip_check == 0x1)
		{
			red = 0;
			green = 0;
			blue = 255;
		}
		else if (dip_check == 0x2)
		{
			red = 0;
			green = 255;
			blue = 0;
		}
		else if (dip_check == 0x3)
		{
			red = 0;
			green = 255;
			blue = 255;
		}
		else if (dip_check == 0x4)
		{
			red = 255;
			green = 0;
			blue = 0;
		}
		else if (dip_check == 0x5)
		{
			red = 255;
			green = 0;
			blue = 255;
		}
		else if (dip_check == 0x6)
		{
			red = 255;
			green = 255;
			blue = 0;
		}
		else if (dip_check == 0x7)
		{
			red = 255;
			green = 255;
			blue = 255;
		}
		else if (dip_check == 0x8)
		{
			red = 255;
			green = 155;
			blue = 15;
		}
		else
		{
			red = 0;
			green = 0;
			blue = 0;
		}

		// Check the push button input
		psb_check = XGpio_DiscreteRead(&push, 1);

		// Push buttons and joysticks control the movement of the paddles
		if ((gamemode == 0) || (gamemode == 1)) {
			// Player 1 controls
			if (((psb_check == 0x8) || (Y1voltage < 300)) && ((paddle1ystart - paddlemove) > 1))
			{
				// Move paddle up
				paddle1ystart-=paddlemove;
			}
			else if (((psb_check == 0x4) || (Y1voltage > 360)) && (((paddle1ystart + paddleheight) + paddlemove) < (height-1)))
			{
				// Move paddle down
				paddle1ystart+=paddlemove;
			}
		}

		// Allow player jostick to move only in two player mode
        if (gamemode == 0) {
			// Player 2 controls
			if (((psb_check == 0x2)|| (Y2voltage < 300)) && ((paddle2ystart - paddlemove) > 1))
			{
				// Move paddle up
				paddle2ystart-=paddlemove;
			}
			else if (((psb_check == 0x1) || (Y2voltage > 360)) && (((paddle2ystart + paddleheight) + paddlemove) < (height-1)))
			{
				// Move paddle down
				paddle2ystart+=paddlemove;
			}
        }

		// Switch the frame we're modifying to be the back buffer (1 to 0, or 0 to 1)
		buff = !buff;
		frame = (u32 *)dispCtrl.framePtr[buff];

		// Clear the entire frame to white
		memset(frame, 0xFF, MAX_FRAME*4);

		// Adjust the position of the ball
		// Var right is used to control the x direction the ball moves in
		if (right) {
			// If the ball has not touched the right wall keep moving the ball towards the right
			if ((ballxstart + ballvel + ballwidth) < width) {
				ballxstart+=ballvel;
			}
			// If the ball has touched the right wall reset the ball to the center
			else {
				ballxstart = 928;
				ballystart = 500;
				// Reset ball velocity
				ballvel = 5;
				// Assign point to Player 1
				scoreL += 1;
				xil_printf("Player 1 has scored a point!               \r");
			}
		}
		else {
			// If the ball has not touched the left wall keep moving the ball towards the left
			if ((ballxstart - ballvel) > 0) {
				ballxstart-=ballvel;
			}
			// If the ball has touched the left wall reset the ball to the center
			else {
				ballxstart = 928;
				ballystart = 500;
				// Reset ball velocity
				ballvel = 5;
				// Assign point to Player 2
				scoreR += 1;
				xil_printf("Player 2 has scored a point!               \r");
			}
		}

		// Var down is used to control the y direction the ball moves in
		if (down) {
			// Ball moves down
			if ((ballystart + ballvel + ballheight) < height) {
				ballystart+=ballvel;
			}
			else {
				// Change ball y velocity direction
				down = 0;
			}
		}
		else {
			// Ball moves up
			if ((ballystart - ballvel) > 0) {
				ballystart-=ballvel;
			}
			else {
				// Change ball y velocity direction
				down = 1;
			}
		}

		// Paddle and ball collision code
		// Checks the position of the ball and the paddle to see if they would touch
		// Increases the ball velocity after every successful paddle collision
		// Player 1 paddle collision
		if ((ballxstart < (paddle1xstart + paddlewidth)) && ((ballystart < (paddle1ystart + paddleheight)) && ((ballystart + ballheight) > paddle1ystart))){
			ballxstart+=ballvel;
			// Increase the ball velocity until it reaches a max of 11
			if (ballvel < maxballvel){
				ballvel++;
			}
			// Change ball x velocity direction
			right = 1;
		}
		// Player 2 paddle collision
		else if (((ballxstart + ballwidth) > paddle2xstart) && ((ballystart < (paddle2ystart + paddle2height)) && ((ballystart + ballheight) > paddle2ystart))){
			ballxstart-=ballvel;
			// Increase the ball velocity until it reaches a max of 11
			if (ballvel < maxballvel){
				ballvel++;
			}
			// Change ball x velocity direction
			right = 0;
		}

		// For loop that is used to display the ball
		for (ballx = ballxstart; ballx < ballxstart+ballwidth; ballx++) {
			for (bally = ballystart; bally < ballystart+ballheight; bally++) {
				frame[bally*stride + ballx] = (red << BIT_DISPLAY_RED) | (green << BIT_DISPLAY_GREEN) | (blue << BIT_DISPLAY_BLUE);
			}
		}

		// For loop that is used to display the player 1 paddle
		for (paddle1x = paddle1xstart; paddle1x < ((paddle1xstart+paddlewidth)); paddle1x++) {
			for (paddle1y = paddle1ystart; paddle1y < paddle1ystart+paddleheight; paddle1y++) {
				frame[(paddle1y*stride) + paddle1x] = (red << BIT_DISPLAY_RED) | (green << BIT_DISPLAY_GREEN) | (blue << BIT_DISPLAY_BLUE);
			}
		}

		// For loop that is used to display the player 2 paddle
		for (paddle2x = paddle2xstart; paddle2x < ((paddle2xstart+paddlewidth)); paddle2x++) {
			for (paddle2y = paddle2ystart; paddle2y < paddle2ystart+paddle2height; paddle2y++) {
				frame[paddle2y*stride + paddle2x] = (red << BIT_DISPLAY_RED) | (green << BIT_DISPLAY_GREEN) | (blue << BIT_DISPLAY_BLUE);
			}
		}

		// Display the line that separates the score
		scoreLine(stride,frame,red,green,blue);

		// Check gamemode to see if score needs to be shown
		// If statement used to display the score for player 1
		if ((scoreL >= 0) && (gamemode == 0)){
			if(scoreL == 0){
				lnumZero(stride,frame,red,green,blue);
			}
			else if(scoreL == 1){
				lnumOne(stride,frame,red,green,blue);
			}
			else if(scoreL == 2){
				lnumTwo(stride,frame,red,green,blue);
			}
			else if(scoreL == 3){
				lnumThree(stride,frame,red,green,blue);
				}
			else if(scoreL == 4){
				lnumFour(stride,frame,red,green,blue);
			}
			else if(scoreL == 5){
				lnumFive(stride,frame,red,green,blue);
				}
			else if(scoreL == 6){
				lnumSix(stride,frame,red,green,blue);
				}
			else if(scoreL == 7){
				lnumSeven(stride,frame,red,green,blue);
				}
			else if(scoreL == 8){
				lnumEight(stride,frame,red,green,blue);
			}
			else if(scoreL == 9){
				lnumNine(stride,frame,red,green,blue);
				}
			else {
				lnumZero(stride,frame,red,green,blue);
				scoreL = 0;
			}
		}

		// If statement used to display the score for player 2
		if (scoreR >= 0){
			if(scoreR == 0){
				rnumZero(stride,frame,red,green,blue);
			}
			else if(scoreR == 1){
				rnumOne(stride,frame,red,green,blue);
			}
			else if(scoreR == 2){
				rnumTwo(stride,frame,red,green,blue);
			}
			else if(scoreR == 3){
				rnumThree(stride,frame,red,green,blue);
				}
			else if(scoreR == 4){
				rnumFour(stride,frame,red,green,blue);
			}
			else if(scoreR == 5){
				rnumFive(stride,frame,red,green,blue);
				}
			else if(scoreR == 6){
				rnumSix(stride,frame,red,green,blue);
				}
			else if(scoreR == 7){
				rnumSeven(stride,frame,red,green,blue);
				}
			else if(scoreR == 8){
				rnumEight(stride,frame,red,green,blue);
			}
			else if(scoreR == 9){
				rnumNine(stride,frame,red,green,blue);
			}
			else {
				rnumZero(stride,frame,red,green,blue);
				scoreR = 0;
			}
		}

		// Flush everything out to DDR from the cache
		Xil_DCacheFlush();

		// Switch active frame to the back buffer (will take place during next vertical blanking period)
		DisplayChangeFrame(&dispCtrl, buff);

		// Wait for the frame to switch before continuing (so after current frame has been drawn)
		DisplayWaitForSync(&dispCtrl);

	}
}
