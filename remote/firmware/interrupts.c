
#include "interrupts.h"

// Multi-vector should be enabled in devcfg.h (CONFIG3):
// #pragma config MVECEN = ON
// The interrupt vector table default base address is 0x00008 
// and not changed 
void interrupts_init() {
    // Disable interrupts
    INTCON0bits.GIE = 0;
    
    // Enable high priority interrupts
    INTCON0bits.GIEH = 1; 
    
    // Enable low priority interrupts
    INTCON0bits.GIEL = 1; 
    
    // Enable interrupt priority
    INTCON0bits.IPEN = 1; 

    // Enable interrupt INT0 on its default port: RA2
    PIE1bits.INT0IE = 1;
    
    // Set interrupt INT0 to low priority
    IPR1bits.INT0IP = 0;

    // Enable interrupts
    INTCON0bits.GIE = 1;
}

// This interrupt is activated by a rising edge on port RA2
// which purpose is to indicate the lora module has received 
// the correct preamble for a message.
void ISR_int0(void) {
    _asm("NOP");
}

void ISR_default(void) {
    while(1)
    {
        // Clear interrupt flag
        PIR1bits.INT0IF = 0;
    }
}
