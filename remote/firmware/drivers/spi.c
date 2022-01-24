#include "spi.h"

void spi1_init(void) {
    // SPI1CON0
    //   EN: Enable(1)/Disable(0) SPI1 module
    //   SPI1LSBF: MSB(1)/LSB(0) first
    //   SPI1MST: Host(1)/Client(0) mode
    //   BMODE:
    SPI1CON0bits.EN = 0;
    SPI1CON0bits.SPI1LSBF = 0;
    SPI1CON0bits.SPI1MST = 1;
    SPI1CON0bits.BMODE = 1;

    // SPI1CON1
    //   FST: Enable(1)/Disable(0) Fast start
    //   SMP: (1) Sample after at least 1/2 baud, (0) sample earlier than 1/2
    SPI1CON1bits.FST = 1;
    SPI1CON1bits.SMP = 0;
    SPI1CON1bits.CKP = 0;
    SPI1CON1bits.CKE = 1;
    SPI1CON1bits.SMP = 1;
    SPI1CON1bits.SDIP = 0;
    SPI1CON1bits.SDOP = 0;
    SPI1CON1bits.SSP = 1;

    // SPI1CON2
    //   TXR: (1) TxFIFO data required for transfer
    //   RXR: (1) suspend transfers on RxFIFO full
    SPI1CON2bits.TXR = 1;
    SPI1CON2bits.RXR = 1;

    // SPI1STATUS
    //   TXWE: (1) TX buffer error (written when full)
    //   RXRE: (1) RX buffer error (read when empty)
    SPI1STATUSbits.TXWE = 0;
    SPI1STATUSbits.RXRE = 0;

    // SPI1TWIDTH: N bits per byte (if BMODE = 1)
    SPI1TWIDTH = 8;

    // SPI1CLK:
    //   CLKSEL: Clock source selection
    SPI1CLKbits.CLKSEL = 0;

    // SPI1BAUD: Set the baud rate (SPI1BAUD = Fosc / 2 * (BAUD + 1))
    SPI1BAUD = 0; // 52;

    // RxyPPS: Map peripheral to output pin
    RC3PPS = 0x1D; // Set SPI1 SS to port RC3 pin
    RC2PPS = 0x1B; // Set SPI1 SCK to port RC2 pin
    RC1PPS = 0x1C; // Set SPI1 SDO to port RC1 pin

    // xyzPPS: Map input pin to peripherals
    SPI1SDIPPS = 0x10; // Set SPI1 SDI to RC0 pin

    // TRISx: (1) PORTx is input, (0) PORTx is output
    TRISC &= ~_TRISC_TRISC3_MASK; // output
    TRISC &= ~_TRISC_TRISC2_MASK; // output
    TRISC &= ~_TRISC_TRISC1_MASK; // output
    TRISC |= _TRISC_TRISC0_MASK; // input

    // ANSELx: (1) PORTx is analog, (0) PORTx is digital
    ANSELC &= ~_TRISC_TRISC3_MASK;
    ANSELC &= ~_TRISC_TRISC2_MASK;
    ANSELC &= ~_TRISC_TRISC1_MASK;
    ANSELC &= ~_TRISC_TRISC0_MASK;

    SPI1CON0bits.EN = 1;
}

int spi1_transmit(const uint8_t *send, uint8_t *recv, const size_t size) {
    if (send == NULL || size < 1) {
        return -1;
    }

    // SPI1TCNT: Total count of bytes to be sent
    //   Needs to be set so the CS is asserted correctly
    SPI1TCNT = size;

    uint8_t n_added = 0;
    uint8_t n_removed = 0;

    while (n_added < size) {
        if (SPI1CON2bits.BUSY) {
            continue;
        }

        SPI1INTFbits.SRMTIF = 0;
        SPI1TXB = send[n_added++];

        while (!SPI1INTFbits.SRMTIF) {
            // wait for shift register to empty
        }

        SPI1INTFbits.SRMTIF = 0;
        if (recv != NULL)
            recv[n_removed++] = SPI1RXB;
        else
            SPI1RXB;
    }

    if (recv != NULL && n_removed < n_added) {
        return -1;
    } else if (n_added < size) {
        return 1;
    } else {
        return 0;
    }
}
