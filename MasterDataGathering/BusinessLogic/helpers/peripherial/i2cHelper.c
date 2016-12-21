#include "i2cHelper.h"
#include "stm32f2xx.h"
#include "stm32f2xx_gpio.h"
#include "stm32f2xx_rcc.h"

const unsigned int i2cDelay = 100000;

static void BeginTransaction(I2C_TypeDef* i2cx, unsigned char address, unsigned char direction);
static void EndTransaction(I2C_TypeDef* i2cx);

//todo: umv: think about common init
//todo: umv: think about spin-block not forever loop inside read and write

void InitislizeI2C()
{
    I2C_InitTypeDef  i2cInitStructure;
    GPIO_InitTypeDef  gpioInitStructure;

    RCC_APB1PeriphClockCmd(RCC_APB1Periph_I2C1,ENABLE);
    RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOB, ENABLE);//

    /* Configure I2C1 pins: PB6->SCL and PB7->SDA */
    gpioInitStructure.GPIO_Pin =  GPIO_Pin_6 | GPIO_Pin_7;
    gpioInitStructure.GPIO_Speed = GPIO_Speed_100MHz;
    gpioInitStructure.GPIO_Mode = GPIO_Mode_AF;
    GPIO_Init(GPIOB, &gpioInitStructure);

    I2C_DeInit(I2C1);
    i2cInitStructure.I2C_Mode = I2C_Mode_I2C;
    i2cInitStructure.I2C_DutyCycle = I2C_DutyCycle_2;
    i2cInitStructure.I2C_OwnAddress1 = 0x1F;
    i2cInitStructure.I2C_Ack = I2C_Ack_Enable;
    i2cInitStructure.I2C_AcknowledgedAddress = I2C_AcknowledgedAddress_7bit;
    i2cInitStructure.I2C_ClockSpeed = 100000;  /* 100kHz */

    I2C_Cmd(I2C1, ENABLE);
    I2C_Init(I2C1, &i2cInitStructure);
    I2C_AcknowledgeConfig(I2C1, ENABLE);
}

unsigned char WriteByte(I2C_TypeDef* i2cx, unsigned char address, unsigned char data)
{
    BeginTransaction(i2cx, address, I2C_Direction_Transmitter);
    I2C_SendData(i2cx, data);
    unsigned char result = 0;
    for(unsigned int counter = 0; counter < i2cDelay; counter++)
    {
        result = I2C_CheckEvent(i2cx, I2C_EVENT_MASTER_BYTE_TRANSMITTED);
        if(result)
        	break;
    }
    EndTransaction(i2cx);
    return result;
}

unsigned short WriteData(I2C_TypeDef* i2cx, unsigned char address, unsigned char* data, unsigned short length)
{
	unsigned short bytesWritten = 0;
    BeginTransaction(i2cx, address, I2C_Direction_Transmitter);
    for(unsigned short counter = 0; counter < length; counter++)
    {
        I2C_SendData(i2cx, data[counter]);
        unsigned char result = 0;
        for(unsigned int delayCounter = 0; delayCounter < i2cDelay; delayCounter++)
        {
            unsigned char result = I2C_CheckEvent(i2cx, I2C_EVENT_MASTER_BYTE_TRANSMITTED);
            if(result)
                break;
        }
        if(!result)
        {
            bytesWritten = counter + 1;
            break;
        }
        bytesWritten++;
    }
    EndTransaction(i2cx);
    return bytesWritten;
}

unsigned char ReadByte(I2C_TypeDef* i2cx, unsigned char address)
{
    unsigned char data = 0;
    BeginTransaction(i2cx, address, I2C_Direction_Receiver);
    for(unsigned int dataCounter = 0; dataCounter < i2cDelay; dataCounter++)
    {
        unsigned char result = I2C_CheckEvent(i2cx, I2C_EVENT_MASTER_BYTE_RECEIVED);
        if(result)
        {
            data = I2C_ReceiveData(i2cx);
            break;
        }
    }
    return data;
    EndTransaction(i2cx);
}

int ReadData(I2C_TypeDef* i2cx, unsigned char address, unsigned char* buffer, unsigned short bufferLength)
{
    int bytesReceived = 0;
    BeginTransaction(i2cx, address, I2C_Direction_Receiver);
    for(unsigned short counter = 0; counter < bufferLength; counter++)
    {
        unsigned char result;
        for(unsigned int delayCounter = 0; delayCounter < i2cDelay; delayCounter++)
        {
            result = I2C_CheckEvent(i2cx, I2C_EVENT_MASTER_BYTE_RECEIVED);
            if(result)
            {
                buffer[counter] = I2C_ReceiveData(i2cx);
                bytesReceived++;
                break;
            }
            if(!result)
                break;
        }

    }
    EndTransaction(i2cx);
    return bytesReceived;
}

static void BeginTransaction(I2C_TypeDef* i2cx, unsigned char address, unsigned char direction)
{
    while(I2C_GetFlagStatus(i2cx, I2C_FLAG_BUSY));
    I2C_GenerateSTART(i2cx, ENABLE);
    while(!I2C_CheckEvent(i2cx, I2C_EVENT_MASTER_MODE_SELECT));
    I2C_Send7bitAddress(i2cx, address, direction);
}

static void EndTransaction(I2C_TypeDef* i2cx)
{
    I2C_GenerateSTOP(i2cx, DISABLE);
}
