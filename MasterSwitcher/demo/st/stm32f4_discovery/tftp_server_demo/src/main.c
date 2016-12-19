/**
 * @file main.c
 * @brief Main routine
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
#include <stdlib.h>
#include "stm32f4xx.h"
#include "stm32f4_discovery.h"
#include "stm32f4_discovery_lcd.h"
#include "os_port.h"
#include "core/net.h"
#include "drivers/stm32f4x7_eth.h"
#include "drivers/lan8720.h"
#include "dhcp/dhcp_client.h"
#include "ipv6/slaac.h"
#include "tftp/tftp_server.h"
#include "fs_port.h"
#include "path.h"
#include "debug.h"

//Application configuration
#define APP_MAC_ADDR "00-AB-CD-EF-04-07"

#define APP_USE_DHCP ENABLED
#define APP_IPV4_HOST_ADDR "192.168.0.20"
#define APP_IPV4_SUBNET_MASK "255.255.255.0"
#define APP_IPV4_DEFAULT_GATEWAY "192.168.0.254"
#define APP_IPV4_PRIMARY_DNS "8.8.8.8"
#define APP_IPV4_SECONDARY_DNS "8.8.4.4"

#define APP_USE_SLAAC ENABLED
#define APP_IPV6_LINK_LOCAL_ADDR "fe80::407"
#define APP_IPV6_PREFIX "2001:db8::"
#define APP_IPV6_PREFIX_LENGTH 64
#define APP_IPV6_GLOBAL_ADDR "2001:db8::407"
#define APP_IPV6_ROUTER "fe80::1"
#define APP_IPV6_PRIMARY_DNS "2001:4860:4860::8888"
#define APP_IPV6_SECONDARY_DNS "2001:4860:4860::8844"

//Global variables
uint_t lcdLine = 0;
uint_t lcdColumn = 0;

DhcpClientSettings dhcpClientSettings;
DhcpClientCtx dhcpClientContext;
SlaacSettings slaacSettings;
SlaacContext slaacContext;
TftpServerSettings tftpServerSettings;
TftpServerContext tftpServerContext;

//Forward declaration of functions
void *tftpServerOpenFileCallback(const char_t *filename,
   const char_t *mode, bool_t writeAccess);

error_t tftpServerWriteFileCallback(void *file,
   size_t offset, const uint8_t *data, size_t length);

error_t tftpServerReadFileCallback(void *file,
   size_t offset, uint8_t *data, size_t size, size_t *length);

void tftpServerCloseFileCallback(void *file);


/**
 * @brief Set cursor location
 * @param[in] line Line number
 * @param[in] column Column number
 **/

void lcdSetCursor(uint_t line, uint_t column)
{
   lcdLine = MIN(line, 10);
   lcdColumn = MIN(column, 20);
}


/**
 * @brief Write a character to the LCD display
 * @param[in] c Character to be written
 **/

void lcdPutChar(char_t c)
{
   if(c == '\r')
   {
      lcdColumn = 0;
   }
   else if(c == '\n')
   {
      lcdColumn = 0;
      lcdLine++;
   }
   else if(lcdLine < 10 && lcdColumn < 20)
   {
      //Display current character
      LCD_DisplayChar(lcdLine * 24, lcdColumn * 16, c);

      //Advance the cursor position
      if(++lcdColumn >= 20)
      {
         lcdColumn = 0;
         lcdLine++;
      }
   }
}


/**
 * @brief I/O initialization
 **/

void ioInit(void)
{
   GPIO_InitTypeDef GPIO_InitStructure;

   //LED configuration
   STM_EVAL_LEDInit(LED3);
   STM_EVAL_LEDInit(LED4);
   STM_EVAL_LEDInit(LED5);
   STM_EVAL_LEDInit(LED6);

   //Clear LEDs
   STM_EVAL_LEDOff(LED3);
   STM_EVAL_LEDOff(LED4);
   STM_EVAL_LEDOff(LED5);
   STM_EVAL_LEDOff(LED6);

   //Initialize user button
   STM_EVAL_PBInit(BUTTON_USER, BUTTON_MODE_GPIO);

   //Enable GPIOE clock
   RCC_AHB1PeriphClockCmd(RCC_AHB1Periph_GPIOE, ENABLE);

   //Configure PE2 (PHY_RST) pin as an output
   GPIO_InitStructure.GPIO_Pin = GPIO_Pin_2;
   GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;
   GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
   GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;
   GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
   GPIO_Init(GPIOE, &GPIO_InitStructure);

   //Reset PHY transceiver (hard reset)
   GPIO_ResetBits(GPIOE, GPIO_Pin_2);
   sleep(10);
   GPIO_SetBits(GPIOE, GPIO_Pin_2);
   sleep(10);
}


/**
 * @brief User task
 **/

void userTask(void *param)
{
   char_t buffer[40];
#if (IPV4_SUPPORT == ENABLED)
   Ipv4Addr ipv4Addr;
#endif

   //Point to the network interface
   NetInterface *interface = &netInterface[0];

   //Initialize LCD display
   lcdSetCursor(2, 0);
   printf("IPv4 Addr\r\n");

   //Endless loop
   while(1)
   {
#if (IPV4_SUPPORT == ENABLED)
      //Display IPv4 host address
      lcdSetCursor(3, 0);
      ipv4GetHostAddr(interface, &ipv4Addr);
      printf("%-16s\r\n", ipv4AddrToString(ipv4Addr, buffer));
#endif

      //Loop delay
      osDelayTask(500);
   }
}


/**
 * @brief LED blinking task
 **/

void blinkTask(void *param)
{
   //Endless loop
   while(1)
   {
      STM_EVAL_LEDOn(LED4);
      osDelayTask(100);
      STM_EVAL_LEDOff(LED4);
      osDelayTask(900);
   }
}


/**
 * @brief Main entry point
 * @return Unused value
 **/

int_t main(void)
{
   error_t error;
   NetInterface *interface;
   OsTask *task;
   MacAddr macAddr;
#if (APP_USE_DHCP == DISABLED)
   Ipv4Addr ipv4Addr;
#endif
#if (APP_USE_SLAAC == DISABLED)
   Ipv6Addr ipv6Addr;
#endif

   //Initialize kernel
   osInitKernel();
   //Configure debug UART
   debugInit(115200);

   //Start-up message
   TRACE_INFO("\r\n");
   TRACE_INFO("***********************************\r\n");
   TRACE_INFO("*** CycloneTCP TFTP Server Demo ***\r\n");
   TRACE_INFO("***********************************\r\n");
   TRACE_INFO("Copyright: 2010-2016 Oryx Embedded SARL\r\n");
   TRACE_INFO("Compiled: %s %s\r\n", __DATE__, __TIME__);
   TRACE_INFO("Target: STM32F407\r\n");
   TRACE_INFO("\r\n");

   //Configure I/Os
   ioInit();

   //Initialize LCD display
   STM32f4_Discovery_LCD_Init();
   LCD_SetBackColor(Blue);
   LCD_SetTextColor(White);
   LCD_SetFont(&Font16x24);
   LCD_Clear(Blue);

   //Welcome message
   lcdSetCursor(0, 0);
   printf("TFTP Server Demo\r\n");

   //File system initialization
   error = fsInit();
   //Any error to report?
   if(error)
   {
      //Debug message
      TRACE_ERROR("Failed to initialize file system!\r\n");
   }

   //TCP/IP stack initialization
   error = netInit();
   //Any error to report?
   if(error)
   {
      //Debug message
      TRACE_ERROR("Failed to initialize TCP/IP stack!\r\n");
   }

   //Configure the first Ethernet interface
   interface = &netInterface[0];

   //Set interface name
   netSetInterfaceName(interface, "eth0");
   //Set host name
   netSetHostname(interface, "FTPServerDemo");
   //Select the relevant network adapter
   netSetDriver(interface, &stm32f4x7EthDriver);
   netSetPhyDriver(interface, &lan8720PhyDriver);
   //Set host MAC address
   macStringToAddr(APP_MAC_ADDR, &macAddr);
   netSetMacAddr(interface, &macAddr);

   //Initialize network interface
   error = netConfigInterface(interface);
   //Any error to report?
   if(error)
   {
      //Debug message
      TRACE_ERROR("Failed to configure interface %s!\r\n", interface->name);
   }

#if (IPV4_SUPPORT == ENABLED)
#if (APP_USE_DHCP == ENABLED)
   //Get default settings
   dhcpClientGetDefaultSettings(&dhcpClientSettings);
   //Set the network interface to be configured by DHCP
   dhcpClientSettings.interface = interface;
   //Disable rapid commit option
   dhcpClientSettings.rapidCommit = FALSE;

   //DHCP client initialization
   error = dhcpClientInit(&dhcpClientContext, &dhcpClientSettings);
   //Failed to initialize DHCP client?
   if(error)
   {
      //Debug message
      TRACE_ERROR("Failed to initialize DHCP client!\r\n");
   }

   //Start DHCP client
   error = dhcpClientStart(&dhcpClientContext);
   //Failed to start DHCP client?
   if(error)
   {
      //Debug message
      TRACE_ERROR("Failed to start DHCP client!\r\n");
   }
#else
   //Set IPv4 host address
   ipv4StringToAddr(APP_IPV4_HOST_ADDR, &ipv4Addr);
   ipv4SetHostAddr(interface, ipv4Addr);

   //Set subnet mask
   ipv4StringToAddr(APP_IPV4_SUBNET_MASK, &ipv4Addr);
   ipv4SetSubnetMask(interface, ipv4Addr);

   //Set default gateway
   ipv4StringToAddr(APP_IPV4_DEFAULT_GATEWAY, &ipv4Addr);
   ipv4SetDefaultGateway(interface, ipv4Addr);

   //Set primary and secondary DNS servers
   ipv4StringToAddr(APP_IPV4_PRIMARY_DNS, &ipv4Addr);
   ipv4SetDnsServer(interface, 0, ipv4Addr);
   ipv4StringToAddr(APP_IPV4_SECONDARY_DNS, &ipv4Addr);
   ipv4SetDnsServer(interface, 1, ipv4Addr);
#endif
#endif

#if (IPV6_SUPPORT == ENABLED)
#if (APP_USE_SLAAC == ENABLED)
   //Get default settings
   slaacGetDefaultSettings(&slaacSettings);
   //Set the network interface to be configured
   slaacSettings.interface = interface;

   //SLAAC initialization
   error = slaacInit(&slaacContext, &slaacSettings);
   //Failed to initialize SLAAC?
   if(error)
   {
      //Debug message
      TRACE_ERROR("Failed to initialize SLAAC!\r\n");
   }

   //Start IPv6 address autoconfiguration process
   error = slaacStart(&slaacContext);
   //Failed to start SLAAC process?
   if(error)
   {
      //Debug message
      TRACE_ERROR("Failed to start SLAAC!\r\n");
   }
#else
   //Set link-local address
   ipv6StringToAddr(APP_IPV6_LINK_LOCAL_ADDR, &ipv6Addr);
   ipv6SetLinkLocalAddr(interface, &ipv6Addr);

   //Set IPv6 prefix
   ipv6StringToAddr(APP_IPV6_PREFIX, &ipv6Addr);
   ipv6SetPrefix(interface, 0, &ipv6Addr, APP_IPV6_PREFIX_LENGTH);

   //Set global address
   ipv6StringToAddr(APP_IPV6_GLOBAL_ADDR, &ipv6Addr);
   ipv6SetGlobalAddr(interface, 0, &ipv6Addr);

   //Set default router
   ipv6StringToAddr(APP_IPV6_ROUTER, &ipv6Addr);
   ipv6SetDefaultRouter(interface, 0, &ipv6Addr);

   //Set primary and secondary DNS servers
   ipv6StringToAddr(APP_IPV6_PRIMARY_DNS, &ipv6Addr);
   ipv6SetDnsServer(interface, 0, &ipv6Addr);
   ipv6StringToAddr(APP_IPV6_SECONDARY_DNS, &ipv6Addr);
   ipv6SetDnsServer(interface, 1, &ipv6Addr);
#endif
#endif

   //Get default settings
   tftpServerGetDefaultSettings(&tftpServerSettings);
   //Bind TFTP server to the desired interface
   tftpServerSettings.interface = &netInterface[0];
   //Listen to port 69
   tftpServerSettings.port = TFTP_PORT;
   //Open file callback function
   tftpServerSettings.openFileCallback = tftpServerOpenFileCallback;
   //Write file callback function
   tftpServerSettings.writeFileCallback = tftpServerWriteFileCallback;
   //Read file callback function
   tftpServerSettings.readFileCallback = tftpServerReadFileCallback;
   //Close file callback function
   tftpServerSettings.closeFileCallback = tftpServerCloseFileCallback;

   //TFTP server initialization
   error = tftpServerInit(&tftpServerContext, &tftpServerSettings);
   //Failed to initialize TFTP server?
   if(error)
   {
      //Debug message
      TRACE_ERROR("Failed to initialize TFTP server!\r\n");
   }

   //Start TFTP server
   error = tftpServerStart(&tftpServerContext);
   //Failed to start TFTP server?
   if(error)
   {
      //Debug message
      TRACE_ERROR("Failed to start TFTP server!\r\n");
   }

   //Create user task
   task = osCreateTask("User Task", userTask, NULL, 500, OS_TASK_PRIORITY_NORMAL);
   //Failed to create the task?
   if(task == OS_INVALID_HANDLE)
   {
      //Debug message
      TRACE_ERROR("Failed to create task!\r\n");
   }

   //Create a task to blink the LED
   task = osCreateTask("Blink", blinkTask, NULL, 500, OS_TASK_PRIORITY_NORMAL);
   //Failed to create the task?
   if(task == OS_INVALID_HANDLE)
   {
      //Debug message
      TRACE_ERROR("Failed to create task!\r\n");
   }

   //Start the execution of tasks
   osStartKernel();

   //This function should never return
   return 0;
}


/**
 * @brief Open file callback function
 * @param[in] filename NULL-terminated string specifying the filename
 * @param[in] mode NULL-terminated string specifying the transfer mode
 * @param[in] writeAccess Type of access permitted (read or write access)
 * @return File handle
 **/

void *tftpServerOpenFileCallback(const char_t *filename,
   const char_t *mode, bool_t writeAccess)
{
   void *file;

   //Check access mode
   if(writeAccess)
   {
      //Open the specified file for writing
      file = fsOpenFile(filename, FS_FILE_MODE_WRITE |
         FS_FILE_MODE_CREATE | FS_FILE_MODE_TRUNC);
   }
   else
   {
      //Open the specified file for reading
      file = fsOpenFile(filename, FS_FILE_MODE_READ);
   }

   //Return file handle
   return file;
}


/**
 * @brief Write file callback function
 * @param[in] file Handle that identifies the file to be written
 * @param[in] offset Offset relative to the beginning of the file
 * @param[in] data Pointer to a buffer containing the data to be written
 * @param[in] length Number of data bytes to write
 * @return Error code
 **/

error_t tftpServerWriteFileCallback(void *file,
   size_t offset, const uint8_t *data, size_t length)
{
   //Write data to the specified file
   return fsWriteFile(file, (void *) data, length);
}


/**
 * @brief Read file callback function
 * @param[in] file Handle that identifies the file to be read
 * @param[in] data Pointer to the buffer where to copy the data
 * @param[in] size Size of the buffer, in bytes
 * @param[out] length Number of data bytes that have been read
 * @return Error code
 **/

error_t tftpServerReadFileCallback(void *file,
   size_t offset, uint8_t *data, size_t size, size_t *length)
{
   //Read data from the specified file
   return fsReadFile(file, data, size, length);
}


/**
 * @brief Close file callback function
 * @param[in] file Handle that identifies the file to be closed
 **/

void tftpServerCloseFileCallback(void *file)
{
   //Close file
   fsCloseFile(file);
}
