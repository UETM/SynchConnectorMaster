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
#include "same70.h"
#include "same70_xplained.h"
#include "os_port.h"
#include "core/net.h"
#include "drivers/same70_eth.h"
#include "drivers/ksz8081.h"
#include "dhcp/dhcp_client.h"
#include "ipv6/slaac.h"
#include "mqtt/mqtt_client.h"
#include "yarrow.h"
#include "ext_int_driver.h"
#include "debug.h"

//Application configuration
#define APP_MAC_ADDR "00-AB-CD-EF-70-21"

#define APP_USE_DHCP ENABLED
#define APP_IPV4_HOST_ADDR "192.168.0.20"
#define APP_IPV4_SUBNET_MASK "255.255.255.0"
#define APP_IPV4_DEFAULT_GATEWAY "192.168.0.254"
#define APP_IPV4_PRIMARY_DNS "8.8.8.8"
#define APP_IPV4_SECONDARY_DNS "8.8.4.4"

#define APP_USE_SLAAC ENABLED
#define APP_IPV6_LINK_LOCAL_ADDR "fe80::7021"
#define APP_IPV6_PREFIX "2001:db8::"
#define APP_IPV6_PREFIX_LENGTH 64
#define APP_IPV6_GLOBAL_ADDR "2001:db8::7021"
#define APP_IPV6_ROUTER "fe80::1"
#define APP_IPV6_PRIMARY_DNS "2001:4860:4860::8888"
#define APP_IPV6_SECONDARY_DNS "2001:4860:4860::8844"

//MQTT server name
#define APP_SERVER_NAME "test.mosquitto.org"

//MQTT server port
#define APP_SERVER_PORT 1883 //MQTT over TCP
//#define APP_SERVER_PORT 8883 //MQTT over SSL/TLS
//#define APP_SERVER_PORT 8080 //MQTT over WebSocket
//#define APP_SERVER_PORT 8081 //MQTT over secure WebSocket

//URI (for MQTT over WebSocket only)
#define APP_SERVER_URI "/"

//CA certificate for test.mosquitto.org
char_t mosquittoCertAuth[] =
   "-----BEGIN CERTIFICATE-----"
   "MIIC8DCCAlmgAwIBAgIJAOD63PlXjJi8MA0GCSqGSIb3DQEBBQUAMIGQMQswCQYD"
   "VQQGEwJHQjEXMBUGA1UECAwOVW5pdGVkIEtpbmdkb20xDjAMBgNVBAcMBURlcmJ5"
   "MRIwEAYDVQQKDAlNb3NxdWl0dG8xCzAJBgNVBAsMAkNBMRYwFAYDVQQDDA1tb3Nx"
   "dWl0dG8ub3JnMR8wHQYJKoZIhvcNAQkBFhByb2dlckBhdGNob28ub3JnMB4XDTEy"
   "MDYyOTIyMTE1OVoXDTIyMDYyNzIyMTE1OVowgZAxCzAJBgNVBAYTAkdCMRcwFQYD"
   "VQQIDA5Vbml0ZWQgS2luZ2RvbTEOMAwGA1UEBwwFRGVyYnkxEjAQBgNVBAoMCU1v"
   "c3F1aXR0bzELMAkGA1UECwwCQ0ExFjAUBgNVBAMMDW1vc3F1aXR0by5vcmcxHzAd"
   "BgkqhkiG9w0BCQEWEHJvZ2VyQGF0Y2hvby5vcmcwgZ8wDQYJKoZIhvcNAQEBBQAD"
   "gY0AMIGJAoGBAMYkLmX7SqOT/jJCZoQ1NWdCrr/pq47m3xxyXcI+FLEmwbE3R9vM"
   "rE6sRbP2S89pfrCt7iuITXPKycpUcIU0mtcT1OqxGBV2lb6RaOT2gC5pxyGaFJ+h"
   "A+GIbdYKO3JprPxSBoRponZJvDGEZuM3N7p3S/lRoi7G5wG5mvUmaE5RAgMBAAGj"
   "UDBOMB0GA1UdDgQWBBTad2QneVztIPQzRRGj6ZHKqJTv5jAfBgNVHSMEGDAWgBTa"
   "d2QneVztIPQzRRGj6ZHKqJTv5jAMBgNVHRMEBTADAQH/MA0GCSqGSIb3DQEBBQUA"
   "A4GBAAqw1rK4NlRUCUBLhEFUQasjP7xfFqlVbE2cRy0Rs4o3KS0JwzQVBwG85xge"
   "REyPOFdGdhBY2P1FNRy0MDr6xr+D2ZOwxs63dG1nnAnWZg7qwoLgpZ4fESPD3PkA"
   "1ZgKJc2zbSQ9fCPxt2W3mdVav66c6fsb7els2W2Iz7gERJSX"
   "-----END CERTIFICATE-----";

//Connection states
#define STATE_NOT_CONNECTED 0
#define STATE_CONNECTING    1
#define STATE_CONNECTED     2

//Global variables
uint_t connectionState = STATE_NOT_CONNECTED;

DhcpClientSettings dhcpClientSettings;
DhcpClientCtx dhcpClientContext;
SlaacSettings slaacSettings;
SlaacContext slaacContext;
MqttClientContext mqttClientContext;
YarrowContext yarrowContext;
uint8_t seed[32];


/**
 * @brief I/O initialization
 **/

void ioInit(void)
{
   //Enable PIO peripheral clocks
   PMC->PMC_PCER0 = (1 << ID_PIOA) | (1 << ID_PIOC);

   //Configure LED0
   PIO_LED0->PIO_PER = LED0;
   PIO_LED0->PIO_OER = LED0;
   PIO_LED0->PIO_SODR = LED0;

   //Configure SW0 button
   PIO_SW0->PIO_PER = SW0;
   PIO_SW0->PIO_ODR = SW0;
   PIO_SW0->PIO_PUER = SW0;
}


/**
 * @brief Random data generation callback function
 * @param[out] data Buffer where to store the random data
 * @param[in] lenght Number of bytes that are required
 * @return Error code
 **/

error_t webSocketRngCallback(uint8_t *data, size_t length)
{
   error_t error;

   //Generate some random data
   error = yarrowRead(&yarrowContext, data, length);
   //Return status code
   return error;
}


/**
 * @brief SSL/TLS initialization callback
 * @param[in] context Pointer to the FTP client context
 * @param[in] tlsContext Pointer to the SSL/TLS context
 **/

error_t mqttTlsInitCallback(MqttClientContext *context,
   TlsContext *tlsContext)
{
   error_t error;

   //Debug message
   TRACE_INFO("MQTT: TLS initialization callback\r\n");

   //Set the PRNG algorithm to be used
   error = tlsSetPrng(tlsContext, YARROW_PRNG_ALGO, &yarrowContext);
   //Any error to report?
   if(error)
      return error;

   //Set the fully qualified domain name of the server
   error = tlsSetServerName(tlsContext, APP_SERVER_NAME);
   //Any error to report?
   if(error)
      return error;

   //Import the list of trusted CA certificates
   error = tlsSetTrustedCaList(tlsContext, mosquittoCertAuth, strlen(mosquittoCertAuth));
   //Any error to report?
   if(error)
      return error;

   //Successful processing
   return NO_ERROR;
}


/**
 * @brief Publish callback function
 * @param[in] context Pointer to the MQTT client context
 * @param[in] topic Topic name
 * @param[in] message Message payload
 * @param[in] length Length of the message payload
 **/

void mqttPublishCallback(MqttClientContext *context,
   const char_t *topic, const uint8_t *message, size_t length)
{
   //Debug message
   TRACE_INFO("PUBLISH packet received...\r\n");
   TRACE_INFO("  Topic: %s\r\n", topic);
   TRACE_INFO_ARRAY("  Message: ", message, length);

   //Check topic name
   if(!strcmp(topic, "board/leds/1"))
   {
      if(length == 6 && !strncasecmp((char_t *) message, "toggle", 6))
      {
         //Toggle user LED
         if(PIO_LED0->PIO_OSR & LED0)
            PIO_LED0->PIO_CODR = LED0;
         else
            PIO_LED0->PIO_SODR = LED0;
      }
      else if(length == 2 && !strncasecmp((char_t *) message, "on", 2))
      {
         //Set user LED
         PIO_LED0->PIO_CODR = LED0;
      }
      else
      {
         //Clear user LED
         PIO_LED0->PIO_SODR = LED0;
      }
   }
}


/**
 * @brief Establish MQTT connection
 **/

error_t mqttConnect(void)
{
   error_t error;
   IpAddr ipAddr;

   //Debug message
   TRACE_INFO("\r\n\r\nResolving server name...\r\n");

   //Resolve MQTT server name
   error = getHostByName(NULL, APP_SERVER_NAME, &ipAddr, 0);
   //Any error to report?
   if(error)
      return error;

   //Initialize MQTT client context
   mqttClientInit(&mqttClientContext);

   //Set the MQTT version to be used
   mqttClientSetProtocolLevel(&mqttClientContext,
      MQTT_PROTOCOL_LEVEL_3_1_1);

   //Set client identifier
   //mqttClientSetIdentifier(&mqttClientContext, "client12345678");

   //Set user name and password
   //mqttClientSetAuthInfo(&mqttClientContext, "username", "password");

   //Set keep-alive value
   //mqttClientSetKeepAlive(&mqttClientContext, 3600);

   //Set Will message
   mqttClientSetWillMessage(&mqttClientContext, "board/status",
      "offline", 7, MQTT_QOS_LEVEL_0, FALSE);

#if (APP_SERVER_PORT == 1883)
   //MQTT over TCP
   mqttClientSetTransportProtocol(&mqttClientContext, MQTT_TRANSPORT_PROTOCOL_TCP);
#elif (APP_SERVER_PORT == 8883)
   //MQTT over SSL/TLS
   mqttClientSetTransportProtocol(&mqttClientContext, MQTT_TRANSPORT_PROTOCOL_TLS);
   //Register SSL/TLS initialization callback function
   mqttClientRegisterTlsInitCallback(&mqttClientContext, mqttTlsInitCallback);
#elif (APP_SERVER_PORT == 8080)
   //MQTT over WebSocket
   mqttClientSetTransportProtocol(&mqttClientContext, MQTT_TRANSPORT_PROTOCOL_WS);
   //Register RNG callback
   webSocketRegisterRandCallback(webSocketRngCallback);
#elif (APP_SERVER_PORT == 8081)
   //MQTT over secure WebSocket
   mqttClientSetTransportProtocol(&mqttClientContext, MQTT_TRANSPORT_PROTOCOL_WSS);
   //Register SSL/TLS initialization callback function
   mqttClientRegisterTlsInitCallback(&mqttClientContext, mqttTlsInitCallback);
   //Register RNG callback
   webSocketRegisterRandCallback(webSocketRngCallback);
#endif

   //Register publish callback function
   mqttClientRegisterPublishCallback(&mqttClientContext,
      mqttPublishCallback);

   //Debug message
   TRACE_INFO("Connecting to MQTT server %s...\r\n", ipAddrToString(&ipAddr, NULL));

   //Establish network connection with the MQTT server
   error = mqttClientOpen(&mqttClientContext, &ipAddr, APP_SERVER_PORT, APP_SERVER_URI);
   if(error)
      return error;

   //Start of exception handling block
   do
   {
      //Send CONNECT packet
      error = mqttClientConnect(&mqttClientContext, TRUE);
      //Any error to report
      if(error)
         break;

      //Subscribe to the desired topics
      error = mqttClientSubscribe(&mqttClientContext, "board/leds/+", MQTT_QOS_LEVEL_1);
      //Any error to report
      if(error)
         break;

      //Send PUBLISH packet
      error = mqttClientPublish(&mqttClientContext, "board/status",
         "online", 6, MQTT_QOS_LEVEL_1, TRUE);
      //Any error to report
      if(error)
         break;

      //End of exception handling block
   } while(0);

   //Check status code
   if(error)
   {
      //Close network connection
      mqttClientClose(&mqttClientContext);
   }

   //Return status code
   return error;
}


/**
 * @brief MQTT test task
 **/

void mqttTestTask(void *param)
{
   error_t error;
   uint_t buttonState;
   uint_t prevButtonState;
   char_t buffer[16];

   //Initialize variables
   prevButtonState = 0;

   //Endless loop
   while(1)
   {
      //Check connection state
      if(connectionState == STATE_NOT_CONNECTED)
      {
         //Update connection state
         connectionState = STATE_CONNECTING;

         //Try to connect to the MQTT server
         error = mqttConnect();

         //Failed to connect to the MQTT server?
         if(error)
         {
            //Update connection state
            connectionState = STATE_NOT_CONNECTED;
            //Recovery delay
            osDelayTask(2000);
         }
         else
         {
            //Update connection state
            connectionState = STATE_CONNECTED;
         }
      }
      else
      {
         //Process incoming events
         error = mqttClientProcessEvents(&mqttClientContext, 100);

         //Connection to MQTT server lost?
         if(error != NO_ERROR && error != ERROR_TIMEOUT)
         {
            //Close network connection
            mqttClientClose(&mqttClientContext);
            //Update connection state
            connectionState = STATE_NOT_CONNECTED;
            //Recovery delay
            osDelayTask(2000);
         }
         else
         {
            //Initialize status code
            error = NO_ERROR;

            //Get user button state
            buttonState = !(PIO_SW0->PIO_PDSR & SW0);

            //Any change detected?
            if(buttonState != prevButtonState)
            {
               if(buttonState)
                  strcpy(buffer, "pressed");
               else
                  strcpy(buffer, "released");

               //Send PUBLISH packet
               error = mqttClientPublish(&mqttClientContext, "board/buttons/1",
                  buffer, strlen(buffer), MQTT_QOS_LEVEL_1, TRUE);

               //Save current state
               prevButtonState = buttonState;
            }

            //Failed to publish data?
            if(error)
            {
               //Close network connection
               mqttClientClose(&mqttClientContext);
               //Update connection state
               connectionState = STATE_NOT_CONNECTED;
               //Recovery delay
               osDelayTask(2000);
            }
         }
      }
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
      PIO_LED0->PIO_CODR = LED0;
      osDelayTask(100);
      PIO_LED0->PIO_SODR = LED0;
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

   //Disable watchdog timer
   WDT->WDT_MR = WDT_MR_WDDIS;

   //Enable I-cache
   SCB_EnableICache();
   //D-cache is not supported
   //SCB_EnableDCache();

   //Update system core clock
   SystemCoreClockUpdate();

   //Initialize kernel
   osInitKernel();
   //Configure debug UART
   debugInit(115200);

   //Start-up message
   TRACE_INFO("\r\n");
   TRACE_INFO("***********************************\r\n");
   TRACE_INFO("*** CycloneTCP MQTT Client Demo ***\r\n");
   TRACE_INFO("***********************************\r\n");
   TRACE_INFO("Copyright: 2010-2016 Oryx Embedded SARL\r\n");
   TRACE_INFO("Compiled: %s %s\r\n", __DATE__, __TIME__);
   TRACE_INFO("Target: SAME70\r\n");
   TRACE_INFO("\r\n");

   //Configure I/Os
   ioInit();

   //Generate a random seed

   //PRNG initialization
   error = yarrowInit(&yarrowContext);
   //Any error to report?
   if(error)
   {
      //Debug message
      TRACE_ERROR("Failed to initialize PRNG!\r\n");
   }

   //Properly seed the PRNG
   error = yarrowSeed(&yarrowContext, seed, sizeof(seed));
   //Any error to report?
   if(error)
   {
      //Debug message
      TRACE_ERROR("Failed to seed PRNG!\r\n");
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
   netSetHostname(interface, "MQTTClientDemo");
   //Select the relevant network adapter
   netSetDriver(interface, &same70EthDriver);
   netSetPhyDriver(interface, &ksz8081PhyDriver);
   //Set external interrupt line driver
   netSetExtIntDriver(interface, &extIntDriver);
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

   //Create MQTT test task
   task = osCreateTask("MQTT", mqttTestTask, NULL, 750, OS_TASK_PRIORITY_NORMAL);
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
