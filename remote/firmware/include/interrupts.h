#ifndef INTERRUPTS_H
#define	INTERRUPTS_H

#include <xc.h> 

void interrupts_init(void);

void __interrupt(irq(IRQ_INT0)) ISR_int0(void);
void __interrupt(irq(IRQ_TMR0)) ISR_tmr0(void);
void __interrupt(irq(default)) ISR_default(void);


#endif	/* INTERRUPTS_H */

