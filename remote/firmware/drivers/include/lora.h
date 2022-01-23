#ifndef LORA_H
#define	LORA_H

#include <xc.h>  

#include <spi.h>

typedef uint8_t LoraRegAddr_t;
typedef uint8_t LoraRegOp_t;

#define LORA_OP_READ                 (LoraRegOp_t) 0x00
#define LORA_OP_WRITE                (LoraRegOp_t) 0x80

#define LORA_REG_FIFO                (LoraRegAddr_t) 0x00

// Common Registers
#define LORA_REG_OP_MODE             (LoraRegAddr_t) 0x01
#define LORA_REG_FRF_MSB             (LoraRegAddr_t) 0x06
#define LORA_REG_FRF_MID             (LoraRegAddr_t) 0x07
#define LORA_REG_FRF_LSB             (LoraRegAddr_t) 0x08

// RF blocks
#define LORA_REG_PA_CONFIG           (LoraRegAddr_t) 0x09
#define LORA_REG_PA_RAMP             (LoraRegAddr_t) 0x0A
#define LORA_REG_OCP                 (LoraRegAddr_t) 0x0B
#define LORA_REG_LNA                 (LoraRegAddr_t) 0x0C

// Page Registers
#define LORA_REG_FIFO_ADDR_PTR       (LoraRegAddr_t) 0x0D
#define LORA_REG_FIFO_TX_BASE_ADDR   (LoraRegAddr_t) 0x0E
#define LORA_REG_FIFO_RX_BASE_ADDR   (LoraRegAddr_t) 0x0F
#define LORA_REG_IRQ_FLAGS           (LoraRegAddr_t) 0x10
#define LORA_REG_IRQ_FLAGS_MASK      (LoraRegAddr_t) 0x11
#define LORA_REG_FREQ_IF_MSB         (LoraRegAddr_t) 0x12
#define LORA_REG_FREQ_IF_LSB         (LoraRegAddr_t) 0x13
#define LORA_REG_SYMB_TIMEOUT_MSB    (LoraRegAddr_t) 0x14
#define LORA_REG_SYMB_TIMEOUT_LSB    (LoraRegAddr_t) 0x15
#define LORA_REG_TX_CFG              (LoraRegAddr_t) 0x16
#define LORA_REG_PAYLOAD_LENGTH      (LoraRegAddr_t) 0x17
#define LORA_REG_PREAMBLE_MSB        (LoraRegAddr_t) 0x18
#define LORA_REG_PREAMBLE_LSB        (LoraRegAddr_t) 0x19
#define LORA_REG_MODULATION_CFG      (LoraRegAddr_t) 0x1A
#define LORA_REG_RF_MODE             (LoraRegAddr_t) 0x1B
#define LORA_REG_HOP_PERIOD          (LoraRegAddr_t) 0x1C
#define LORA_REG_NB_RX_BYTES         (LoraRegAddr_t) 0x1D
#define LORA_REG_RX_HEADER_INFO      (LoraRegAddr_t) 0x1E
#define LORA_REG_RX_HEADER_CNT_VALUE (LoraRegAddr_t) 0x1F
#define LORA_REG_RX_PACKET_CNT_VALUE (LoraRegAddr_t) 0x20
#define LORA_REG_MODEM_STAT          (LoraRegAddr_t) 0x21
#define LORA_REG_PKT_SNR_VALUE       (LoraRegAddr_t) 0x22
#define LORA_REG_RSSI_VALUE          (LoraRegAddr_t) 0x23
#define LORA_REG_PKT_RSSI_VALUE      (LoraRegAddr_t) 0x24
#define LORA_REG_HOP_CHANNEL         (LoraRegAddr_t) 0x25
#define LORA_REG_RX_DATA_ADDR        (LoraRegAddr_t) 0x26
#define LORA_REG_DIO_MAPPING_1       (LoraRegAddr_t) 0x40
#define LORA_REG_DIO_MAPPING_2       (LoraRegAddr_t) 0x41
#define LORA_REG_VERISON             (LoraRegAddr_t) 0x42
#define LORA_REG_TCXO                (LoraRegAddr_t) 0x4B
#define LORA_REG_PA_DAC              (LoraRegAddr_t) 0x4D
#define LORA_REG_FORMER_TEMP         (LoraRegAddr_t) 0x5B
#define LORA_REG_AGC_REF             (LoraRegAddr_t) 0x61
#define LORA_REG_AGC_THRESH_1        (LoraRegAddr_t) 0x62
#define LORA_REG_AGC_THRESH_2        (LoraRegAddr_t) 0x63
#define LORA_REG_AGC_THRESH_3        (LoraRegAddr_t) 0x64


void lora_init(void);
uint8_t read_lora_reg(LoraRegAddr_t reg, size_t count);
void write_lora_reg(LoraRegAddr_t reg, uint8_t *values, size_t count);

#endif	/* LORA_H */

