#include "spi.h"

void spi1_init(void) {
    // Disable SPI1 module
    SPI1CON0bits.EN = 0;

    // Clear buffer error flags
    SPI1STATUSbits.TXWE = 0;
    SPI1STATUSbits.RXRE = 0;

    // MSb first (default)
    SPI1CON0bits.SPI1LSBF = 0;

    // Operate as bus host
    SPI1CON0bits.SPI1MST = 1;

    // Host mode: Full-Duplex
    SPI1CON0bits.BMODE = 1;
    SPI1CON2bits.TXR = 1;
    SPI1CON2bits.RXR = 1;

    // Fast start enable - reduce time between cs assert and first sck
    SPI1CON1bits.FST = 1;

    // Bits per byte
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
    SPI1BAUD = 0; // 52;

    // PPS Outputs:
    RC3PPS = 0x1D; // Set SPI1 SS to port RC3 pin
    RC2PPS = 0x1B; // Set SPI1 SCK to port RC2 pin
    RC1PPS = 0x1C; // Set SPI1 SDO to port RC1 pin

    // PPS Inputs:
    SPI1SDIPPS = 0x10; // Set SPI1 SDI to RC0 pin

    // Set RC3, RC2, RC1 to output mode
    TRISC &= ~_TRISC_TRISC3_MASK;
    TRISC &= ~_TRISC_TRISC2_MASK;
    TRISC &= ~_TRISC_TRISC1_MASK;

    // Set RC0 to input mode
    TRISC |= _TRISC_TRISC0_MASK;

    // Set pins to digital
    ANSELC &= ~_TRISC_TRISC3_MASK;
    ANSELC &= ~_TRISC_TRISC2_MASK;
    ANSELC &= ~_TRISC_TRISC1_MASK;
    ANSELC &= ~_TRISC_TRISC0_MASK;

    // Enable SPI1
    SPI1CON0bits.EN = 1;
}

//
// Returns:
//     0: Successful
//    -1: Error
//

int spi1_send(uint8_t *data, size_t sz) {
    if (data == NULL || sz < 1) {
        return -1;
    }

    // Set total bytes to send
    SPI1TCNT = sz;

    // Track bytes already sent / received
    // Also act as indecises into users data buffer
    uint8_t added_to_tx = 0;
    uint8_t removed_from_rx = 0;

    while (added_to_tx < sz) {
        if (SPI1CON2bits.BUSY) {
            continue;
        } else {
            SPI1INTFbits.SRMTIF = 0;

            SPI1TXB = data[added_to_tx++];

            while (!SPI1INTFbits.SRMTIF) {
                // wait for shift reg to empty
            }

            SPI1INTFbits.SRMTIF = 0;

            data[removed_from_rx++] = SPI1RXB; //  SPI1STATUS
        }
    }

    if (removed_from_rx < added_to_tx) {
        return -1;
    } else {
        return 0;
    }
}
