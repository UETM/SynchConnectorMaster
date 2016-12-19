/**
 * @file mqtt_client.h
 * @brief MQTT client
 *
 * @section License
 *
 * Copyright (C) 2010-2016 Oryx Embedded SARL. All rights reserved.
 *
 * This file is part of CycloneTCP Open.
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

#ifndef _MQTT_CLIENT_H
#define _MQTT_CLIENT_H

//Dependencies
#include "core/net.h"
#include "mqtt/mqtt_common.h"

//MQTT client support
#ifndef MQTT_CLIENT_SUPPORT
   #define MQTT_CLIENT_SUPPORT ENABLED
#elif (MQTT_CLIENT_SUPPORT != ENABLED && MQTT_CLIENT_SUPPORT != DISABLED)
   #error MQTT_CLIENT_SUPPORT parameter is not valid
#endif

//MQTT over SSL/TLS
#ifndef MQTT_CLIENT_TLS_SUPPORT
   #define MQTT_CLIENT_TLS_SUPPORT DISABLED
#elif (MQTT_CLIENT_TLS_SUPPORT != ENABLED && MQTT_CLIENT_TLS_SUPPORT != DISABLED)
   #error MQTT_CLIENT_TLS_SUPPORT parameter is not valid
#endif

//MQTT over WebSocket
#ifndef MQTT_CLIENT_WS_SUPPORT
   #define MQTT_CLIENT_WS_SUPPORT DISABLED
#elif (MQTT_CLIENT_WS_SUPPORT != ENABLED && MQTT_CLIENT_WS_SUPPORT != DISABLED)
   #error MQTT_CLIENT_WS_SUPPORT parameter is not valid
#endif

//Maximum length of the client identifier
#ifndef MQTT_CLIENT_MAX_ID_LEN
   #define MQTT_CLIENT_MAX_ID_LEN 16
#elif (MQTT_CLIENT_MAX_ID_LEN < 0)
   #error MQTT_CLIENT_MAX_ID_LEN parameter is not valid
#endif

//Maximum length of the user name
#ifndef MQTT_CLIENT_MAX_USERNAME_LEN
   #define MQTT_CLIENT_MAX_USERNAME_LEN 16
#elif (MQTT_CLIENT_MAX_USERNAME_LEN < 0)
   #error MQTT_CLIENT_MAX_USERNAME_LEN parameter is not valid
#endif

//Maximum length of the password
#ifndef MQTT_CLIENT_MAX_PASSWORD_LEN
   #define MQTT_CLIENT_MAX_PASSWORD_LEN 16
#elif (MQTT_CLIENT_MAX_PASSWORD_LEN < 0)
   #error MQTT_CLIENT_MAX_PASSWORD_LEN parameter is not valid
#endif

//Maximum length of the will topic
#ifndef MQTT_CLIENT_MAX_WILL_TOPIC_LEN
   #define MQTT_CLIENT_MAX_WILL_TOPIC_LEN 16
#elif (MQTT_CLIENT_MAX_WILL_TOPIC_LEN < 0)
   #error MQTT_CLIENT_MAX_WILL_TOPIC_LEN parameter is not valid
#endif

//Maximum length of the will message payload
#ifndef MQTT_CLIENT_MAX_WILL_PAYLOAD_LEN
   #define MQTT_CLIENT_MAX_WILL_PAYLOAD_LEN 16
#elif (MQTT_CLIENT_MAX_WILL_PAYLOAD_LEN < 0)
   #error MQTT_CLIENT_MAX_WILL_PAYLOAD_LEN parameter is not valid
#endif

//Size of the MQTT client buffer
#ifndef MQTT_CLIENT_BUFFER_SIZE
   #define MQTT_CLIENT_BUFFER_SIZE 512
#elif (MQTT_CLIENT_BUFFER_SIZE < 1)
   #error MQTT_CLIENT_BUFFER_SIZE parameter is not valid
#endif

//SSL/TLS supported?
#if (MQTT_CLIENT_TLS_SUPPORT == ENABLED)
   #include "crypto.h"
   #include "tls.h"
#endif

//WebSocket supported?
#if (MQTT_CLIENT_WS_SUPPORT == ENABLED)
   #include "web_socket/web_socket.h"
#endif

//Forward declaration of FtpClientContext structure
struct _MqttClientContext;
#define MqttClientContext struct _MqttClientContext


/**
 * @brief MQTT client states
 **/

typedef enum
{
   MQTT_CLIENT_STATE_CLOSED              = 0,
   MQTT_CLIENT_STATE_OPEN                = 1,
   MQTT_CLIENT_STATE_ESTABLISHED         = 2,
   MQTT_CLIENT_STATE_SENDING_CONNECT     = 3,
   MQTT_CLIENT_STATE_CONNECT_SENT        = 4,
   MQTT_CLIENT_STATE_CONNACK_RECEIVED    = 5,
   MQTT_CLIENT_STATE_READY               = 6,
   MQTT_CLIENT_STATE_SENDING_PUBLISH     = 7,
   MQTT_CLIENT_STATE_PUBLISH_SENT        = 8,
   MQTT_CLIENT_STATE_PUBACK_RECEIVED     = 9,
   MQTT_CLIENT_STATE_PUBCOMP_RECEIVED    = 10,
   MQTT_CLIENT_STATE_SENDING_SUBSCRIBE   = 11,
   MQTT_CLIENT_STATE_SUBSCRIBE_SENT      = 12,
   MQTT_CLIENT_STATE_SUBACK_RECEIVED     = 13,
   MQTT_CLIENT_STATE_SENDING_UNSUBSCRIBE = 14,
   MQTT_CLIENT_STATE_UNSUBSCRIBE_SENT    = 15,
   MQTT_CLIENT_STATE_UNSUBACK_RECEIVED   = 16,
   MQTT_CLIENT_STATE_SENDING_PINQREQ     = 17,
   MQTT_CLIENT_STATE_PINQREQ_SENT        = 18,
   MQTT_CLIENT_STATE_SENDING_DISCONNECT  = 19,
   MQTT_CLIENT_STATE_DISCONNECT_SENT     = 20,
   MQTT_CLIENT_STATE_DISCONNECTED        = 21
} MqttClientState;


/**
 * @brief Publish callback function
 **/

typedef void (*MqttClientPublishCallback)(MqttClientContext *context,
   const char_t *topic, const uint8_t *message, size_t length);


//SSL/TLS supported?
#if (MQTT_CLIENT_TLS_SUPPORT == ENABLED)

/**
 * @brief SSL initialization callback function
 **/

typedef error_t (*MqttClientTlsInitCallback)(MqttClientContext *context,
   TlsContext *tlsContext);

#endif


/**
 * @brief Will message
 **/

typedef struct
{
   char_t topic[MQTT_CLIENT_MAX_WILL_TOPIC_LEN + 1];  ///<Will topic name
   uint8_t payload[MQTT_CLIENT_MAX_WILL_PAYLOAD_LEN]; ///<Will message payload
   size_t length;                                     ///<Length of the Will message payload
   MqttQosLevel qos;                                  ///<QoS level to be used when publishing the Will message
   bool_t retain;                                     ///<Specifies if the Will message is to be retained
} MqttWillMessage;


/**
 * @brief MQTT client context
 **/

struct _MqttClientContext
{
   NetInterface *interface;                           ///<Underlying network interface
   Socket *socket;                                    ///<Underlying TCP socket
   MqttProtocolLevel protocolLevel;                   ///<MQTT protocol level
   MqttTransportProtocol transportProtocol;           ///<Transport protocol
   uint16_t keepAlive;                                ///<Keep-alive parameter
   systime_t timeout;                                 ///<Communication timeout
   MqttClientState state;                             ///<MQTT client state
   uint16_t packetId;
   MqttClientPublishCallback publishCallback;         ///<Publish callback
   char_t clientId[MQTT_CLIENT_MAX_ID_LEN + 1];       ///<Client identifier
   char_t username[MQTT_CLIENT_MAX_USERNAME_LEN + 1]; ///<User name
   char_t password[MQTT_CLIENT_MAX_PASSWORD_LEN + 1]; ///<Password
   MqttWillMessage willMessage;                       ///<Will message
   uint8_t buffer[MQTT_CLIENT_BUFFER_SIZE];           ///<Buffer
   uint8_t *packet;
   size_t packetPos;
   size_t packetLen;
#if (MQTT_CLIENT_TLS_SUPPORT == ENABLED)
   TlsContext *tlsContext;                            ///<SSL context
   TlsSession tlsSession;                             ///<SSL session
   MqttClientTlsInitCallback tlsInitCallback;         ///<SSL initialization callback function
#endif
#if (MQTT_CLIENT_WS_SUPPORT == ENABLED)
   WebSocket *webSocket;                              ///<Underlying WebSocket
#endif
};


//MQTT client related functions
void mqttClientInit(MqttClientContext *context);

error_t mqttClientRegisterPublishCallback(MqttClientContext *context,
   MqttClientPublishCallback callback);

#if (MQTT_CLIENT_TLS_SUPPORT == ENABLED)

error_t mqttClientRegisterTlsInitCallback(MqttClientContext *context,
   MqttClientTlsInitCallback callback);

#endif

error_t mqttClientSetProtocolLevel(MqttClientContext *context,
   MqttProtocolLevel protocolLevel);

error_t mqttClientSetTransportProtocol(MqttClientContext *context,
   MqttTransportProtocol transportProtocol);

error_t mqttClientSetKeepAlive(MqttClientContext *context, uint16_t keepAlive);

error_t mqttClientSetIdentifier(MqttClientContext *context,
   const char_t *clientId);

error_t mqttClientSetAuthInfo(MqttClientContext *context,
   const char_t *username, const char_t *password);

error_t mqttClientSetWillMessage(MqttClientContext *context, const char_t *topic,
   const void *message, size_t length, MqttQosLevel qos, bool_t retain);

error_t mqttClientOpen(MqttClientContext *context, const IpAddr *serverIpAddr,
   uint16_t serverPort, const char_t *uri);

error_t mqttClientConnect(MqttClientContext *context, bool_t cleanSession);

error_t mqttClientPublish(MqttClientContext *context, const char_t *topic,
   const void *message, size_t length, MqttQosLevel qos, bool_t retain);

error_t mqttClientSubscribe(MqttClientContext *context,
   const char_t *topic, MqttQosLevel qos);

error_t mqttClientUnsubscribe(MqttClientContext *context, const char_t *topic);

error_t mqttClientDisconnect(MqttClientContext *context);
error_t mqttClientClose(MqttClientContext *context);

error_t mqttClientProcessEvents(MqttClientContext *context, systime_t timeout);

#endif
