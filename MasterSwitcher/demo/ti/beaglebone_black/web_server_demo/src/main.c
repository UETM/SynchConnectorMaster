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
#include <ti/sysbios/family/arm/a8/cache.h>
#include <ti/sysbios/family/arm/a8/mmu.h>
#include "soc_am335x.h"
#include "hw_types.h"
#include "hw_control_am335x.h"
#include "gpio_v2.h"
#include "watchdog.h"
#include "beaglebone_black.h"
#include "core/net.h"
#include "drivers/am335x_eth.h"
#include "drivers/lan8710.h"
#include "dhcp/dhcp_client.h"
#include "ipv6/slaac.h"
#include "http/http_server.h"
#include "http/mime.h"
#include "path.h"
#include "date_time.h"
#include "resource_manager.h"
#include "debug.h"

//Application configuration
#define APP_MAC_ADDR "00-00-00-00-00-00"

#define APP_USE_DHCP ENABLED
#define APP_IPV4_HOST_ADDR "192.168.0.20"
#define APP_IPV4_SUBNET_MASK "255.255.255.0"
#define APP_IPV4_DEFAULT_GATEWAY "192.168.0.254"
#define APP_IPV4_PRIMARY_DNS "8.8.8.8"
#define APP_IPV4_SECONDARY_DNS "8.8.4.4"

#define APP_USE_SLAAC ENABLED
#define APP_IPV6_LINK_LOCAL_ADDR "fe80::3358"
#define APP_IPV6_PREFIX "2001:db8::"
#define APP_IPV6_PREFIX_LENGTH 64
#define APP_IPV6_GLOBAL_ADDR "2001:db8::3358"
#define APP_IPV6_ROUTER "fe80::1"
#define APP_IPV6_PRIMARY_DNS "2001:4860:4860::8888"
#define APP_IPV6_SECONDARY_DNS "2001:4860:4860::8844"

#define APP_HTTP_MAX_CONNECTIONS 8

//SRAM memory region
#define SRAM_START_ADDR 0x40200000
#define SRAM_NUM_SECTIONS 1
//OCMC memory region
#define OCMC_START_ADDR 0x40300000
#define OCMC_NUM_SECTIONS 1
//Device memory region
#define DEV_START_ADDR 0x44000000
#define DEV_NUM_SECTIONS 960
//DDR memory region
#define DDR_START_ADDR 0x80000000
#define DDR_NUM_SECTIONS 240
//DDR memory region (no cache)
#define DDR_NO_CACHE_START_ADDR 0x8F000000
#define DDR_NO_CACHE_NUM_SECTIONS 16

//Global variables
DhcpClientSettings dhcpClientSettings;
DhcpClientCtx dhcpClientContext;
SlaacSettings slaacSettings;
SlaacContext slaacContext;
HttpServerSettings httpServerSettings;
HttpServerContext httpServerContext;
HttpConnection httpConnections[APP_HTTP_MAX_CONNECTIONS];

//Forward declaration of functions
error_t httpServerCgiCallback(HttpConnection *connection,
   const char_t *param);

error_t httpServerUriNotFoundCallback(HttpConnection *connection,
   const char_t *uri);


/**
 * @brief MMU configuration
 **/

void mmuInit(void)
{
   uint32_t i;
   uint32_t addr;
   Mmu_FirstLevelDescAttrs attrs;

   //Disable cache
   Cache_disable(Cache_Type_ALL);
   //Disable MMU
   Mmu_disable();

   //Common section attributes
   Mmu_initDescAttrs(&attrs);
   attrs.type = Mmu_FirstLevelDesc_SECTION;
   attrs.imp = FALSE;

   //SRAM memory region attributes
   attrs.bufferable = FALSE;
   attrs.cacheable = TRUE;
   attrs.shareable = FALSE;
   attrs.noexecute = FALSE;
   attrs.tex = 5;

   //Configure SRAM memory region
   for(i = 0; i < SRAM_NUM_SECTIONS; i++)
   {
      //Start address of the section
      addr = SRAM_START_ADDR + (i << 20);
      //Set attributes
      Mmu_setFirstLevelDesc((void *) addr, (void *) addr, &attrs);
   }

   //OCMC memory region attributes
   attrs.bufferable = FALSE;
   attrs.cacheable = TRUE;
   attrs.shareable = FALSE;
   attrs.noexecute = FALSE;
   attrs.tex = 5;

   //Configure OCMC memory region
   for(i = 0; i < OCMC_NUM_SECTIONS; i++)
   {
      //Start address of the section
      addr = OCMC_START_ADDR + (i << 20);
      //Set attributes
      Mmu_setFirstLevelDesc((void *) addr, (void *) addr, &attrs);
   }

   //Device memory region attributes
   attrs.bufferable = TRUE;
   attrs.cacheable = FALSE;
   attrs.shareable = FALSE;
   attrs.noexecute = TRUE;
   attrs.tex = 0;

   //Configure Device memory region
   for(i = 0; i < DEV_NUM_SECTIONS; i++)
   {
      //Start address of the section
      addr = DEV_START_ADDR + (i << 20);
      //Set attributes
      Mmu_setFirstLevelDesc((void *) addr, (void *) addr, &attrs);
   }

   //DDR memory region attributes
   attrs.bufferable = FALSE;
   attrs.cacheable = TRUE;
   attrs.shareable = FALSE;
   attrs.noexecute = FALSE;
   attrs.tex = 5;

   //Configure DDR memory region
   for(i = 0; i < DDR_NUM_SECTIONS; i++)
   {
      //Start address of the section
      addr = DDR_START_ADDR + (i << 20);
      //Set attributes
      Mmu_setFirstLevelDesc((void *) addr, (void *) addr, &attrs);
   }

   //DDR memory region (no cache)
   attrs.bufferable = TRUE;
   attrs.cacheable = FALSE;
   attrs.shareable = FALSE;
   attrs.noexecute = FALSE;
   attrs.tex = 0;

   //Configure DDR memory region (no cache)
   for(i = 0; i < DDR_NO_CACHE_NUM_SECTIONS; i++)
   {
      //Start address of the section
      addr = DDR_NO_CACHE_START_ADDR + (i << 20);
      //Set attributes
      Mmu_setFirstLevelDesc((void *) addr, (void *) addr, &attrs);
   }

   //Enable the MMU
   Mmu_enable();
   //Enable cache
   Cache_enable(Cache_Type_ALL);
}


/**
 * @brief I/O initialization
 **/

void ioInit(void)
{
   //Enable clocks for GPIO1 instance
   GPIO1ModuleClkConfig();

   //Enable GPIO1 module
   GPIOModuleEnable(SOC_GPIO_1_REGS);

   //Configure LED1 as a GPIO (GPIO1_21/GPMC_A5)
   HWREG(SOC_CONTROL_REGS + CONTROL_CONF_GPMC_A(5)) = CONTROL_CONF_MUXMODE(7);
   //Configure LED2 as a GPIO (GPIO1_22/GPMC_A6)
   HWREG(SOC_CONTROL_REGS + CONTROL_CONF_GPMC_A(6)) = CONTROL_CONF_MUXMODE(7);
   //Configure LED3 as a GPIO (GPIO1_23/GPMC_A7)
   HWREG(SOC_CONTROL_REGS + CONTROL_CONF_GPMC_A(7)) = CONTROL_CONF_MUXMODE(7);
   //Configure LED4 as a GPIO (GPIO1_24/GPMC_A8)
   HWREG(SOC_CONTROL_REGS + CONTROL_CONF_GPMC_A(8)) = CONTROL_CONF_MUXMODE(7);

   //Configure LED1 as an output
   GPIODirModeSet(SOC_GPIO_1_REGS, 21, GPIO_DIR_OUTPUT);
   //Configure LED2 as an output
   GPIODirModeSet(SOC_GPIO_1_REGS, 22, GPIO_DIR_OUTPUT);
   //Configure LED3 as an output
   GPIODirModeSet(SOC_GPIO_1_REGS, 23, GPIO_DIR_OUTPUT);
   //Configure LED4 as an output
   GPIODirModeSet(SOC_GPIO_1_REGS, 24, GPIO_DIR_OUTPUT);
}


/**
 * @brief LED blinking task
 **/

void blinkTask(void *param)
{
   //Endless loop
   while(1)
   {
      GPIOPinWrite(SOC_GPIO_1_REGS, 24, GPIO_PIN_HIGH);
      osDelayTask(100);
      GPIOPinWrite(SOC_GPIO_1_REGS, 24, GPIO_PIN_LOW);
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
   OsTask *task;
   NetInterface *interface;
   MacAddr macAddr;
#if (APP_USE_DHCP == DISABLED)
   Ipv4Addr ipv4Addr;
#endif
#if (APP_USE_SLAAC == DISABLED)
   Ipv6Addr ipv6Addr;
#endif

   //Configure MMU
   mmuInit();

   //Disable watchdog timer
   WatchdogTimerDisable(SOC_WDT_1_REGS);

   //Initialize kernel
   osInitKernel();
   //Configure debug UART
   debugInit(115200);

   //Start-up message
   TRACE_INFO("\r\n");
   TRACE_INFO("**********************************\r\n");
   TRACE_INFO("*** CycloneTCP Web Server Demo ***\r\n");
   TRACE_INFO("**********************************\r\n");
   TRACE_INFO("Copyright: 2010-2016 Oryx Embedded SARL\r\n");
   TRACE_INFO("Compiled: %s %s\r\n", __DATE__, __TIME__);
   TRACE_INFO("Target: AM335x\r\n");
   TRACE_INFO("\r\n");

   //Configure I/Os
   ioInit();

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
   netSetHostname(interface, "WebServerDemo");
   //Select the relevant network adapter
   netSetDriver(interface, &am335xEthPort1Driver);
   netSetPhyDriver(interface, &lan8710PhyDriver);
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
   httpServerGetDefaultSettings(&httpServerSettings);
   //Bind HTTP server to the desired interface
   httpServerSettings.interface = &netInterface[0];
   //Listen to port 80
   httpServerSettings.port = HTTP_PORT;
   //Client connections
   httpServerSettings.maxConnections = APP_HTTP_MAX_CONNECTIONS;
   httpServerSettings.connections = httpConnections;
   //Specify the server's root directory
   strcpy(httpServerSettings.rootDirectory, "/www/");
   //Set default home page
   strcpy(httpServerSettings.defaultDocument, "index.shtm");
   //Callback functions
   httpServerSettings.cgiCallback = httpServerCgiCallback;
   httpServerSettings.uriNotFoundCallback = httpServerUriNotFoundCallback;

   //HTTP server initialization
   error = httpServerInit(&httpServerContext, &httpServerSettings);
   //Failed to initialize HTTP server?
   if(error)
   {
      //Debug message
      TRACE_ERROR("Failed to initialize HTTP server!\r\n");
   }

   //Start HTTP server
   error = httpServerStart(&httpServerContext);
   //Failed to start HTTP server?
   if(error)
   {
      //Debug message
      TRACE_ERROR("Failed to start HTTP server!\r\n");
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
 * @brief CGI callback function
 * @param[in] connection Handle referencing a client connection
 * @param[in] param NULL-terminated string that contains the CGI parameter
 * @return Error code
 **/

error_t httpServerCgiCallback(HttpConnection *connection,
   const char_t *param)
{
   static uint_t pageCounter = 0;
   uint_t length;
   MacAddr macAddr;
#if (IPV4_SUPPORT == ENABLED)
   Ipv4Addr ipv4Addr;
#endif
#if (IPV6_SUPPORT == ENABLED)
   uint_t n;
   Ipv6Addr ipv6Addr;
#endif

   //Underlying network interface
   NetInterface *interface = connection->socket->interface;

   //Check parameter name
   if(!strcasecmp(param, "PAGE_COUNTER"))
   {
      pageCounter++;
      sprintf(connection->buffer, "%u time%s", pageCounter, (pageCounter >= 2) ? "s" : "");
   }
   else if(!strcasecmp(param, "BOARD_NAME"))
   {
      strcpy(connection->buffer, "BeagleBone Black");
   }
   else if(!strcasecmp(param, "SYSTEM_TIME"))
   {
      systime_t time = osGetSystemTime();
      formatSystemTime(time, connection->buffer);
   }
   else if(!strcasecmp(param, "MAC_ADDR"))
   {
      netGetMacAddr(interface, &macAddr);
      macAddrToString(&macAddr, connection->buffer);
   }
   else if(!strcasecmp(param, "IPV4_ADDR"))
   {
      ipv4GetHostAddr(interface, &ipv4Addr);
      ipv4AddrToString(ipv4Addr, connection->buffer);
   }
   else if(!strcasecmp(param, "SUBNET_MASK"))
   {
      ipv4GetSubnetMask(interface, &ipv4Addr);
      ipv4AddrToString(ipv4Addr, connection->buffer);
   }
   else if(!strcasecmp(param, "DEFAULT_GATEWAY"))
   {
      ipv4GetDefaultGateway(interface, &ipv4Addr);
      ipv4AddrToString(ipv4Addr, connection->buffer);
   }
   else if(!strcasecmp(param, "IPV4_PRIMARY_DNS"))
   {
      ipv4GetDnsServer(interface, 0, &ipv4Addr);
      ipv4AddrToString(ipv4Addr, connection->buffer);
   }
   else if(!strcasecmp(param, "IPV4_SECONDARY_DNS"))
   {
      ipv4GetDnsServer(interface, 1, &ipv4Addr);
      ipv4AddrToString(ipv4Addr, connection->buffer);
   }
#if (IPV6_SUPPORT == ENABLED)
   else if(!strcasecmp(param, "LINK_LOCAL_ADDR"))
   {
      ipv6GetLinkLocalAddr(interface, &ipv6Addr);
      ipv6AddrToString(&ipv6Addr, connection->buffer);
   }
   else if(!strcasecmp(param, "GLOBAL_ADDR"))
   {
      ipv6GetGlobalAddr(interface, 0, &ipv6Addr);
      ipv6AddrToString(&ipv6Addr, connection->buffer);
   }
   else if(!strcasecmp(param, "IPV6_PREFIX"))
   {
      ipv6GetPrefix(interface, 0, &ipv6Addr, &n);
      ipv6AddrToString(&ipv6Addr, connection->buffer);
      length = strlen(connection->buffer);
      sprintf(connection->buffer + length, "/%u", n);
   }
   else if(!strcasecmp(param, "ROUTER"))
   {
      ipv6GetDefaultRouter(interface, 0, &ipv6Addr);
      ipv6AddrToString(&ipv6Addr, connection->buffer);
   }
   else if(!strcasecmp(param, "IPV6_PRIMARY_DNS"))
   {
      ipv6GetDnsServer(interface, 0, &ipv6Addr);
      ipv6AddrToString(&ipv6Addr, connection->buffer);
   }
   else if(!strcasecmp(param, "IPV6_SECONDARY_DNS"))
   {
      ipv6GetDnsServer(interface, 1, &ipv6Addr);
      ipv6AddrToString(&ipv6Addr, connection->buffer);
   }
#endif
   else
   {
      return ERROR_INVALID_TAG;
   }

   //Get the length of the resulting string
   length = strlen(connection->buffer);

   //Send the contents of the specified environment variable
   return httpWriteStream(connection, connection->buffer, length);
}


/**
 * @brief URI not found callback
 * @param[in] connection Handle referencing a client connection
 * @param[in] uri NULL-terminated string containing the path to the requested resource
 * @return Error code
 **/

error_t httpServerUriNotFoundCallback(HttpConnection *connection,
   const char_t *uri)
{
   //Not implemented
   return ERROR_NOT_FOUND;
}
