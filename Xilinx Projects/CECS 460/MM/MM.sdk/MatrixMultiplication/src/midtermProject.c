//Kuldeep Gohil
//CECS 460
//midterm Project

//AXI GPIO driver
#include "xgpio.h"

//send data over UART
#include "xil_printf.h"

//receive data over UART
#include "xuartlite_l.h"
//Reset FIFO
#include "xuartlite.h"
//information about AXI peripherals
#include "xparameters.h"
#include <stdio.h>



#define Gpio0ID XPAR_AXI_GPIO_0_DEVICE_ID
#define Gpio1ID XPAR_AXI_GPIO_1_DEVICE_ID
#define Gpio2ID XPAR_AXI_GPIO_2_DEVICE_ID
#define Gpio3ID XPAR_AXI_GPIO_3_DEVICE_ID
#define Gpio4ID XPAR_AXI_GPIO_4_DEVICE_ID
#define Gpio5ID XPAR_AXI_GPIO_5_DEVICE_ID
#define Gpio6ID XPAR_AXI_GPIO_6_DEVICE_ID
#define Gpio7ID XPAR_AXI_GPIO_7_DEVICE_ID
#define Gpio8ID XPAR_AXI_GPIO_8_DEVICE_ID
#define Gpio9ID XPAR_AXI_GPIO_9_DEVICE_ID
#define Gpio10ID XPAR_AXI_GPIO_10_DEVICE_ID
#define Gpio11ID XPAR_AXI_GPIO_11_DEVICE_ID
#define Gpio12ID XPAR_AXI_GPIO_12_DEVICE_ID
#define Gpio13ID XPAR_AXI_GPIO_13_DEVICE_ID
#define Gpio14ID XPAR_AXI_GPIO_14_DEVICE_ID
#define Gpio15ID XPAR_AXI_GPIO_15_DEVICE_ID
#define Gpio16ID XPAR_AXI_GPIO_16_DEVICE_ID
#define Gpio17ID XPAR_AXI_GPIO_17_DEVICE_ID
#define Gpio18ID XPAR_AXI_GPIO_18_DEVICE_ID
#define Gpio19ID XPAR_AXI_GPIO_19_DEVICE_ID
#define Gpio20ID XPAR_AXI_GPIO_20_DEVICE_ID
#define Gpio21ID XPAR_AXI_GPIO_21_DEVICE_ID
#define Gpio22ID XPAR_AXI_GPIO_22_DEVICE_ID
#define Gpio23ID XPAR_AXI_GPIO_23_DEVICE_ID
#define Gpio24ID XPAR_AXI_GPIO_24_DEVICE_ID
#define Gpio25ID XPAR_AXI_GPIO_25_DEVICE_ID
#define Gpio26ID XPAR_AXI_GPIO_26_DEVICE_ID


int printMenu(){
	xil_printf("\n**** Midterm Project ****\n"
			   "\n1. Enter Matrix Values\n"
			   "2. Display Matrix Values\n"
			   "3. Exit\n");

}



int printMatrixA(int A00, int A01, int A02, int A10, int A11, int A12, int A20, int A21, int A22){

		xil_printf("\nMatrix A: | %d | %d | %d |		| A00 | A01 | A02 |\n"
				"			 	 | %d | %d | %d |		| A10 | A11 | A12 |\n"
				"				 | %d | %d | %d |		| A20 | A21 | A22 |\n", A00, A01, A02, A10, A11, A12, A20, A21, A22);
}



int printMatrixB(int B00, int B01, int B02, int B10, int B11, int B12, int B20, int B21, int B22){

		xil_printf("\nMatrix B: | %d | %d | %d |		| B00 | B01 | B02 |\n"
				"			 	 | %d | %d | %d |		| B10 | B11 | B12 |\n"
				"				 | %d | %d | %d |		| B20 | B21 | B22 |\n", B00, B01, B02, B10, B11, B12, B20, B21, B22);
}

int printMatrixC(int C00, int C01, int C02, int C10, int C11, int C12, int C20, int C21, int C22){

		xil_printf("\nMatrix C: | %d | %d | %d |\n"
				"			 	 | %d | %d | %d |\n"
				"				 | %d | %d | %d |\n", C00, C01, C02, C10, C11, C12, C20, C21, C22);
}


int main()
{
	XGpio gpio0, gpio1, gpio2, gpio3, gpio4, gpio5, gpio6, gpio7, gpio8, gpio9,
	gpio10, gpio11, gpio12, gpio13, gpio14, gpio15, gpio16, gpio17, gpio18, gpio19,
	gpio20, gpio21, gpio22, gpio23, gpio24, gpio25, gpio26;

	//XUartLite Uart0;
	//initialize AXI GPIO
	XGpio_Initialize(&gpio0, Gpio0ID);
	XGpio_Initialize(&gpio1, Gpio1ID);
	XGpio_Initialize(&gpio2, Gpio2ID);
	XGpio_Initialize(&gpio3, Gpio3ID);
	XGpio_Initialize(&gpio4, Gpio4ID);
	XGpio_Initialize(&gpio5, Gpio5ID);
	XGpio_Initialize(&gpio6, Gpio6ID);
	XGpio_Initialize(&gpio7, Gpio7ID);
	XGpio_Initialize(&gpio8, Gpio8ID);
	XGpio_Initialize(&gpio9, Gpio9ID);
	XGpio_Initialize(&gpio10, Gpio10ID);
	XGpio_Initialize(&gpio11, Gpio11ID);
	XGpio_Initialize(&gpio12, Gpio12ID);
	XGpio_Initialize(&gpio13, Gpio13ID);
	XGpio_Initialize(&gpio14, Gpio14ID);
	XGpio_Initialize(&gpio15, Gpio15ID);
	XGpio_Initialize(&gpio16, Gpio16ID);
	XGpio_Initialize(&gpio17, Gpio17ID);
	XGpio_Initialize(&gpio18, Gpio18ID);
	XGpio_Initialize(&gpio19, Gpio19ID);
	XGpio_Initialize(&gpio20, Gpio20ID);
	XGpio_Initialize(&gpio21, Gpio21ID);
	XGpio_Initialize(&gpio22, Gpio22ID);
	XGpio_Initialize(&gpio23, Gpio23ID);
	XGpio_Initialize(&gpio24, Gpio24ID);
	XGpio_Initialize(&gpio25, Gpio25ID);
	XGpio_Initialize(&gpio26, Gpio26ID);



	//Set the direction of AXI GPIO

	// set direction for MatrixA to output
	XGpio_SetDataDirection(&gpio0, 1, 0x00000000);
	XGpio_SetDataDirection(&gpio1, 1, 0x00000000);
	XGpio_SetDataDirection(&gpio2, 1, 0x00000000);
	XGpio_SetDataDirection(&gpio3, 1, 0x00000000);
	XGpio_SetDataDirection(&gpio4, 1, 0x00000000);
	XGpio_SetDataDirection(&gpio5, 1, 0x00000000);
	XGpio_SetDataDirection(&gpio6, 1, 0x00000000);
	XGpio_SetDataDirection(&gpio7, 1, 0x00000000);
	XGpio_SetDataDirection(&gpio8, 1, 0x00000000);

	// set direction for MatrixB to output
	XGpio_SetDataDirection(&gpio9, 1, 0x00000000);
	XGpio_SetDataDirection(&gpio10, 1, 0x00000000);
	XGpio_SetDataDirection(&gpio11, 1, 0x00000000);
	XGpio_SetDataDirection(&gpio12, 1, 0x00000000);
	XGpio_SetDataDirection(&gpio13, 1, 0x00000000);
	XGpio_SetDataDirection(&gpio14, 1, 0x00000000);
	XGpio_SetDataDirection(&gpio15, 1, 0x00000000);
	XGpio_SetDataDirection(&gpio16, 1, 0x00000000);
	XGpio_SetDataDirection(&gpio17, 1, 0x00000000);

	// set direction for MatrixC to input
	XGpio_SetDataDirection(&gpio18, 1, 0xFFFFFFFF);
	XGpio_SetDataDirection(&gpio19, 1, 0xFFFFFFFF);
	XGpio_SetDataDirection(&gpio20, 1, 0xFFFFFFFF);
	XGpio_SetDataDirection(&gpio21, 1, 0xFFFFFFFF);
	XGpio_SetDataDirection(&gpio22, 1, 0xFFFFFFFF);
	XGpio_SetDataDirection(&gpio23, 1, 0xFFFFFFFF);
	XGpio_SetDataDirection(&gpio24, 1, 0xFFFFFFFF);
	XGpio_SetDataDirection(&gpio25, 1, 0xFFFFFFFF);
	XGpio_SetDataDirection(&gpio26, 1, 0xFFFFFFFF);



    // Setting MatrixA Values (Will Make it UserInput afterwards)
	XGpio_DiscreteWrite(&gpio0, 1, 2);
	XGpio_DiscreteWrite(&gpio1, 1, 8);
	XGpio_DiscreteWrite(&gpio2, 1, 5);
	XGpio_DiscreteWrite(&gpio3, 1, 3);
	XGpio_DiscreteWrite(&gpio4, 1, 1);
	XGpio_DiscreteWrite(&gpio5, 1, 3);
	XGpio_DiscreteWrite(&gpio6, 1, 4);
	XGpio_DiscreteWrite(&gpio7, 1, 6);
	XGpio_DiscreteWrite(&gpio8, 1, 7);

	// Setting MatrixB Values (Will Make it UserInput afterwards)
	XGpio_DiscreteWrite(&gpio9, 1, 6);
	XGpio_DiscreteWrite(&gpio10, 1, 8);
	XGpio_DiscreteWrite(&gpio11, 1, 5);
	XGpio_DiscreteWrite(&gpio12, 1, 5);
	XGpio_DiscreteWrite(&gpio13, 1, 4);
	XGpio_DiscreteWrite(&gpio14, 1, 2);
	XGpio_DiscreteWrite(&gpio15, 1, 3);
	XGpio_DiscreteWrite(&gpio16, 1, 1);
	XGpio_DiscreteWrite(&gpio17, 1, 7);

	int MatrixA[] = {XGpio_DiscreteRead(&gpio0,1), XGpio_DiscreteRead(&gpio1,1), XGpio_DiscreteRead(&gpio2,1),
		XGpio_DiscreteRead(&gpio3,1), XGpio_DiscreteRead(&gpio4,1), XGpio_DiscreteRead(&gpio5,1),
		XGpio_DiscreteRead(&gpio6,1), XGpio_DiscreteRead(&gpio7,1), XGpio_DiscreteRead(&gpio8,1)};

	int MatrixB[] = {XGpio_DiscreteRead(&gpio9,1), XGpio_DiscreteRead(&gpio10,1), XGpio_DiscreteRead(&gpio11,1),
		XGpio_DiscreteRead(&gpio12,1), XGpio_DiscreteRead(&gpio13,1), XGpio_DiscreteRead(&gpio14,1),
		XGpio_DiscreteRead(&gpio15,1), XGpio_DiscreteRead(&gpio16,1), XGpio_DiscreteRead(&gpio17,1)};

	int MatrixC[] = {XGpio_DiscreteRead(&gpio18,1), XGpio_DiscreteRead(&gpio19,1), XGpio_DiscreteRead(&gpio20,1),
		XGpio_DiscreteRead(&gpio21,1), XGpio_DiscreteRead(&gpio22,1), XGpio_DiscreteRead(&gpio23,1),
		XGpio_DiscreteRead(&gpio24,1), XGpio_DiscreteRead(&gpio25,1), XGpio_DiscreteRead(&gpio26,1)};


int check = 1;
	while (check == 1)
	{
		printMenu();
		int userInput;
		while (XUartLite_RecvByte (XPAR_AXI_UARTLITE_0_BASEADDR)!=13);
		userInput = XUartLite_RecvByte (XPAR_AXI_UARTLITE_0_BASEADDR)-48;;

		if (userInput == 1)
		{

			printMatrixA(MatrixA[0], MatrixA[1], MatrixA[2],MatrixA[3], MatrixA[4], MatrixA[5], MatrixA[6], MatrixA[7], MatrixA[8]);

			while (XUartLite_RecvByte (XPAR_AXI_UARTLITE_0_BASEADDR)!=13);
			xil_printf("\nEnter a number for Matrix A00: \n");
			MatrixA[0] = XUartLite_RecvByte (XPAR_AXI_UARTLITE_0_BASEADDR)-48;;
			XGpio_DiscreteWrite(&gpio0, 1, MatrixA[0]);

			while (XUartLite_RecvByte (XPAR_AXI_UARTLITE_0_BASEADDR)!=13);
			xil_printf("\nEnter a number for Matrix A01: \n");
			MatrixA[1] = XUartLite_RecvByte (XPAR_AXI_UARTLITE_0_BASEADDR)-48;;
			XGpio_DiscreteWrite(&gpio1, 1, MatrixA[1]);

			while (XUartLite_RecvByte (XPAR_AXI_UARTLITE_0_BASEADDR)!=13);
			xil_printf("\nEnter a number for Matrix A02: \n");
			MatrixA[2] = XUartLite_RecvByte (XPAR_AXI_UARTLITE_0_BASEADDR)-48;;
			XGpio_DiscreteWrite(&gpio2, 1, MatrixA[2]);

			while (XUartLite_RecvByte (XPAR_AXI_UARTLITE_0_BASEADDR)!=13);
			xil_printf("\nEnter a number for Matrix A10: \n");
			MatrixA[3] = XUartLite_RecvByte (XPAR_AXI_UARTLITE_0_BASEADDR)-48;;
			XGpio_DiscreteWrite(&gpio3, 1, MatrixA[3]);

			while (XUartLite_RecvByte (XPAR_AXI_UARTLITE_0_BASEADDR)!=13);
			xil_printf("\nEnter a number for Matrix A11: \n");
			MatrixA[4] = XUartLite_RecvByte (XPAR_AXI_UARTLITE_0_BASEADDR)-48;;
			XGpio_DiscreteWrite(&gpio4, 1, MatrixA[4]);

			while (XUartLite_RecvByte (XPAR_AXI_UARTLITE_0_BASEADDR)!=13);
			xil_printf("\nEnter a number for Matrix A12: \n");
			MatrixA[5] = XUartLite_RecvByte (XPAR_AXI_UARTLITE_0_BASEADDR)-48;;
			XGpio_DiscreteWrite(&gpio5, 1, MatrixA[5]);

			while (XUartLite_RecvByte (XPAR_AXI_UARTLITE_0_BASEADDR)!=13);
			xil_printf("\nEnter a number for Matrix A20: \n");
			MatrixA[6] = XUartLite_RecvByte (XPAR_AXI_UARTLITE_0_BASEADDR)-48;;
			XGpio_DiscreteWrite(&gpio6, 1, MatrixA[6]);

			while (XUartLite_RecvByte (XPAR_AXI_UARTLITE_0_BASEADDR)!=13);
			xil_printf("\nEnter a number for Matrix A21: \n");
			MatrixA[7] = XUartLite_RecvByte (XPAR_AXI_UARTLITE_0_BASEADDR)-48;;
			XGpio_DiscreteWrite(&gpio7, 1, MatrixA[7]);

			while (XUartLite_RecvByte (XPAR_AXI_UARTLITE_0_BASEADDR)!=13);
			xil_printf("\nEnter a number for Matrix A22: \n");
			MatrixA[8] = XUartLite_RecvByte (XPAR_AXI_UARTLITE_0_BASEADDR)-48;;
			XGpio_DiscreteWrite(&gpio8, 1, MatrixA[8]);

			printMatrixB(MatrixB[0], MatrixB[1], MatrixB[2],MatrixB[3], MatrixB[4], MatrixB[5], MatrixB[6], MatrixB[7], MatrixB[8]);

			while (XUartLite_RecvByte (XPAR_AXI_UARTLITE_0_BASEADDR)!=13);
			xil_printf("\nEnter a number for Matrix B00: \n");
			MatrixB[0] = XUartLite_RecvByte (XPAR_AXI_UARTLITE_0_BASEADDR)-48;;
			XGpio_DiscreteWrite(&gpio9, 1, MatrixB[0]);

			while (XUartLite_RecvByte (XPAR_AXI_UARTLITE_0_BASEADDR)!=13);
			xil_printf("\nEnter a number for Matrix B01: \n");
			MatrixB[1] = XUartLite_RecvByte (XPAR_AXI_UARTLITE_0_BASEADDR)-48;;
			XGpio_DiscreteWrite(&gpio10, 1, MatrixB[1]);

			while (XUartLite_RecvByte (XPAR_AXI_UARTLITE_0_BASEADDR)!=13);
			xil_printf("\nEnter a number for Matrix B02: \n");
			MatrixB[2] = XUartLite_RecvByte (XPAR_AXI_UARTLITE_0_BASEADDR)-48;;
			XGpio_DiscreteWrite(&gpio11, 1, MatrixB[2]);

			while (XUartLite_RecvByte (XPAR_AXI_UARTLITE_0_BASEADDR)!=13);
			xil_printf("\nEnter a number for Matrix B10: \n");
			MatrixB[3] = XUartLite_RecvByte (XPAR_AXI_UARTLITE_0_BASEADDR)-48;;
			XGpio_DiscreteWrite(&gpio12, 1, MatrixB[3]);

			while (XUartLite_RecvByte (XPAR_AXI_UARTLITE_0_BASEADDR)!=13);
			xil_printf("\nEnter a number for Matrix B11: \n");
			MatrixB[4] = XUartLite_RecvByte (XPAR_AXI_UARTLITE_0_BASEADDR)-48;;
			XGpio_DiscreteWrite(&gpio13, 1, MatrixB[4]);

			while (XUartLite_RecvByte (XPAR_AXI_UARTLITE_0_BASEADDR)!=13);
			xil_printf("\nEnter a number for Matrix B12: \n");
			MatrixB[5] = XUartLite_RecvByte (XPAR_AXI_UARTLITE_0_BASEADDR)-48;;
			XGpio_DiscreteWrite(&gpio14, 1, MatrixB[5]);

			while (XUartLite_RecvByte (XPAR_AXI_UARTLITE_0_BASEADDR)!=13);
			xil_printf("\nEnter a number for Matrix B20: \n");
			MatrixB[6] = XUartLite_RecvByte (XPAR_AXI_UARTLITE_0_BASEADDR)-48;;
			XGpio_DiscreteWrite(&gpio15, 1, MatrixB[6]);

			while (XUartLite_RecvByte (XPAR_AXI_UARTLITE_0_BASEADDR)!=13);
			xil_printf("\nEnter a number for Matrix B21: \n");
			MatrixB[7] = XUartLite_RecvByte (XPAR_AXI_UARTLITE_0_BASEADDR)-48;;
			XGpio_DiscreteWrite(&gpio16, 1, MatrixB[7]);

			while (XUartLite_RecvByte (XPAR_AXI_UARTLITE_0_BASEADDR)!=13);
			xil_printf("\nEnter a number for Matrix B22: \n");
			MatrixB[8] = XUartLite_RecvByte (XPAR_AXI_UARTLITE_0_BASEADDR)-48;;
			XGpio_DiscreteWrite(&gpio17, 1, MatrixB[8]);




		}

		else if (userInput == 2){

			int MatrixC[] = {XGpio_DiscreteRead(&gpio18,1), XGpio_DiscreteRead(&gpio19,1), XGpio_DiscreteRead(&gpio20,1),
					XGpio_DiscreteRead(&gpio21,1), XGpio_DiscreteRead(&gpio22,1), XGpio_DiscreteRead(&gpio23,1),
					XGpio_DiscreteRead(&gpio24,1), XGpio_DiscreteRead(&gpio25,1), XGpio_DiscreteRead(&gpio26,1)};


			printMatrixA(MatrixA[0], MatrixA[1], MatrixA[2],MatrixA[3], MatrixA[4], MatrixA[5], MatrixA[6], MatrixA[7], MatrixA[8]);
			printMatrixB(MatrixB[0], MatrixB[1], MatrixB[2],MatrixB[3], MatrixB[4], MatrixB[5], MatrixB[6], MatrixB[7], MatrixB[8]);
			printMatrixC(MatrixC[0], MatrixC[1], MatrixC[2],MatrixC[3], MatrixC[4], MatrixC[5], MatrixC[6], MatrixC[7], MatrixC[8]);

		}

		else if (userInput == 3){
			xil_printf("**** Program Exited ****");
			check = 0;
		}

	}
}



