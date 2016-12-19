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
#include "lpc23xx.h"
#include "lpc2378_stk.h"
#include "debug.h"

//Function declaration
void lcdPutChar(char_t c);


/**
 * @brief Debug UART initialization
 * @param[in] baudrate UART baudrate
 **/

void debugInit(uint32_t baudrate)
{
   uint32_t pclk;

   //Power up UART0
   PCONP |= PCONP_PCUART0;

   //Configure P0.15 (TXD1)
   PINSEL0 &= ~PINSEL0_P0_15_MASK;
   PINSEL0 |= PINSEL0_P0_15_TXD1;

   //Configure P0.16 (RXD1)
   PINSEL1 &= ~PINSEL1_P0_16_MASK;
   PINSEL1 |= PINSEL1_P0_16_RXD1;

   //Check the UART0 peripheral clock
   switch(PCLKSEL0 & PCLKSEL0_PCLK_UART1)
   {
   case PCLKSEL0_PCLK_UART1_DIV1:
      pclk = CPU_CLOCK_FREQ;
      break;
   case PCLKSEL0_PCLK_UART1_DIV2:
      pclk = CPU_CLOCK_FREQ / 2;
      break;
   case PCLKSEL0_PCLK_UART1_DIV4:
      pclk = CPU_CLOCK_FREQ / 4;
      break;
   default:
      pclk = CPU_CLOCK_FREQ / 8;
      break;
   }

   //Configure UART0 (8 bits, no parity, 1 stop bit)
   U1LCR = LCR_DLAB | LCR_WORD_LENGTH_SELECT_8;
   //Set baudrate
   U1DLM = MSB(pclk / 16 / baudrate);
   U1DLL = LSB(pclk / 16 / baudrate);
   //Clear DLAB
   U1LCR &= ~LCR_DLAB;

   //Enable and reset FIFOs
   U1FCR = FCR_TX_FIFO_RESET | FCR_RX_FIFO_RESET | FCR_FIFO_ENABLE;
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
         fprintf(stream, "%s", prepend);
      //Display current data byte
      fprintf(stream, "%02" PRIX8 " ", *((uint8_t *) data + i));
      //End of current line?
      if((i % 16) == 15 || i == (length - 1))
         fprintf(stream, "\r\n");
   }
}


/**
 * @brief Write character to stream
 * @param[in] c The character to be written
 * @param[in] stream Pointer to a FILE object that identifies an output stream
 * @return On success, the character written is returned. If a writing
 *   error occurs, EOF is returned
 **/

int_t fputc(int_t c, FILE *stream)
{
   //Standard output?
   if(stream == stdout)
   {
      //Display current character
      lcdPutChar(c);

      //On success, the character written is returned
      return c;
   }
   //Standard error output?
   else if(stream == stderr)
   {
      //Wait for the transmitter to be ready
      while(!(U1LSR & LSR_THRE));
      //Send character
      U1THR = c;
      //Wait for the transfer to complete
      while(!(U1LSR & LSR_TEMT));

      //On success, the character written is returned
      return c;
   }
   //Unknown output?
   else
   {
      //If a writing error occurs, EOF is returned
      return EOF;
   }
}
