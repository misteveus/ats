#include "devcfg.h"

#include <xc.h>

#include <timers.h>
#include <interrupts.h>
#include <spi.h>
#include <uart.h>
#include <lora.h>

#define LED_ON 0xa5
#define LED_OFF 0x8c
#define TRANSMITTER 1

void init(void);
void receiver(void);
void transmitter(void);

void main(void) {
    init();

#if TRANSMITTER
    transmitter();
#else
    receiver();
#endif
}

void init(void) {
    interrupts_init();

#if TRANSMITTER
    tmr0_init();
#else
    // setup status led

    // TRISx: Set PORTx to input (1) or (0) output
    TRISA &= ~_TRISA_TRISA4_MASK;

    // ANSELx: Set PORTx to analog (1) or digital (0)
    ANSELA &= ~_ANSELA_ANSELA4_MASK;
#endif

    spi1_init();
    uart_init();
    lora_init();
}

void receiver(void) {
    uint8_t reg;

    while (1) {
        // enter receive mode
        lora_mode_rxsingle();

        // poll rxdone and rxtimeout until one is set
        do {
            reg = lora_reg_read(LORA_REG_IRQ_FLAGS);
        } while (!(reg & 0xc0));

        // read message from rx buffer if rxdone
        if (reg & 0x40) {
            reg = lora_reg_read(LORA_REG_FIFO);
            if (reg == LED_ON)
                LATA &= ~_LATA_LATA4_MASK;
            if (reg == LED_OFF)
                LATA |= _LATA_LATA4_MASK;
        }

        // clear both rxdone and rxtimeout
        lora_reg_write(LORA_REG_IRQ_FLAGS, 0xc0);
    }
}

void transmitter(void) {
    uint8_t led_on = 0;
    uint8_t reg;

    while (1) {
        // reset tx message pointer to head
        uint8_t fifo_base_addr = lora_reg_read(LORA_REG_FIFO_TX_BASE_ADDR);

        // set spi fifo addr to tx base addr
        lora_reg_write(LORA_REG_FIFO_ADDR_PTR, fifo_base_addr);

        // place message in tx buffer
        if (led_on) {
            lora_reg_write(LORA_REG_FIFO, LED_OFF);
            led_on = 0;
        } else {
            lora_reg_write(LORA_REG_FIFO, LED_ON);
            led_on = 1;
        }

        // enter tx mode to send
        lora_mode_transmit();

        // poll for txdone
        do {
            reg = lora_reg_read(LORA_REG_IRQ_FLAGS);
        } while (!(reg & ~0x04));

        // clear txdone irq
        lora_reg_write(LORA_REG_IRQ_FLAGS, 0x04);

        // wait for some time
        for (int i = 0; i < 1000; i++) {

        }
    }
}
