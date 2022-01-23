#ifndef SPI_H
#define	SPI_H

#include <xc.h>

void spi1_init(void);
int spi1_send(uint8_t *data, size_t sz);

#endif	/* SPI_H */
