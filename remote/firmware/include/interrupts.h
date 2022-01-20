#ifndef INTERRUPTS_H
#define	INTERRUPTS_H

#include <xc.h> 

void interrupts_init();

void __interrupt(irq(default)) ISR_default(void);


#endif	/* INTERRUPTS_H */

