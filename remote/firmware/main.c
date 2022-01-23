#include "devcfg.h"

#include <xc.h>

#include <timers.h>
#include <interrupts.h>
#include <spi.h>
#include <uart.h>
#include <lora.h>

static const uint8_t command[0xff] = {0x03, 0x00};

void init(void);

int main(void) {
    init();

    while (1) {

        // wait
        for (int i = 0; i < 10000; i++);
    }
}

void init(void) {
    interrupts_init();
    tmr0_init();
    spi1_init();
    uart_init();
    lora_init();
}
