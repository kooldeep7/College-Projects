//Kuldeep Gohil 
//May 17, 2019
//Final Project

#include <stdint.h>
#include "tm4c123gh6pm.h"
#include "systick.h"
struct State{
  uint8_t Out;     // Output
  uint8_t Next[2]; // CW/CCW
};
typedef const struct State StateType;

#define clockwise 0        // Next index
#define counterclockwise 1 // Next index
StateType fsm[4]={
  {12,{1,3}},
  { 6,{2,0}},
  { 3,{3,1}},
  { 1,{0,2}}
};
unsigned char s; // current state
unsigned char t;

#define STEPPER  (*((volatile uint32_t *)0x4002403C))
#define STEPPER1 (*((volatile uint32_t *)0x4000703C))
	
// Move 1.8 degrees clockwise, delay is the time to wait after each step
void BackwardTogether(uint32_t delay){
  s = fsm[s].Next[clockwise]; // clock wise circular
	t = fsm[t].Next[counterclockwise];
  STEPPER = fsm[s].Out; // step motor
	STEPPER1 = fsm[t].Out;
  SysTick_Wait(delay);
}
// Move 1.8 degrees counterclockwise, delay is wait after each step
void ForwardTogether(uint32_t delay){
	s = fsm[s].Next[counterclockwise];
  t = fsm[t].Next[clockwise]; // counter clock wise circular
  STEPPER = fsm[s].Out; // step motor
	STEPPER1 = fsm[t].Out;
  SysTick_Wait(delay); // blind-cycle wait
}

void TurnRight(uint32_t delay){
	s = fsm[s].Next[counterclockwise];
	STEPPER = fsm[s].Out;
	SysTick_Wait(delay);

}

void slowRight1(uint32_t delay){
	t = fsm[t].Next[counterclockwise];
	STEPPER1 = fsm[t].Out;
	SysTick_Wait(delay);

}

void slowLeft1(uint32_t delay){
	s = fsm[s].Next[clockwise];
	STEPPER = fsm[s].Out;
	SysTick_Wait(delay);

}

void TurnLeft(uint32_t delay){
	t = fsm[t].Next[clockwise];
	STEPPER1 = fsm[t].Out;
	SysTick_Wait(delay);
}

void stop(uint32_t delay){
	SysTick_Wait(delay);
}

	
// Initialize Stepper interface


void Stepper_Init(void){
	
	SYSCTL_RCGCGPIO_R |= 0x08; // 2) activate port D
	SYSCTL_RCGCGPIO_R |= 0x10; // 1) activate port E
  SysTick_Init1();
  s = 0; 

	GPIO_PORTD_AMSEL_R &= ~0x0F;      // 3) disable analog functionality on PE3-0
  GPIO_PORTD_PCTL_R &= ~0x0000FFFF; // 4) GPIO configure PE3-0 as GPIO
  GPIO_PORTD_DIR_R |= 0x0F;   // 5) make PE3-0 out
  GPIO_PORTD_AFSEL_R &= ~0x0F;// 6) disable alt funct on PE3-0
  GPIO_PORTD_DR8R_R |= 0x0F;  // enable 8 mA drive
  GPIO_PORTD_DEN_R |= 0x0F;   // 7) enable digital I/O on PE3-0 
	
	GPIO_PORTE_AMSEL_R &= ~0x0F;      // 3) disable analog functionality on PE3-0
  GPIO_PORTE_PCTL_R &= ~0x0000FFFF; // 4) GPIO configure PE3-0 as GPIO
  GPIO_PORTE_DIR_R |= 0x0F;   // 5) make PE3-0 out
  GPIO_PORTE_AFSEL_R &= ~0x0F;// 6) disable alt funct on PE3-0
  GPIO_PORTE_DR8R_R |= 0x0F;  // enable 8 mA drive
  GPIO_PORTE_DEN_R |= 0x0F;   // 7) enable digital I/O on PE3-0 
	
}
