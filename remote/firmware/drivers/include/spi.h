#ifndef SPI_H
#define	SPI_H

#include <xc.h>

void spi1_init(void);
void spi1_send(uint8_t *send, uint8_t* recv, size_t sz);

#endif	/* SPI_H */
