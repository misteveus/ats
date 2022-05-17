#include "uart.h"

void uart_init(void) {
    U1CON1bits.ON = 0;

    U1CON0bits.RXEN = 1;
    U1CON0bits.TXEN = 1;

    U1CON0bits.MODE = 0;
    U1CON0bits.BRGS = 1;

    U1BRG = 25; // ( 1,000,000 / (4 * 9600) ) - 1

    // TRISx: Set PORTx to input (1) or (0) output
    TRISC |= _TRISC_TRISC5_MASK;
    TRISC &= ~_TRISC_TRISC4_MASK;

    // ANSELx: Set PORTx to analog (1) or digital (0)
    ANSELC &= ~_ANSELC_ANSELC5_MASK;
    ANSELC &= ~_ANSELC_ANSELC4_MASK;

    // RxyPPS: Map peripheral to output pin
    RC4PPS = 0x10;

    // xyzPPS: Map input pin to peripherals
    U1RXPPS = 0x15; // RC5

    U1CON1bits.ON = 1;

}

void uart_write(const uint8_t msg[], const size_t size) {
    for (size_t idx = 0; idx < size && msg[idx] != '\0'; idx++) {
        uart_putc(msg[idx]);
    }
}

void uart_putc(const uint8_t ch) {

    for (size_t i = 0; i < 25; i++);

    U1TXB = ch;


}
