#include "devcfg.h"

#include <xc.h>

#include <interrupts.h>
#include <spi.h>
#include <uart.h>
#include <lora.h>

void init(void);

int main(void)
{
    init();
    
    while(1)
    {
        
    } 
}

void init(void)
{
    interrupts_init();
    spi1_init();
    uart_init();
    lora_init();
}
