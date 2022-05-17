#ifndef UART_H
#define	UART_H

#include <xc.h>  

const uint8_t GPS_CMD_ENABLE_ALL[] = {"@BSSL 0x7\r\n"};
const uint8_t GPS_CMD_RESET[] = {"@RST\r\n"};
const uint8_t GPS_CMD_SLEEP[] = {"@SLP\r\n"};

void uart_init(void);
void uart_write(const uint8_t msg[],const size_t size);
void uart_putc(const uint8_t ch);

#endif	/* UART_H */

