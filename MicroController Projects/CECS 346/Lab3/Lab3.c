// ***** 0. Documentation Section *****
// TableTrafficLight.c for Lab 2
// Kuldeep Gohil
// CECS 346
// February 8, 2019

// east/west red light connected to PB5
// east/west yellow light connected to PB4
// east/west green light connected to PB3
// north/south facing red light connected to PB2
// north/south facing yellow light connected to PB1
// north/south facing green light connected to PB0
// pedestrian detector connected to PE2 (1=pedestrian present)
// north/south car detector connected to PE1 (1=car present)
// east/west car detector connected to PE0 (1=car present)
// "walk" light connected to PF3 (built-in green LED)
// "don't walk" light connected to PF1 (built-in red LED)

// ***** 1. Pre-processor Directives Section ****


#define GPIO_PORTE_DATA_R       (*((volatile unsigned long *)0x400243FC))
#define GPIO_PORTE_DIR_R        (*((volatile unsigned long *)0x40024400))
#define GPIO_PORTE_AFSEL_R      (*((volatile unsigned long *)0x40024420))
#define GPIO_PORTE_PUR_R        (*((volatile unsigned long *)0x40024510))
#define GPIO_PORTE_DEN_R        (*((volatile unsigned long *)0x4002451C))
#define GPIO_PORTE_LOCK_R       (*((volatile unsigned long *)0x40024520))
#define GPIO_PORTE_CR_R         (*((volatile unsigned long *)0x40024524))
#define GPIO_PORTE_AMSEL_R      (*((volatile unsigned long *)0x40024528))
#define GPIO_PORTE_PCTL_R       (*((volatile unsigned long *)0x4002452C))
	
#define GPIO_PORTB_DATA_R       (*((volatile unsigned long *)0x400053FC))
#define GPIO_PORTB_DIR_R        (*((volatile unsigned long *)0x40005400))
#define GPIO_PORTB_AFSEL_R      (*((volatile unsigned long *)0x40005420))
#define GPIO_PORTB_PUR_R        (*((volatile unsigned long *)0x40005510))
#define GPIO_PORTB_DEN_R        (*((volatile unsigned long *)0x4000551C))
#define GPIO_PORTB_LOCK_R       (*((volatile unsigned long *)0x40005520))
#define GPIO_PORTB_CR_R         (*((volatile unsigned long *)0x40005524))
#define GPIO_PORTB_AMSEL_R      (*((volatile unsigned long *)0x40005528))
#define GPIO_PORTB_PCTL_R       (*((volatile unsigned long *)0x4000552C))

#define SYSCTL_RCGC2_R          (*((volatile unsigned long *)0x400FE108))


// ***** 2. Global Declarations Section *****

// FUNCTION PROTOTYPES: Each subroutine defined

void DisableInterrupts(void);
void EnableInterrupts(void);
void PortE_Init(void);
void PortB_Init(void);
void Delay50ms(void);
void Delay100ms(void);

// ***** 3. Subroutines Section *****

int main(void){ 
	unsigned long In1, In2; 
	
		
  PortB_Init();
	PortE_Init(); 
	EnableInterrupts();
	GPIO_PORTB_DATA_R = 0x04;
	Delay100ms();
	
  while(1){
		In1 = GPIO_PORTE_DATA_R&0x01; 
		In2 = GPIO_PORTE_DATA_R&0x02;
		
		if (In1 == 1){
			
		if (GPIO_PORTB_DATA_R == 0x04){
			GPIO_PORTB_DATA_R = 0x02;
			Delay100ms();
		}
		
		else if (GPIO_PORTB_DATA_R == 0x02){
			GPIO_PORTB_DATA_R = 0x01;
			Delay100ms();
		}
		
		else if (GPIO_PORTB_DATA_R == 0x01) {
			GPIO_PORTB_DATA_R = 0x04;
			Delay100ms();
		}
	}
		
	if (In2 == 2){
	
		if (GPIO_PORTB_DATA_R == 0x04){
			GPIO_PORTB_DATA_R = 0x00;
			Delay50ms();
			GPIO_PORTB_DATA_R = 0x04;
			Delay50ms();
		}
		
		else if (GPIO_PORTB_DATA_R == 0x02){
			GPIO_PORTB_DATA_R = 0x00;
			Delay50ms();
			GPIO_PORTB_DATA_R = 0x02;
			Delay50ms();
		}
		
		else if (GPIO_PORTB_DATA_R == 0x01){
			GPIO_PORTB_DATA_R = 0x00;
			Delay50ms();
			GPIO_PORTB_DATA_R = 0x01;
			Delay50ms();
		}
	}
}
	}

	void PortE_Init(void) {
		volatile unsigned long delay;
		SYSCTL_RCGC2_R |= 0x00000010;
		delay = SYSCTL_RCGC2_R;
		GPIO_PORTE_CR_R |= 0x03;
		GPIO_PORTE_AMSEL_R = 0x03;
		GPIO_PORTE_PCTL_R = 0x00000FFF;
		GPIO_PORTE_DIR_R |= 0x03;
		GPIO_PORTE_AFSEL_R = 0x00;
		GPIO_PORTE_DEN_R = 0x1F;
	}
	
	void PortB_Init(void){
		volatile unsigned long delay;
		SYSCTL_RCGC2_R |= 0x00000002;
		delay = SYSCTL_RCGC2_R;
		GPIO_PORTB_CR_R |= 0x07;
		GPIO_PORTB_AMSEL_R = 0x07;
		GPIO_PORTB_PCTL_R = 0X00000FFF;
		GPIO_PORTB_DIR_R |= 0x07;
		GPIO_PORTB_AFSEL_R = 0x00;
		GPIO_PORTB_DEN_R = 0x1F;
	}
	
	void Delay50ms(void){unsigned long volatile time;	
		time = (727240*100/91);	
		while(time){
			time--;
		}
	}
	
	void Delay100ms(void){unsigned long volatile time;
		time = (727240*200/91);
		while(time){
			time--;
		}
	}
