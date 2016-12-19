/**
 * @file debug.c
 * @brief Debugging facilities
 *
 * @section License
 *
 * Copyright (C) 2010-2016 Oryx Embedded SARL. All rights reserved.
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software Foundation,
 * Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 *
 * @author Oryx Embedded SARL (www.oryx-embedded.com)
 * @version 1.7.4
 **/

//Dependencies
#include <console_io.h>
#include "mcf52259.h"
#include "twr_mcf5225x.h"
#include "debug.h"


/**
 * @brief Debug UART initialization
 * @param[in] baudrate UART baudrate
 **/

void debugInit(uint32_t baudrate)
{
   uint8_t temp;
   uint16_t div;

   //Configure UTXD0 (PUA0)
   temp = MCF_GPIO_PUAPAR & ~MCF_GPIO_PUAPAR_PUAPAR0(3);
   MCF_GPIO_PUAPAR = temp | MCF_GPIO_PUAPAR_UTXD0_UTXD0;

   //Configure URXD0 (PUA1)
   temp = MCF_GPIO_PUAPAR & ~MCF_GPIO_PUAPAR_PUAPAR1(3);
   MCF_GPIO_PUAPAR = temp | MCF_GPIO_PUAPAR_URXD0_URXD0;

   //Reset transmitter
   MCF_UART0_UCR = MCF_UART_UCR_RESET_TX;
   //Reset receiver
   MCF_UART0_UCR = MCF_UART_UCR_RESET_RX;
   //Reset mode register
   MCF_UART0_UCR = MCF_UART_UCR_RESET_MR;

   //UART0 configuration
   MCF_UART0_UMR1 = MCF_UART_UMR_PM_NONE | MCF_UART_UMR_BC_8;
   MCF_UART0_UMR2 = MCF_UART_UMR_CM_NORMAL | MCF_UART_UMR_SB_STOP_BITS_1;

   //Select clock source
   MCF_UART0_UCSR = MCF_UART_UCSR_RCS_SYS_CLK | MCF_UART_UCSR_TCS_SYS_CLK;

   //Compute the baudrate divider
   div = SYSTEM_CLOCK_HZ / (32 * baudrate);

   //Select baudrate
   MCF_UART0_UBG1 = MSB(div);
   MCF_UART0_UBG2 = LSB(div);

   //Enable transmitter and receiver
   MCF_UART0_UCR = MCF_UART_UCR_TX_ENABLED | MCF_UART_UCR_RX_ENABLED;
}


/**
 * @brief Display the contents of an array
 * @param[in] stream Pointer to a FILE object that identifies an output stream
 * @param[in] prepend String to prepend to the left of each line
 * @param[in] data Pointer to the data array
 * @param[in] length Number of bytes to display
 **/

void debugDisplayArray(FILE *stream,
   const char_t *prepend, const void *data, size_t length)
{
   uint_t i;

   for(i = 0; i < length; i++)
   {
      //Beginning of a new line?
      if((i % 16) == 0)
         printf("%s", prepend);
      //Display current data byte
      printf("%02" PRIX8 " ", *((uint8_t *) data + i));
      //End of current line?
      if((i % 16) == 15 || i == (length - 1))
         printf("\r\n");
   }
}


/**
 * @brief Write to output stream
 * @param[in] handle Handle that identifies a stream
 * @param[in] buffer Pointer to the data buffer
 * @param[in] count Number of characters to be written
 * @return Error code
 **/

int_t __write_console(__file_handle handle, uint8_t *buffer, size_t *count)
{
   size_t i;

   //Process all the characters
   for(i = 0; i < *count; i++)
   {
      //Wait for the transmitter to be ready
      while(!(MCF_UART0_USR & MCF_UART_USR_TXRDY));
      //Send character
      MCF_UART0_UTB = buffer[i];
      //Wait for the transfer to complete
      while(!(MCF_UART0_USR & MCF_UART_USR_TXRDY));
   }

   //Successful processing
   return __no_io_error;
}


/**
 * @brief Read from input stream
 * @param[in] handle Handle that identifies a stream
 * @param[in] buffer Pointer to the data buffer
 * @param[in] count Maximum number of characters to be read
 * @return Error code
 **/

int_t __read_console(__file_handle handle, uint8_t *buffer, size_t *count)
{
   //Successful processing
   return __no_io_error;
}


/**
 * @brief Close stream
 * @param[in] handle Handle that identifies a stream
 * @return Error code
 **/

int_t __close_console(__file_handle handle)
{
   //Successful processing
   return __no_io_error;
}
