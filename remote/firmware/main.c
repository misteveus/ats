#include "devcfg.h"

#include <xc.h>

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
    lora_init();
}
