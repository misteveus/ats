
#include "lora.h"

void lora_init(void) {
    lora_mode_sleep();

    uint8_t reg;

    reg = lora_reg_read(LORA_REG_OP_MODE);
    reg |= 0x80; // set lora mode
    reg &= ~0x08; // clear low freq mode (use 902 - 928MHz band)
    reg &= ~0x40; // clear shared reg mode (use lora pages))

    // commit changes
    lora_reg_write(LORA_REG_OP_MODE, reg);

    // set radio frequency to 915.5MHz = 32MHz * 0xe4d000 / 2^19
    lora_reg_write(LORA_REG_FRF_MSB, 0xe4);
    lora_reg_write(LORA_REG_FRF_MSB, 0xd0);
    lora_reg_write(LORA_REG_FRF_MSB, 0x00);

    lora_mode_standby();
}

uint8_t lora_reg_read(const LoraRegAddr_t reg) {
    uint8_t data[2];

    data[0] = LORA_OP_READ | reg;
    data[1] = 0x00;

    spi1_transmit(data, data, 2);

    return data[1];
}

void lora_reg_write(const LoraRegAddr_t reg, const uint8_t value) {
    uint8_t data[2];

    data[0] = LORA_OP_WRITE | reg;
    data[1] = value;

    spi1_transmit(data, NULL, 2);
}

void lora_mode_sleep(void) {
    uint8_t op_mode;

    op_mode = lora_reg_read(LORA_REG_OP_MODE);
    op_mode &= 0xf8;

    lora_reg_write(LORA_REG_OP_MODE, op_mode);
}

void lora_mode_standby(void) {
    uint8_t op_mode;

    op_mode = lora_reg_read(LORA_REG_OP_MODE);
    op_mode &= 0xf9;

    lora_reg_write(LORA_REG_OP_MODE, op_mode);
}

void lora_mode_transmit(void) {
    uint8_t op_mode;

    op_mode = lora_reg_read(LORA_REG_OP_MODE);
    op_mode &= 0xfb;

    lora_reg_write(LORA_REG_OP_MODE, op_mode);
}

void lora_mode_rxcontinuous(void) {
    uint8_t op_mode;

    op_mode = lora_reg_read(LORA_REG_OP_MODE);
    op_mode &= 0xfd;

    lora_reg_write(LORA_REG_OP_MODE, op_mode);
}

void lora_mode_rxsingle(void) {
    uint8_t op_mode;

    op_mode = lora_reg_read(LORA_REG_OP_MODE);
    op_mode &= 0xfe;

    lora_reg_write(LORA_REG_OP_MODE, op_mode);
}

void lora_mode_cad(void) {
    uint8_t op_mode;

    op_mode = lora_reg_read(LORA_REG_OP_MODE);
    op_mode &= 0xff;

    lora_reg_write(LORA_REG_OP_MODE, op_mode);
}
