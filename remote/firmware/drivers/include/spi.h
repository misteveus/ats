#ifndef SPI_H
#define	SPI_H

#include <xc.h>

void spi1_init(void);
int spi1_transmit(const uint8_t *send, uint8_t *recv, const size_t size);

#endif	/* SPI_H */
