
#include <timers.h>

void tmr0_init(void) {
    // T0CON0
    //   EN: Enable(1)/Disable(0) timer 0
    //   MD16: Enable(1)/Disable(0) 16-bit mode
    //   OUTPS: Post-scaler ratio
    T0CON0bits.EN = 0;
    T0CON0bits.MD16 = 0;
    T0CON0bits.OUTPS = 0xf;

    // T0CON1
    //   CS: Clock source
    //   ASYNC: Async(1)/Sync(0)
    //   CKPS: Pre-scaler ratio
    T0CON1bits.CS = 2;
    T0CON1bits.ASYNC = 0;
    T0CON1bits.CKPS = 0x8;

    // TMR0H: TMR0 MSB
    // TMR0L: TMR0 LSB
    TMR0H = 0x02;
    TMR0L = 0x00;

    // IPR3
    //   TMR0IP: High(1)/Low(0) priority
    IPR3bits.TMR0IP = 0;

    // PIE3
    //   TMR0IE: Enable(1)/Disable(0) interrupt
    PIE3bits.TMR0IE = 1;

    // TRISx: Set PORTx to input (1) or (0) output
    TRISA &= ~_TRISA_TRISA4_MASK;

    // ANSELx: Set PORTx to analog (1) or digital (0)
    ANSELA &= ~_ANSELA_ANSELA4_MASK;

    T0CON0bits.EN = 1;
}
