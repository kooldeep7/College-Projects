
// Using interrupts we change the mode of the Program by pressing SW1
// First mode switches from Green to flash red for 3s at 2Hz and turns Blue
// Second mode switches from Blue to flash Red for 3s at 2Hz and turns Green

// 0.Documentation Section 
// Kuldeep Gohil
// Lab5.c
// Runs on LM4F120 or TM4C123
// Date: April 19, 2019


//Interrupt Enable and Priority Registers
#define NVIC_EN0_R              (*((volatile unsigned long *)0xE000E100))  // IRQ 0 to 31 Set Enable Register
#define NVIC_PRI7_R             (*((volatile unsigned long *)0xE000E41C))  // IRQ 28 to 31 Priority Register
#define NVIC_PRI0_R             (*((volatile unsigned long *)0xE000E400))
//LED Data
#define LEDS       							(*((volatile unsigned long *)0x40025038))
//Port B Register Declarations
#define GPIO_PORTB_DIR_R        (*((volatile unsigned long *)0x40005400))
#define GPIO_PORTB_DATA_R       (*((volatile unsigned long *)0x400053FC))
#define GPIO_PORTB_AFSEL_R      (*((volatile unsigned long *)0x40005420))
#define GPIO_PORTB_DEN_R        (*((volatile unsigned long *)0x4000551C))
#define GPIO_PORTB_AMSEL_R      (*((volatile unsigned long *)0x40005528))
#define GPIO_PORTB_PCTL_R       (*((volatile unsigned long *)0x4000552C))
#define GPIO_PORTB_IS_R         (*((volatile unsigned long *)0x40005404))
#define GPIO_PORTB_IBE_R        (*((volatile unsigned long *)0x40005408))
#define GPIO_PORTB_IM_R         (*((volatile unsigned long *)0x40005410))
#define GPIO_PORTB_RIS_R        (*((volatile unsigned long *)0x40005414))
#define GPIO_PORTB_ICR_R        (*((volatile unsigned long *)0x4000541C))
#define GPIO_PORTB_PDR_R        (*((volatile unsigned long *)0x40005514))
	
//Port F Register Declarations
#define GPIO_PORTF_LOCK_R       (*((volatile unsigned long *)0x40025520))
#define GPIO_PORTF_CR_R         (*((volatile unsigned long *)0x40025524))
#define GPIO_PORTF_DIR_R        (*((volatile unsigned long *)0x40025400))
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
#define SYSCTL_RCGC2_GPIOB      0x00000002  // port B Clock Gating Control
//SysTick Port F
#define NVIC_SYS_PRI3_R         (*((volatile unsigned long *)0xE000ED20))  // Sys. Handlers 12 to 15 Priority
#define NVIC_ST_CTRL_R          (*((volatile unsigned long *)0xE000E010))
#define NVIC_ST_RELOAD_R        (*((volatile unsigned long *)0xE000E014))
#define NVIC_ST_CURRENT_R       (*((volatile unsigned long *)0xE000E018))

//Systick Port B

//LED colors define
#define RED 	0x02
#define GREEN 0x08
#define BLUE 	0x04

//   Global Variables
volatile unsigned long count; //Flag for every .5s/2Hz
unsigned char Mode; //Flag to determine which LEDS will be switching 
unsigned char SEC3 = 6; //3 seconds has elapsed ( 3 /0.5 = 6 counts)
//   Function Prototypes
void PortB_Init(void);
void PortF_Init(void);
void SysTick_Init(unsigned long);
void SysTick_Handler(void);
void GPIOPortF_Handler(void);
void GPIOPortB_Handler(void);
void EnableInterrupts(void);
long StartCritical (void);    // previous I bit, disable interrupts
void EndCritical(long sr);    // restore I bit to previous value
void WaitForInterrupt(void);  // low power mode


// 3. Subroutines Section
// MAIN: Mandatory for a C Program to be executable
int main(void){     
  PortF_Init();        // Call initialization of port PF4 PF2    
	PortB_Init();
	Mode = 0;
	LEDS = GREEN;
	SysTick_Init(8000000); // creates a .25s delay
	EnableInterrupts();
  while(1){
		WaitForInterrupt();//low power mode
  }
}

// Subroutine to initialize port F pins for input and output
// PF4 and PF0 are input SW1 and SW2 respectively
// PF3,PF2,PF1 are outputs to the LED
// Inputs: None
// Outputs: None
// Notes: These five pins are connected to hardware on the LaunchPad
void PortF_Init(void){ volatile unsigned long delay; 
	SYSCTL_RCGC2_R |= 0x00000020; 		// (a) activate clock for port F
	delay = SYSCTL_RCGC2_R;   
  count = 0;             		// (b) initialize counter
  GPIO_PORTF_LOCK_R = 0x4C4F434B;   // 2) unlock PortF PF0  
  GPIO_PORTF_CR_R = 0x1F;           //    allow changes to PF4-1
  GPIO_PORTF_AMSEL_R = 0x00;        // 3) disable analog function
  GPIO_PORTF_PCTL_R &= ~0x000F0000; // 4) configure PF4 as GPIO
  GPIO_PORTF_DIR_R |= 0x0E;         // 5) PF4 input, PF3,PF2,PF1 output   
  GPIO_PORTF_PUR_R = 0x11;          //    enable pullup resistors on PF4  
	GPIO_PORTF_IS_R &= ~0x11;     		// (d) PF4 is edge-sensitive
  GPIO_PORTF_IBE_R &= ~0x11;    		//     PF4 is not both edges
  GPIO_PORTF_IEV_R &= ~0x11;    		//     PF4 falling edge event  
	GPIO_PORTF_ICR_R = 0x11;      		// (e) clear flag4
  GPIO_PORTF_IM_R |= 0x11;      		// (f) arm interrupt on PF4
  GPIO_PORTF_DEN_R = 0x1F;          // 7) enable digital pins PF4-PF1
	GPIO_PORTF_AFSEL_R &= ~0x11;  		// disable alt funct on PF4
	NVIC_PRI7_R = (NVIC_PRI7_R&0xFF00FFFF)|0x00A00000; // (g) priority 5
  NVIC_EN0_R = 0x40000002;      		// (h) enable interrupt 30 in NVIC and interrupt 1

}
void GPIOPortF_Handler(void){
	if((GPIO_PORTF_RIS_R&0x01) == 0x01 && Mode != 2){
		GPIO_PORTF_ICR_R = 0x01;
		Mode = 2;
		count = 0;
	}//SW2 pressed, no object detected
	else if((GPIO_PORTF_RIS_R&0x10) == 0x10 && Mode != 1){
		GPIO_PORTF_ICR_R = 0x10;
		Mode = 1;
		count = 0;
		}//SW1 pressed no object detected
	} //If and else statement, mode gets not mode when sw1 pressed

void PortB_Init(void){ volatile unsigned long delay;
	SYSCTL_RCGC2_R |= 0x02;      				// 1) B 
  delay = SYSCTL_RCGC2_R;      				// 2) no need to unlock
	GPIO_PORTB_AMSEL_R 	&= ~0x01; 			// 3) disable analog function on PB0
  GPIO_PORTB_PCTL_R 	&= ~0x00FFFFFF; // 4) enable regular GPIO
  GPIO_PORTB_DIR_R 		&= ~0x01;    		// 5) input on PB0
	GPIO_PORTB_IS_R 		&= ~0x01;     	// (d) PB0 is edge-sensitive
  GPIO_PORTB_IBE_R 		|= 0x01;    		//     PB0 is both edges
	GPIO_PORTB_ICR_R 		= 0x01;      		// (e) clear flag0
  GPIO_PORTB_IM_R 		|= 0x01;      	// (f) arm interrupt on PB0
  GPIO_PORTB_AFSEL_R 	&= ~0x01; 			// 6) regular function on PB0
  GPIO_PORTB_DEN_R 		|= 0x01;    		// 7) enable digital on PB0
	NVIC_PRI0_R = (NVIC_PRI0_R&0xFFFF0FFF)|0x00000000; //priority 0
}
void GPIOPortB_Handler(void){
  GPIO_PORTB_ICR_R = 0x01;      // acknowledge flag0
	if(GPIO_PORTB_DATA_R==0x01){
		count = 0;	//resets count flag
		Mode = 2;		//object not detected
	}
	else{
		count = 0; 	//resets count flag
		Mode = 1; 	//object detected
	}
}
void SysTick_Init(unsigned long period){
  NVIC_ST_CTRL_R = 0;         // disable SysTick during setup
  NVIC_ST_RELOAD_R = period-1;// reload value
  NVIC_ST_CURRENT_R = 0;      // any write to current clears it
  NVIC_SYS_PRI3_R = (NVIC_SYS_PRI3_R&0x00FFFFFF)|0x40000000; // priority 2          
  NVIC_ST_CTRL_R = 0x07;			// enable SysTick with core clock and interrupts
}
void SysTick_Handler(void){
	if(Mode == 1 && LEDS != BLUE){//turns off green light, flashes red for 3s then turns blue
		if(count%2 == 1 && count < SEC3){//every odd count before 3s turn off LED
			LEDS = 0x00;
			count = count+1;
		}
		else if(count%2 == 0 && count < SEC3){//every even count before 3s Flash red
			LEDS = RED;
			count = count+1;
		}
		else
			LEDS = BLUE;//once 3s has elapsed, show blue
	}
	if(Mode == 2 && LEDS != GREEN){//turns off blue light, flashes red for 3s then turns green
		if(count%2 == 1 && count < SEC3){//every odd count before 3s turn off LED
			LEDS = 0x00;
			count = count+1;
		}
		else if(count%2 == 0 && count < SEC3){//every even count before 3s Flash red
			LEDS = RED;
			count = count+1;
		}
		else
			LEDS = GREEN;//once 3s has elapsed, show green
	}
}

