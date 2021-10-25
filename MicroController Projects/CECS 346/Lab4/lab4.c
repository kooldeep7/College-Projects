// lab4.c
// Authors: Kuldeep Gohil
// Date: March 22, 2019

#define NVIC_EN0_R              (*((volatile unsigned long *)0xE000E100))  // IRQ 0 to 31 Set Enable Register
#define NVIC_PRI7_R             (*((volatile unsigned long *)0xE000E41C))  // IRQ 28 to 31 Priority Register
#define GPIO_PORTF_LOCK_R       (*((volatile unsigned long *)0x40025520))
#define GPIO_PORTF_CR_R         (*((volatile unsigned long *)0x40025524))
#define GPIO_PORTF_DIR_R        (*((volatile unsigned long *)0x40025400))
#define LEDS       							(*((volatile unsigned long *)0x40025038))
#define GPIO_PORTF_IS_R         (*((volatile unsigned long *)0x40025404))
#define GPIO_PORTF_IBE_R        (*((volatile unsigned long *)0x40025408))
#define GPIO_PORTF_IEV_R        (*((volatile unsigned long *)0x4002540C))
#define GPIO_PORTF_IM_R         (*((volatile unsigned long *)0x40025410))
#define GPIO_PORTF_RIS_R        (*((volatile unsigned long *)0x40025414))
#define GPIO_PORTF_ICR_R        (*((volatile unsigned long *)0x4002541C))
#define GPIO_PORTF_AFSEL_R      (*((volatile unsigned long *)0x40025420))
#define GPIO_PORTF_PUR_R        (*((volatile unsigned long *)0x40025510))
#define GPIO_PORTF_PDR_R        (*((volatile unsigned long *)0x40025514))
#define GPIO_PORTF_DEN_R        (*((volatile unsigned long *)0x4002551C))
#define GPIO_PORTF_AMSEL_R      (*((volatile unsigned long *)0x40025528))
#define GPIO_PORTF_PCTL_R       (*((volatile unsigned long *)0x4002552C))
#define SYSCTL_RCGC2_R          (*((volatile unsigned long *)0x400FE108))
#define SYSCTL_RCGC2_GPIOF      0x00000020  // port F Clock Gating Control

//SysTick
#define NVIC_SYS_PRI3_R         (*((volatile unsigned long *)0xE000ED20))  // Sys. Handlers 12 to 15 Priority
#define NVIC_ST_CTRL_R          (*((volatile unsigned long *)0xE000E010))
#define NVIC_ST_RELOAD_R        (*((volatile unsigned long *)0xE000E014))
#define NVIC_ST_CURRENT_R       (*((volatile unsigned long *)0xE000E018))
	
//LED colors define
#define RED 	0x02
#define GREEN 0x08
#define BLUE 	0x04

// 2. Declarations Section
//   Global Variables
volatile unsigned long FallingEdges;
unsigned char Mode;
//   Function Prototypes
void PortF_Init(void);
void SysTick_Init(unsigned long);
void SysTick_Handler(void);
void GPIOPortF_Handler(void);
void EnableInterrupts(void);
long StartCritical (void);    // previous I bit, disable interrupts
void EndCritical(long sr);    // restore I bit to previous value
void WaitForInterrupt(void);  // low power mode


// 3. Subroutines Section
// MAIN: Mandatory for a C Program to be executable
int main(void){     
  PortF_Init();        // Call initialization of port PF4 PF2    
	Mode = 0;
	SysTick_Init(8000000);
	EnableInterrupts();
  while(1){
		WaitForInterrupt();
  }
}

// Subroutine to initialize port F pins for input and output
// PF4 and PF0 are input SW1 and SW2 respectively
// PF3,PF2,PF1 are outputs to the LED
// Inputs: None
// Outputs: None
// Notes: These five pins are connected to hardware on the LaunchPad
void PortF_Init(void){ volatile unsigned long delay; 
	SYSCTL_RCGC2_R |= 0x00000020; // (a) activate clock for port F
	delay = SYSCTL_RCGC2_R;   
  FallingEdges = 0;             // (b) initialize counter
  GPIO_PORTF_LOCK_R = 0x4C4F434B;   // 2) unlock PortF PF0  
  GPIO_PORTF_CR_R = 0x1E;           //    allow changes to PF4-1
  GPIO_PORTF_AMSEL_R = 0x00;        // 3) disable analog function
  GPIO_PORTF_PCTL_R &= ~0x000F0000; // 4) configure PF4 as GPIO
  GPIO_PORTF_DIR_R |= 0x0E;          // 5) PF4 input, PF3,PF2,PF1 output   
  GPIO_PORTF_PUR_R = 0x10;          //    enable pullup resistors on PF4  
	GPIO_PORTF_IS_R &= ~0x10;     		// (d) PF4 is edge-sensitive
  GPIO_PORTF_IBE_R &= ~0x10;    		//     PF4 is not both edges
  GPIO_PORTF_IEV_R &= ~0x10;    		//     PF4 falling edge event  
	GPIO_PORTF_ICR_R = 0x10;      		// (e) clear flag4
  GPIO_PORTF_IM_R |= 0x10;      		// (f) arm interrupt on PF4
  GPIO_PORTF_DEN_R = 0x1E;          // 7) enable digital pins PF4-PF1
	GPIO_PORTF_AFSEL_R &= ~0x10;  		// disable alt funct on PF4
	NVIC_PRI7_R = (NVIC_PRI7_R&0xFF00FFFF)|0x00A00000; // (g) priority 5
  NVIC_EN0_R = 0x40000000;      		// (h) enable interrupt 30 in NVIC
  EnableInterrupts();           		// (i) Clears the I bit30 in NVIC
}
void GPIOPortF_Handler(void){
  GPIO_PORTF_ICR_R = 0x10;      // acknowledge flag4
	if(Mode==0)
		Mode=1;
	else
		Mode=0;
	}
void SysTick_Init(unsigned long period){
  NVIC_ST_CTRL_R = 0;         // disable SysTick during setup
  NVIC_ST_RELOAD_R = period-1;// reload value
  NVIC_ST_CURRENT_R = 0;      // any write to current clears it
  NVIC_SYS_PRI3_R = (NVIC_SYS_PRI3_R&0x00FFFFFF)|0x40000000; // priority 2
                              // enable SysTick with core clock and interrupts
  NVIC_ST_CTRL_R = 0x07;
  EnableInterrupts();
}
void SysTick_Handler(void){
  FallingEdges = FallingEdges + 1;
	if(FallingEdges%2==0)
			LEDS = RED;
	else{
			if(Mode==0) 				// Flash Blue/Red
				LEDS = BLUE;			// Blue
			else if(Mode==1)		// Flash Green/Red
				LEDS = GREEN;			// Green
	}
}

// Color    LED(s) PortF
// dark     ---    0
// red      R--    0x02
// blue     --B    0x04
// green    -G-    0x08
// yellow   RG-    0x0A
// sky blue -GB    0x0C
// white    RGB    0x0E
// pink     R-B    0x06

