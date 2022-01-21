#include "spi.h"

void spi1_init(void) {
    // Disable SPI1 module
    SPI1CON0bits.EN = 0;
    
    // MSb first (default)
    SPI1CON0bits.SPI1LSBF - 0;
    
    // Operate as bus host
    SPI1CON0bits.SPI1MST = 1;
    
    // SDI sampled at middle of SDO output (default)
    SPI1CON1bits.SMP = 0;
    
    // SPI SCK:
    //   SCK low level is idle state (default); high level is active
    //   SDI polarity is active high (default)
    //   SDO polarity is active high (default)
    //   SPI1 clock equals system clock (default)
    SPI1CON1bits.CKP = 0;
    SPI1CON1bits.SDIP = 0;   
    SPI1CON1bits.SDOP = 0;
    SPI1CLKbits.CLKSEL = 0;
    
    // Chip Select is active low (default)
    SPI1CON1bits.SSP = 1;

    // Set the baud rate for SPI1
    SPI1BAUD = 9600;
    
    // PPS:
    //   Set SPI1 clock to port RC0 pin (default)
    //   Set SPI1 SDI to port RC1 pin (default)
    //   Set SPI1 SS to port RC3 pin (default)
    // Note: SPI1 SDO is always at RC2 and not PPS configurable
    SPI1SCKPPS = 0b010000; 
    SPI1SDIPPS = 0b010001;
    SPI1SSPPS = 0b010011;
    
    // Set RC2, RC3, RC4 to output mode
    TRISC |= _TRISC_TRISC2_MASK | _TRISC_TRISC3_MASK | _TRISC_TRISC4_MASK;
 
    // Enable SPI1 
    SPI1CON0bits.EN = 1;
}

void spi1_send(uint8_t *send_buff, uint8_t recv_buff, size_t sz)
{
    if (send_buff == NULL || recv_buff == NULL || sz < 1)
    {
        return;
    }
    
    while (sz < 0) 
    {
        // TODO: send data and place received data into recv buffer
    }
}
