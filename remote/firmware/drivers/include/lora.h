#ifndef LORA_H
#define	LORA_H

#include <xc.h>  

#include <spi.h>

typedef enum LoraRegAddr {
    LORA_REG_FIFO                = (uint8_t) 0x00,
    LORA_REG_OP_MODE             = (uint8_t) 0x01,
    LORA_REG_FRF_MSB             = (uint8_t) 0x06,
    LORA_REG_FRF_MID             = (uint8_t) 0x07,
    LORA_REG_FRF_LSB             = (uint8_t) 0x08,
    LORA_REG_PA_CONFIG           = (uint8_t) 0x09,
    LORA_REG_PA_RAMP             = (uint8_t) 0x0A,
    LORA_REG_OCP                 = (uint8_t) 0x0B,
    LORA_REG_LNA                 = (uint8_t) 0x0C,
    LORA_REG_FIFO_ADDR_PTR       = (uint8_t) 0x0D,
    LORA_REG_FIFO_TX_BASE_ADDR   = (uint8_t) 0x0E,
    LORA_REG_FIFO_RX_BASE_ADDR   = (uint8_t) 0x0F,
            
    LORA_REG_FIFO_RX_CURRENT_ADDR = (uint8_t) 0x10,
    LORA_REG_IRQ_FLAGS_MASK      = (uint8_t) 0x11,
    LORA_REG_IRQ_FLAGS           = (uint8_t) 0x12,
    LORA_REG_RX_NB_BYTES         = (uint8_t) 0x13,
    LORA_REG_RX_HEADER_CNT_VALUE_MSB = (uint8_t) 0x14,
    LORA_REG_RX_HEADER_CNT_VALUE_LSB = (uint8_t) 0x15,
    LORA_REG_RX_PKT_CNT_VALUE_MSB = (uint8_t) 0x16,
    LORA_REG_RX_PKT_CNT_VALUE_LSB = (uint8_t) 0x17,
    LORA_REG_MODEM_STAT          = (uint8_t) 0x18,
    LORA_REG_PKT_SNR_VALUE       = (uint8_t) 0x19,
    LORA_REG_PKT_RSSI_VALUE      = (uint8_t) 0x1A,
    LORA_REG_RSSI_VALUE          = (uint8_t) 0x1B,
    LORA_REG_HOP_CHANNEL         = (uint8_t) 0x1C,
    LORA_REG_MODEM_CONFIG        = (uint8_t) 0x1D,
    LORA_REG_MODEM_CONFIG_2      = (uint8_t) 0x1E,
    LORA_REG_SYMB_TIMEOUT_LSB    = (uint8_t) 0x1F,
    LORA_REG_PREAMBLE_MSB        = (uint8_t) 0x20,
    LORA_REG_PREAMBLE_LSB        = (uint8_t) 0x21,
    LORA_REG_PAYLOAD_LENGTH      = (uint8_t) 0x22,
    LORA_REG_MAX_PAYLOAD_LENGTH  = (uint8_t) 0x23,
    LORA_REG_HOP_PERIOD          = (uint8_t) 0x24,
    LORA_REG_FIFORX_BYTE_ADDR    = (uint8_t) 0x25,
    LORA_REG_MODEM_CONFIG_3      = (uint8_t) 0x26,
            
    LORA_REG_DIO_MAPPING_1       = (uint8_t) 0x40,
    LORA_REG_DIO_MAPPING_2       = (uint8_t) 0x41,
    LORA_REG_VERISON             = (uint8_t) 0x42,
    LORA_REG_TCXO                = (uint8_t) 0x4B,
    LORA_REG_PA_DAC              = (uint8_t) 0x4D,
    LORA_REG_FORMER_TEMP         = (uint8_t) 0x5B,
    LORA_REG_AGC_REF             = (uint8_t) 0x61,
    LORA_REG_AGC_THRESH_1        = (uint8_t) 0x62,
    LORA_REG_AGC_THRESH_2        = (uint8_t) 0x63,
    LORA_REG_AGC_THRESH_3        = (uint8_t) 0x64,
} LoraRegAddr_t;

typedef enum LoraRegIoOp {
    LORA_OP_READ  = (uint8_t) 0x00,
    LORA_OP_WRITE = (uint8_t) 0x80,
} LoraRegOp_t;

void lora_init(void);
uint8_t lora_reg_read(const LoraRegAddr_t reg);
void lora_reg_write(const LoraRegAddr_t reg, const uint8_t value);
void lora_mode_sleep(void);
void lora_mode_standby(void);
void lora_mode_transmit(void);
void lora_mode_rxcontinuous(void);
void lora_mode_rxsingle(void);
void lora_mode_cad(void);
#endif	/* LORA_H */
