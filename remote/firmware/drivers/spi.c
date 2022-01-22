#include "spi.h"

void spi1_init(void) {
    // Disable SPI1 module
    SPI1CON0bits.EN = 0;
    
    // MSb first (default)
    SPI1CON0bits.SPI1LSBF = 0;
    
    // Operate as bus host
    SPI1CON0bits.SPI1MST = 1;
    
    // Host mode: Full-Duplex
    SPI1CON0bits.BMODE = 1;
    SPI1CON2bits.TXR = 1;
    SPI1CON2bits.RXR = 1;
   
    SPI1TWIDTH = 8; 
    
    // SDI sampled at middle of SDO output (default)
    SPI1CON1bits.SMP = 0;
    
    // SPI SCK:
    //   SCK low level is idle state (default); high level is active
    //   SDI polarity is active high (default)
    //   SDO polarity is active high (default)
    //   SPI1 clock equals system clock (default)
    SPI1CON1bits.CKP = 0;
    SPI1CON1bits.CKE = 1;
    SPI1CON1bits.SMP = 1;
    SPI1CON1bits.SDIP = 0;   
    SPI1CON1bits.SDOP = 0;
    SPI1CLKbits.CLKSEL = 0;
    
    // Chip Select is active low 
    SPI1CON1bits.SSP = 1;

    // Set the baud rate for SPI1 to ~9600 (Fbaud = Fosc / 2 * (BAUD + 1))
    SPI1BAUD = 52;
    
    // PPS Outputs:
    RC3PPS = 0x1D; // Set SPI1 SS to port RC3 pin 
    RC2PPS = 0x1B; // Set SPI1 SCK to port RC2 pin 
    RC1PPS = 0x1C; // Set SPI1 SDO to port RC1 pin 

    
    // PPS Inputs:
   // SPI1SDIPPS = 0x11; // Set SPI1 SDI to RC1 pin
 
    // Set RC3, RC2, RC1 to output mode
    TRISC &= ~_TRISC_TRISC3_MASK;
    TRISC &= ~_TRISC_TRISC2_MASK;
    TRISC &= ~_TRISC_TRISC1_MASK;
 
    // Enable SPI1 
    SPI1CON0bits.EN = 1;
}

// send_buff and recv_buff should both be not-null and have a size 
// the same size: sz (how much data to send/receive). Be aware that every byte 
// of data sent will read the response into the receive buffer whether 
// a response is expected or not.
void spi1_send(uint8_t *send_buff, uint8_t *recv_buff, size_t sz)
{
    if (send_buff == NULL || recv_buff == NULL || sz < 1)
    {
        return;
    }
    
    size_t buff_idx = 0;
    while (sz > 0) 
    {
        if (SPI1CON2bits.BUSY)
        {
            continue;
        }
        else
        {
            // Set total bytes to send
            SPI1TCNT = sz;
            
            // send next byte
            SPI1TXB = send_buff[buff_idx];
            
            // add sync delay before reading BUSY flag (up to 2 cycles)
            __asm("NOP");
            __asm("NOP");
            
            // wait until done sending
            while(SPI1CON2bits.BUSY) { };
            
            // read received byte
            recv_buff[buff_idx] = SPI1RXB;
            
            buff_idx++; 
            sz--;
        }
    }
}
