
#include "interrupts.h"

void ISR_default(void) {
    while(1)
    {
        __asm("NOP");
    }
}
