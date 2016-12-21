#ifndef I2CHELPER_H
#define I2CHELPER_H

#include "stm32f2xx_i2c.h"

void InitislizeI2C();
unsigned char WriteByte(I2C_TypeDef* i2cx, unsigned char address, unsigned char data);
unsigned short WriteData(I2C_TypeDef* i2cx, unsigned char address, unsigned char* data, unsigned short length);
unsigned char ReadByte(I2C_TypeDef* i2cx, unsigned char address);
int ReadData(I2C_TypeDef* i2cx, unsigned char address, unsigned char* buffer, unsigned short bufferLength);

#endif
