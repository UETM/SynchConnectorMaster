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
#include <p32xxxx.h>
#include <sys/attribs.h>
#include "pic32mz_ef_starter_kit.h"
#include "os_port.h"
#include "core/net.h"
#include "drivers/pic32mz_eth.h"
#include "drivers/lan8740.h"
#include "dhcp/dhcp_client.h"
#include "ipv6/slaac.h"
#include "mqtt/mqtt_client.h"
#include "yarrow.h"
#include "ext_int_driver.h"
#include "debug.h"

//PIC32 onfiguration settings
#pragma config USERID = 0xFFFF
#pragma config FMIIEN = OFF
#pragma config FETHIO = ON
#pragma config PGL1WAY = OFF
#pragma config PMDL1WAY = OFF
#pragma config IOL1WAY = OFF
#pragma config FUSBIDIO = OFF
#pragma config FPLLIDIV = DIV_3
#pragma config FPLLRNG = RANGE_5_10_MHZ
#pragma config FPLLICLK = PLL_POSC
#pragma config FPLLMULT = MUL_50
#pragma config FPLLODIV = DIV_2
#pragma config UPLLFSEL = FREQ_24MHZ
#pragma config FNOSC = SPLL
#pragma config DMTINTV = WIN_127_128
#pragma config FSOSCEN = OFF
#pragma config IESO = OFF
#pragma config POSCMOD = EC
#pragma config OSCIOFNC = OFF
#pragma config FCKSM = CSECMD
#pragma config WDTPS = PS1048576
#pragma config WDTSPGM = STOP
#pragma config WINDIS= NORMAL
#pragma config FWDTEN = OFF
#pragma config FWDTWINSZ = WINSZ_25
#pragma config DMTCNT = DMT31
#pragma config FDMTEN = OFF
//#pragma config DEBUG = ON
#pragma config JTAGEN = OFF
#pragma config ICESEL = ICS_PGx2
#pragma config TRCEN = OFF
#pragma config BOOTISA = MIPS32
#pragma config FECCCON = OFF_UNLOCKED
#pragma config FSLEEP = OFF
#pragma config DBGPER = PG_ALL
#pragma config SMCLR = MCLR_NORM
#pragma config SOSCGAIN = GAIN_2X
#pragma config SOSCBOOST = ON
#pragma config POSCGAIN = GAIN_2X
#pragma config POSCBOOST = ON
#pragma config EJTAGBEN = NORMAL
#pragma config CP = OFF

//Application configuration
#define APP_USE_DEFAULT_MAC_ADDR ENABLED
#define APP_MAC_ADDR "00-AB-CD-EF-20-48"

#define APP_USE_DHCP ENABLED
#define APP_IPV4_HOST_ADDR "192.168.0.20"
#define APP_IPV4_SUBNET_MASK "255.255.255.0"
#define APP_IPV4_DEFAULT_GATEWAY "192.168.0.254"
#define APP_IPV4_PRIMARY_DNS "8.8.8.8"
#define APP_IPV4_SECONDARY_DNS "8.8.4.4"

#define APP_USE_SLAAC ENABLED
#define APP_IPV6_LINK_LOCAL_ADDR "fe80::2048"
#define APP_IPV6_PREFIX "2001:db8::"
#define APP_IPV6_PREFIX_LENGTH 64
#define APP_IPV6_GLOBAL_ADDR "2001:db8::2048"
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

//External 4 interrupt service routine
void __ISR(_EXTERNAL_4_VECTOR, IPL1AUTO) ext4IrqWrapper(void);
//Ethernet interrupt service routine
void __ISR(_ETHERNET_VECTOR, IPL1AUTO) ethIrqWrapper(void);


/**
 * @brief System initialization
 **/

void systemInit(void)
{
   //Execute system unlock sequence
   SYSKEY = 0xAA996655;
   SYSKEY = 0x556699AA;

   //Check PBDIVRDY bit
   while(!(PB2DIV & _PB2DIV_PBDIVRDY_MASK));
   //Configure PBCLK2 clock divisor (SYSCLK / 5);
   PB2DIV = _PB2DIV_ON_MASK | 4;

   //Check PBDIVRDY bit
   while(!(PB3DIV & _PB3DIV_PBDIVRDY_MASK));
   //Configure PBCLK3 clock divisor (SYSCLK / 5);
   PB3DIV = _PB3DIV_ON_MASK | 4;

   //Check PBDIVRDY bit
   while(!(PB4DIV & _PB4DIV_PBDIVRDY_MASK));
   //Configure PBCLK4 clock divisor (SYSCLK / 1);
   PB4DIV = _PB4DIV_ON_MASK | 0;

   //Check PBDIVRDY bit
   while(!(PB5DIV & _PB5DIV_PBDIVRDY_MASK));
   //Configure PBCLK5 clock divisor (SYSCLK / 2);
   PB5DIV = _PB5DIV_ON_MASK | 1;

   //Relock the SYSKEY
   SYSKEY = 0;

   //Disable interrupts
   __builtin_disable_interrupts();

   //Set IV
   _CP0_BIS_CAUSE(_CP0_CAUSE_IV_MASK);
   //Enable multi-vectored mode
   INTCONSET = _INTCON_MVEC_MASK;
}


/**
 * @brief I/O initialization
 **/

void ioInit(void)
{
   //Configure LED1 (RH0), LED2 (RH1) and LED3 (RH2)
   TRISHCLR = LED1_MASK | LED2_MASK | LED3_MASK;
   //Clear LEDs
   LATHCLR = LED1_MASK | LED2_MASK | LED3_MASK;
   //Disable analog pads
   ANSELHCLR = LED1_MASK | LED2_MASK | LED3_MASK;

   //Configure SW1 (RB12), SW2 (RB13) and SW3 (RB14)
   TRISBSET = SW1_MASK | SW2_MASK | SW3_MASK;
   //Enable pull-ups
   CNPUBSET = SW1_MASK | SW2_MASK | SW3_MASK;
   //Disable analog pads
   ANSELBCLR = SW1_MASK | SW2_MASK | SW3_MASK;
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
   uint_t state;

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
         if(LATH & LED2_MASK)
            LATHCLR = LED2_MASK;
         else
            LATHSET = LED2_MASK;
      }
      else if(length == 2 && !strncasecmp((char_t *) message, "on", 2))
      {
         //Set user LED
         LATHSET = LED2_MASK;
      }
      else
      {
         //Clear user LED
         LATHCLR = LED2_MASK;
      }
   }
   else if(!strcmp(topic, "board/leds/2"))
   {
      if(length == 6 && !strncasecmp((char_t *) message, "toggle", 6))
      {
         //Toggle user LED
         if(LATH & LED3_MASK)
            LATHCLR = LED3_MASK;
         else
            LATHSET = LED3_MASK;
      }
      else if(length == 2 && !strncasecmp((char_t *) message, "on", 2))
      {
         //Set user LED
         LATHSET = LED3_MASK;
      }
      else
      {
         //Clear user LED
         LATHCLR = LED3_MASK;
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
   uint_t prevButton1State;
   uint_t prevButton2State;
   uint_t prevButton3State;
   char_t buffer[16];

   //Initialize variables
   prevButton1State = 0;
   prevButton2State = 0;
   prevButton3State = 0;

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

            //Get SW1 button state
            buttonState = !(PORTB & SW1_MASK);

            //Any change detected?
            if(buttonState != prevButton1State)
            {
               if(buttonState)
                  strcpy(buffer, "pressed");
               else
                  strcpy(buffer, "released");

               //Send PUBLISH packet
               error = mqttClientPublish(&mqttClientContext, "board/buttons/1",
                  buffer, strlen(buffer), MQTT_QOS_LEVEL_1, TRUE);

               //Save current state
               prevButton1State = buttonState;
            }

            //Check status code
            if(!error)
            {
               //Get SW2 button state
               buttonState = !(PORTB & SW2_MASK);

               //Any change detected?
               if(buttonState != prevButton2State)
               {
                  if(buttonState)
                     strcpy(buffer, "pressed");
                  else
                     strcpy(buffer, "released");

                  //Send PUBLISH packet
                  error = mqttClientPublish(&mqttClientContext, "board/buttons/2",
                     buffer, strlen(buffer), MQTT_QOS_LEVEL_1, TRUE);

                  //Save current state
                  prevButton2State = buttonState;
               }
            }

            //Check status code
            if(!error)
            {
               //Get SW3 button state
               buttonState = !(PORTB & SW3_MASK);

               //Any change detected?
               if(buttonState != prevButton3State)
               {
                  if(buttonState)
                     strcpy(buffer, "pressed");
                  else
                     strcpy(buffer, "released");

                  //Send PUBLISH packet
                  error = mqttClientPublish(&mqttClientContext, "board/buttons/3",
                     buffer, strlen(buffer), MQTT_QOS_LEVEL_1, TRUE);

                  //Save current state
                  prevButton3State = buttonState;
               }
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
      LATHSET = LED1_MASK;
      osDelayTask(100);
      LATHCLR = LED1_MASK;
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
   uint_t i;
   uint32_t value1;
   uint32_t value2;
   uint8_t seed[32];
   NetInterface *interface;
   OsTask *task;
   MacAddr macAddr;
#if (APP_USE_DHCP == DISABLED)
   Ipv4Addr ipv4Addr;
#endif
#if (APP_USE_SLAAC == DISABLED)
   Ipv6Addr ipv6Addr;
#endif

   //System initialization
   systemInit();

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
   TRACE_INFO("Target: PIC32MZ2048EFM144\r\n");
   TRACE_INFO("\r\n");

   //Configure I/Os
   ioInit();

   //Enable TRNG
   RNGCON |= _RNGCON_TRNGEN_MASK;

   //Generate a random seed
   for(i = 0; i < 32; i += 8)
   {
      //Wait for the RNG to contain a valid data
      while(RNGCNT < 64);

      //Get 64-bit random value
      value2 = RNGSEED2;
      value1 = RNGSEED1;

      //Copy random value
      seed[i] = value1 & 0xFF;
      seed[i + 1] = (value1 >> 8) & 0xFF;
      seed[i + 2] = (value1 >> 16) & 0xFF;
      seed[i + 3] = (value1 >> 24) & 0xFF;
      seed[i + 4] = value2 & 0xFF;
      seed[i + 5] = (value2 >> 8) & 0xFF;
      seed[i + 6] = (value2 >> 16) & 0xFF;
      seed[i + 7] = (value2 >> 24) & 0xFF;
   }

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
   netSetDriver(interface, &pic32mzEthDriver);
   netSetPhyDriver(interface, &lan8740PhyDriver);
   //Set external interrupt line driver
   netSetExtIntDriver(interface, &extIntDriver);

#if (APP_USE_DEFAULT_MAC_ADDR == ENABLED)
   //Use the factory preprogrammed MAC address
   macStringToAddr("00-00-00-00-00-00", &macAddr);
   netSetMacAddr(interface, &macAddr);
#else
   //Override the factory preprogrammed address
   macStringToAddr(APP_MAC_ADDR, &macAddr);
   netSetMacAddr(interface, &macAddr);
#endif

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
