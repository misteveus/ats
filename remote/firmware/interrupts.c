
#include "interrupts.h"

// Multi-vector should be enabled in devcfg.h (CONFIG3):
// #pragma config MVECEN = ON
// The interrupt vector table default base address is 0x00008 
// and not changed 
void interrupts_init() {
    // INTCON0
    //   GIE/GIEH: Enable(1)/Disable(0) all interrupts
    //   GIEL: Enable(1)/Disable(0) low priority interrupts
    //   IPEN: Enable(1)/Disable(1) interrupt priorities
    //   INT0EDG: Rising(1)/Falling(0) edge triggered
    INTCON0bits.GIE = 0;
    INTCON0bits.IPEN = 1; 
    INTCON0bits.INT0EDG = 1;
    
    // PIE1
    //   INT0IE: Enable(1)/Disable(0) INT0 interrupt
    PIE1bits.INT0IE = 1;
 
    // IPR1 
    //   INT0IP: High(1)/Low(0) priority
    IPR1bits.INT0IP = 0;

    INTCON0bits.GIEH = 1; 
    INTCON0bits.GIEL = 1; 
}

// This interrupt is activated by a rising edge on port RA2
// which purpose is to indicate the lora module has received 
// the correct preamble for a message.
void ISR_int0(void) {
    __asm("NOP");
}

// Toggles the status led
void ISR_tmr0(void) {
    static uint8_t count = 0;
    
    // Clear interrupt flag
    PIR3bits.TMR0IF = 0;
    
    // turn on led every 1/32 ticks for 1 tick of the counter
    if (count++ % 0x20)
        LATA &= ~_LATA_LATA4_MASK;
    else
        LATA |= _LATA_LATA4_MASK;
}

void ISR_default(void) {
    while(1)
    {
        // Clear interrupt flag
        PIR1bits.INT0IF = 0;
    }
}
