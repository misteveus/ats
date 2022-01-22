#include "devcfg.h"

#include <xc.h>

#include <interrupts.h>
#include <spi.h>
#include <uart.h>
#include <lora.h>

static uint8_t command[2] = { 0x06, 0x00 };
static uint8_t received[2];

void init(void);
void tmr0_init(void);
int main(void)
{
    init();
    
    while(1)
    {
        spi1_send(command, received, 2);
        
        // wait
        for (int i = 0; i < 10000; i++);
    } 
}

void init(void)
{
    interrupts_init();
    tmr0_init();
    spi1_init();
    uart_init();
    lora_init();
    
    TRISA &=  ~_TRISA_TRISA4_MASK;
}

void tmr0_init() {
    // Disable TMR0
    T0CON0bits.EN = 0;
    
    // TMR0 in 16-bit mode
    T0CON0bits.MD16 = 0;
    
    // TMR0 Postscaler(divider) 
    T0CON0bits.OUTPS = 0xf;
    
    // Clock source is Fosc / 4
    T0CON1bits.CS = 2;
    
    // clock is synchronized
    T0CON1bits.ASYNC = 0;
    
    // Prescaler
    T0CON1bits.CKPS = 0x8;
    
    TMR0H = 0x02;
    TMR0L = 0x00;
    
    // Enable low priority interrupt
    IPR3bits.TMR0IP = 0;
    PIE3bits.TMR0IE = 1;
    
    T0CON0bits.EN = 1;
}
