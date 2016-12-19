/**
 * @file mqtt_client.c
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

//Switch to the appropriate trace level
#define TRACE_LEVEL MQTT_TRACE_LEVEL

//Dependencies
#include "core/net.h"
#include "core/tcp_misc.h"
#include "mqtt/mqtt_client.h"
#include "mqtt/mqtt_client_transport.h"
#include "mqtt/mqtt_client_misc.h"
#include "mqtt/mqtt_common.h"
#include "debug.h"

//Check TCP/IP stack configuration
#if (MQTT_CLIENT_SUPPORT == ENABLED)


/**
 * @brief Initialize MQTT client context
 * @param[in] context Pointer to the MQTT client context
 **/

void mqttClientInit(MqttClientContext *context)
{
   //Sanity check
   if(context != NULL)
   {
      //Clear MQTT client context
      memset(context, 0, sizeof(MqttClientContext));

      //Default protocol level
      context->protocolLevel = MQTT_PROTOCOL_LEVEL_3_1_1;
      //Default transport protocol
      context->transportProtocol = MQTT_TRANSPORT_PROTOCOL_TCP;
      //Default keep-alive parameter
      context->keepAlive = 0;
      //Default communication timeout
      context->timeout = 20000;

      //Initialize state machine
      context->state = MQTT_CLIENT_STATE_CLOSED;
      //Initialize packet identifier
      context->packetId = 0;
   }
}


/**
 * @brief Register publish callback function
 * @param[in] context Pointer to the MQTT client context
 * @param[in] callback Callback function to be called when a PUBLISH message is received
 * @return Error code
 **/

error_t mqttClientRegisterPublishCallback(MqttClientContext *context,
   MqttClientPublishCallback callback)
{
   //Check parameters
   if(context == NULL || callback == NULL)
      return ERROR_INVALID_PARAMETER;

   //Save callback function
   context->publishCallback = callback;

   //Successful processing
   return NO_ERROR;
}


#if (MQTT_CLIENT_TLS_SUPPORT == ENABLED)

/**
 * @brief Register TLS initialization callback function
 * @param[in] context Pointer to the MQTT client context
 * @param[in] callback TLS initialization callback function
 * @return Error code
 **/

error_t mqttClientRegisterTlsInitCallback(MqttClientContext *context,
   MqttClientTlsInitCallback callback)
{
   //Check parameters
   if(context == NULL || callback == NULL)
      return ERROR_INVALID_PARAMETER;

   //Save callback function
   context->tlsInitCallback = callback;

   //Successful processing
   return NO_ERROR;
}

#endif


/**
 * @brief Set the MQTT protocol level to be used
 * @param[in] context Pointer to the MQTT client context
 * @param[in] protocolLevel MQTT protocol level (3.1 or 3.1.1)
 * @return Error code
 **/

error_t mqttClientSetProtocolLevel(MqttClientContext *context,
   MqttProtocolLevel protocolLevel)
{
   //Make sure the MQTT client context is valid
   if(context == NULL)
      return ERROR_INVALID_PARAMETER;

   //Save the MQTT protocol level to be used
   context->protocolLevel = protocolLevel;

   //Successful processing
   return NO_ERROR;
}


/**
 * @brief Set the transport protocol to be used
 * @param[in] context Pointer to the MQTT client context
 * @param[in] transportProtocol Transport protocol to be used (TCP, TLS,
 *   WebSocket, or secure WebSocket)
 * @return Error code
 **/

error_t mqttClientSetTransportProtocol(MqttClientContext *context,
   MqttTransportProtocol transportProtocol)
{
   //Make sure the MQTT client context is valid
   if(context == NULL)
      return ERROR_INVALID_PARAMETER;

   //Save the transport protocol to be used
   context->transportProtocol = transportProtocol;

   //Successful processing
   return NO_ERROR;
}


/**
 * @brief Set keep-alive parameter
 * @param[in] context Pointer to the MQTT client context
 * @param[in] keepAlive Maximum time interval that is permitted to elapse
 *   between the point at which the client finishes transmitting one control
 *   packet and the point it starts sending the next
 * @return Error code
 **/

error_t mqttClientSetKeepAlive(MqttClientContext *context, uint16_t keepAlive)
{
   //Make sure the MQTT client context is valid
   if(context == NULL)
      return ERROR_INVALID_PARAMETER;

   //Save keep-alive parameter
   context->keepAlive = keepAlive;

   //Successful processing
   return NO_ERROR;
}


/**
 * @brief Set client identifier
 * @param[in] context Pointer to the MQTT client context
 * @param[in] clientId NULL-terminated string containing the client identifier
 * @return Error code
 **/

error_t mqttClientSetIdentifier(MqttClientContext *context,
   const char_t *clientId)
{
   //Check parameters
   if(context == NULL || clientId == NULL)
      return ERROR_INVALID_PARAMETER;

   //Make sure the length of the client identifier is acceptable
   if(strlen(clientId) > MQTT_CLIENT_MAX_ID_LEN)
      return ERROR_INVALID_LENGTH;

   //Save client identifier
   strcpy(context->clientId, clientId);

   //Successful processing
   return NO_ERROR;
}


/**
 * @brief Set authentication information
 * @param[in] context Pointer to the MQTT client context
 * @param[in] username NULL-terminated string containing the user name to be used
 * @param[in] password NULL-terminated string containing the password to be used
 * @return Error code
 **/

error_t mqttClientSetAuthInfo(MqttClientContext *context,
   const char_t *username, const char_t *password)
{
   //Check parameters
   if(context == NULL || username == NULL || password == NULL)
      return ERROR_INVALID_PARAMETER;

   //Make sure the length of the user name is acceptable
   if(strlen(username) > MQTT_CLIENT_MAX_USERNAME_LEN)
      return ERROR_INVALID_LENGTH;

   //Save user name
   strcpy(context->username, username);

   //Make sure the length of the password is acceptable
   if(strlen(password) > MQTT_CLIENT_MAX_PASSWORD_LEN)
      return ERROR_INVALID_LENGTH;

   //Save password
   strcpy(context->password, password);

   //Successful processing
   return NO_ERROR;
}


/**
 * @brief Specify the Will message
 * @param[in] context Pointer to the MQTT client context
 * @param[in] topic Will topic name
 * @param[in] message Will message
 * @param[in] length Length of the Will message
 * @param[in] qos QoS level to be used when publishing the Will message
 * @param[in] retain This flag specifies if the Will message is to be retained
 * @return Error code
 **/

error_t mqttClientSetWillMessage(MqttClientContext *context, const char_t *topic,
   const void *message, size_t length, MqttQosLevel qos, bool_t retain)
{
   //Check parameters
   if(context == NULL || topic == NULL)
      return ERROR_INVALID_PARAMETER;

   //Make sure the length of the Will topic is acceptable
   if(strlen(topic) > MQTT_CLIENT_MAX_WILL_TOPIC_LEN)
      return ERROR_INVALID_LENGTH;

   //Save Will topic
   strcpy(context->willMessage.topic, topic);

   //Any message payload
   if(length > 0)
   {
      //Sanity check
      if(message == NULL)
         return ERROR_INVALID_PARAMETER;

      //Make sure the length of the Will message payload is acceptable
      if(strlen(message) > MQTT_CLIENT_MAX_WILL_PAYLOAD_LEN)
         return ERROR_INVALID_LENGTH;

      //Save Will message payload
      memcpy(context->willMessage.payload, message, length);
   }

   //Length of the Will message payload
   context->willMessage.length = length;
   //QoS level to be used when publishing the Will message
   context->willMessage.qos = qos;
   //This flag specifies if the Will message is to be retained
   context->willMessage.retain = retain;

   //Successful processing
   return NO_ERROR;
}


#if (MQTT_CLIENT_WS_SUPPORT == ENABLED)

error_t mqttClientSetUri(MqttClientContext *context, const char_t *uri);

#endif


/**
 * @brief Establish network connection with the MQTT server
 * @param[in] context Pointer to the MQTT client context
 * @param[in] serverIpAddr IP address of the MQTT server to connect to
 * @param[in] serverPort TCP port number that will be used to establish the
 *   connection
 * @param[in] uri Resource name (for WebSocket connections only)
 * @return Error code
 **/

error_t mqttClientOpen(MqttClientContext *context, const IpAddr *serverIpAddr,
   uint16_t serverPort, const char_t *uri)
{
   error_t error;

   //Check parameters
   if(context == NULL || serverIpAddr == NULL)
      return ERROR_INVALID_PARAMETER;

   //Establish network connection
   while(context->state != MQTT_CLIENT_STATE_ESTABLISHED)
   {
      //Check current state
      if(context->state == MQTT_CLIENT_STATE_CLOSED)
      {
         //Open network connection
         error = mqttClientOpenConnection(context);

         //Check status code
         if(!error)
         {
            //Debug message
            TRACE_INFO("MQTT: Connecting to server %s port %" PRIu16 "...\r\n",
               ipAddrToString(serverIpAddr, NULL), serverPort);

            //The network connection is open
            mqttClientChangeState(context, MQTT_CLIENT_STATE_OPEN);
         }
      }
      else if(context->state == MQTT_CLIENT_STATE_OPEN)
      {
         //Establish network connection
         error = mqttClientEstablishConnection(context, serverIpAddr,
            serverPort, uri);

         //Check status code
         if(!error)
         {
            //Debug message
            TRACE_INFO("MQTT: Connected to server\r\n");

            //The network connection is established
            mqttClientChangeState(context, MQTT_CLIENT_STATE_ESTABLISHED);
         }
      }
      else
      {
         //Invalid state
         error = ERROR_WRONG_STATE;
      }

      //Any error to report?
      if(error)
      {
         //Close network connection
         mqttClientCloseConnection(context);
         //The network connection is closed
         mqttClientChangeState(context, MQTT_CLIENT_STATE_CLOSED);
         break;
      }
   }

   //Return status code
   return error;
}


/**
 * @brief Send CONNECT packet
 * @param[in] context Pointer to the MQTT client context
 * @param[in] cleanSession If this flag is set, then the client and server
 *   must discard any previous session and start a new one
 * @return Error code
 **/

error_t mqttClientConnect(MqttClientContext *context, bool_t cleanSession)
{
   error_t error;
   size_t n;

   //Make sure the MQTT client context is valid
   if(context == NULL)
      return ERROR_INVALID_PARAMETER;

   //Send CONNECT packet and wait for CONNACK packet to be received
   while(context->state != MQTT_CLIENT_STATE_READY)
   {
      //Check current state
      if(context->state == MQTT_CLIENT_STATE_ESTABLISHED)
      {
         //Format CONNECT packet
         error = mqttClientFormatConnect(context, cleanSession);

         //Check status code
         if(!error)
         {
            //Debug message
            TRACE_INFO("MQTT: Sending CONNECT packet (%" PRIuSIZE " bytes)...\r\n", context->packetLen);
            TRACE_DEBUG_ARRAY("  ", context->packet, context->packetLen);

            //Point to the beginning of the packet
            context->packetPos = 0;
            //Prepare to send CONNECT packet
            mqttClientChangeState(context, MQTT_CLIENT_STATE_SENDING_CONNECT);
         }
      }
      else if(context->state == MQTT_CLIENT_STATE_SENDING_CONNECT)
      {
         //Any remaining data to be sent?
         if(context->packetPos < context->packetLen)
         {
            //Send more data
            error = mqttClientSendData(context, context->packet + context->packetPos,
               context->packetLen - context->packetPos, &n, 0);

            //Advance data pointer
            context->packetPos += n;
         }
         else
         {
            //Debug message
            TRACE_INFO("MQTT: Waiting for CONNACK packet...\r\n");

            //CONNECT packet successfully sent
            mqttClientChangeState(context, MQTT_CLIENT_STATE_CONNECT_SENT);
         }
      }
      else if(context->state == MQTT_CLIENT_STATE_CONNECT_SENT)
      {
         //Wait for CONNACK packet
         error = mqttClientProcessEvents(context, context->timeout);
      }
      else if(context->state == MQTT_CLIENT_STATE_CONNACK_RECEIVED)
      {
         //A CONNACK packet has been received
         mqttClientChangeState(context, MQTT_CLIENT_STATE_READY);
      }
      else
      {
         //Invalid state
         error = ERROR_WRONG_STATE;
      }

      //Any error to report?
      if(error)
      {
         //Close network connection
         mqttClientCloseConnection(context);
         break;
      }
   }

   //Return status code
   return error;
}


/**
 * @brief Send PUBLISH packet
 * @param[in] context Pointer to the MQTT client context
 * @param[in] topic Topic name
 * @param[in] message Message payload
 * @param[in] length Length of the message payload
 * @param[in] qos QoS level to be used when publishing the message
 * @param[in] retain This flag specifies if the message is to be retained
 * @return Error code
 **/

error_t mqttClientPublish(MqttClientContext *context, const char_t *topic,
   const void *message, size_t length, MqttQosLevel qos, bool_t retain)
{
   error_t error;
   size_t n;

   //Make sure the MQTT client context is valid
   if(context == NULL)
      return ERROR_INVALID_PARAMETER;

   //Check current state
   if(context->state != MQTT_CLIENT_STATE_READY)
      return ERROR_WRONG_STATE;

   //Format PUBLISH packet
   error = mqttClientFormatPublish(context, topic, message, length, qos, retain);

   //Any error to report?
   if(error)
      return error;

   //Debug message
   TRACE_INFO("MQTT: Sending PUBLISH packet (%" PRIuSIZE " bytes)...\r\n", context->packetLen);
   TRACE_DEBUG_ARRAY("  ", context->packet, context->packetLen);

   //Point to the beginning of the packet
   context->packetPos = 0;
   //Prepare to send PUBLISH packet
   mqttClientChangeState(context, MQTT_CLIENT_STATE_SENDING_PUBLISH);

   //Send PUBLISH packet and wait for PUBACK/PUBCOMP packet to be received
   while(context->state != MQTT_CLIENT_STATE_READY)
   {
      //Check current state
      if(context->state == MQTT_CLIENT_STATE_SENDING_PUBLISH)
      {
         //Any remaining data to be sent?
         if(context->packetPos < context->packetLen)
         {
            //Send more data
            error = mqttClientSendData(context, context->packet + context->packetPos,
               context->packetLen - context->packetPos, &n, 0);

            //Advance data pointer
            context->packetPos += n;
         }
         else
         {
            //Check QoS level
            if(qos == MQTT_QOS_LEVEL_1)
            {
               //Debug message
               TRACE_INFO("MQTT: Waiting for PUBACK packet...\r\n");

               //A QoS 1 PUBLISH packet is acknowledged by a PUBACK packet
               mqttClientChangeState(context, MQTT_CLIENT_STATE_PUBLISH_SENT);
            }
            else if(qos == MQTT_QOS_LEVEL_2)
            {
               //Debug message
               TRACE_INFO("MQTT: Waiting for PUBCOMP packet...\r\n");

               //The receiver of a QoS 2 PUBLISH packet acknowledges receipt
               //with a two-step acknowledgement process
               mqttClientChangeState(context, MQTT_CLIENT_STATE_PUBLISH_SENT);
            }
            else
            {
               //No response is sent by the receiver and no retry is performed by the sender
               mqttClientChangeState(context, MQTT_CLIENT_STATE_READY);
            }
         }
      }
      else if(context->state == MQTT_CLIENT_STATE_PUBLISH_SENT)
      {
         //Wait for PUBACK/PUBCOMP packet
         error = mqttClientProcessEvents(context, context->timeout);
      }
      else if(context->state == MQTT_CLIENT_STATE_PUBACK_RECEIVED)
      {
         //A PUBACK packet has been received
         mqttClientChangeState(context, MQTT_CLIENT_STATE_READY);
      }
      else if(context->state == MQTT_CLIENT_STATE_PUBCOMP_RECEIVED)
      {
         //A PUBCOMP packet has been received
         mqttClientChangeState(context, MQTT_CLIENT_STATE_READY);
      }
      else
      {
         //Invalid state
         error = ERROR_WRONG_STATE;
      }

      //Any error to report?
      if(error)
      {
         //Close network connection
         mqttClientCloseConnection(context);
         break;
      }
   }

   //Return status code
   return error;
}


/**
 * @brief Send SUBSCRIBE packet
 * @param[in] context Pointer to the MQTT client context
 * @param[in] topic Topic filter
 * @param[in] qos Maximum QoS level at which the server can send application
 *   messages to the client
 * @return Error code
 **/

error_t mqttClientSubscribe(MqttClientContext *context,
   const char_t *topic, MqttQosLevel qos)
{
   error_t error;
   size_t n;

   //Make sure the MQTT client context is valid
   if(context == NULL)
      return ERROR_INVALID_PARAMETER;

   //Check current state
   if(context->state != MQTT_CLIENT_STATE_READY)
      return ERROR_WRONG_STATE;

   //Format SUBSCRIBE packet
   error = mqttClientFormatSubscribe(context, topic, qos);

   //Any error to report?
   if(error)
      return error;

   //Debug message
   TRACE_INFO("MQTT: Sending SUBSCRIBE packet (%" PRIuSIZE " bytes)...\r\n", context->packetLen);
   TRACE_DEBUG_ARRAY("  ", context->packet, context->packetLen);

   //Point to the beginning of the packet
   context->packetPos = 0;
   //Prepare to send SUBSCRIBE packet
   mqttClientChangeState(context, MQTT_CLIENT_STATE_SENDING_SUBSCRIBE);

   //Send SUBSCRIBE packet and wait for SUBACK packet to be received
   while(context->state != MQTT_CLIENT_STATE_READY)
   {
      //Check current state
      if(context->state == MQTT_CLIENT_STATE_SENDING_SUBSCRIBE)
      {
         //Any remaining data to be sent?
         if(context->packetPos < context->packetLen)
         {
            //Send more data
            error = mqttClientSendData(context, context->packet + context->packetPos,
               context->packetLen - context->packetPos, &n, 0);

            //Advance data pointer
            context->packetPos += n;
         }
         else
         {
            //Debug message
            TRACE_INFO("MQTT: Waiting for SUBACK packet...\r\n");

            //SUBSCRIBE packet successfully sent
            mqttClientChangeState(context, MQTT_CLIENT_STATE_SUBSCRIBE_SENT);
         }
      }
      else if(context->state == MQTT_CLIENT_STATE_SUBSCRIBE_SENT)
      {
         //Wait for SUBACK packet
         error = mqttClientProcessEvents(context, context->timeout);
      }
      else if(context->state == MQTT_CLIENT_STATE_SUBACK_RECEIVED)
      {
         //A SUBACK packet has been received
         mqttClientChangeState(context, MQTT_CLIENT_STATE_READY);
      }
      else
      {
         //Invalid state
         error = ERROR_WRONG_STATE;
      }

      //Any error to report?
      if(error)
      {
         //Close network connection
         mqttClientCloseConnection(context);
         break;
      }
   }

   //Return status code
   return error;
}


/**
 * @brief Send UNSUBSCRIBE packet
 * @param[in] context Pointer to the MQTT client context
 * @param[in] topic Topic filter
 * @return Error code
 **/

error_t mqttClientUnsubscribe(MqttClientContext *context, const char_t *topic)
{
   error_t error;
   size_t n;

   //Make sure the MQTT client context is valid
   if(context == NULL)
      return ERROR_INVALID_PARAMETER;

   //Check current state
   if(context->state != MQTT_CLIENT_STATE_READY)
      return ERROR_WRONG_STATE;

   //Format UNSUBSCRIBE packet
   error = mqttClientFormatUnsubscribe(context, topic);

   //Any error to report?
   if(error)
      return error;

   //Debug message
   TRACE_INFO("MQTT: Sending UNSUBSCRIBE packet (%" PRIuSIZE " bytes)...\r\n", context->packetLen);
   TRACE_DEBUG_ARRAY("  ", context->packet, context->packetLen);

   //Point to the beginning of the packet
   context->packetPos = 0;
   //Prepare to send UNSUBSCRIBE packet
   mqttClientChangeState(context, MQTT_CLIENT_STATE_SENDING_UNSUBSCRIBE);

   //Send UNSUBSCRIBE packet and wait for SUBACK packet to be received
   while(context->state != MQTT_CLIENT_STATE_READY)
   {
      //Check current state
      if(context->state == MQTT_CLIENT_STATE_SENDING_UNSUBSCRIBE)
      {
         //Any remaining data to be sent?
         if(context->packetPos < context->packetLen)
         {
            //Send more data
            error = mqttClientSendData(context, context->packet + context->packetPos,
               context->packetLen - context->packetPos, &n, 0);

            //Advance data pointer
            context->packetPos += n;
         }
         else
         {
            //Debug message
            TRACE_INFO("MQTT: Waiting for UNSUBACK packet...\r\n");

            //UNSUBSCRIBE packet successfully sent
            mqttClientChangeState(context, MQTT_CLIENT_STATE_UNSUBSCRIBE_SENT);
         }
      }
      else if(context->state == MQTT_CLIENT_STATE_SUBSCRIBE_SENT)
      {
         //Wait for UNSUBACK packet
         error = mqttClientProcessEvents(context, context->timeout);
      }
      else if(context->state == MQTT_CLIENT_STATE_UNSUBACK_RECEIVED)
      {
         //An UNSUBACK packet has been received
         mqttClientChangeState(context, MQTT_CLIENT_STATE_READY);
      }
      else
      {
         //Invalid state
         error = ERROR_WRONG_STATE;
      }

      //Any error to report?
      if(error)
      {
         //Close network connection
         mqttClientCloseConnection(context);
         break;
      }
   }

   //Return status code
   return error;
}


/**
 * @brief Send DISCONNECT packet
 * @param[in] context Pointer to the MQTT client context
 * @return Error code
 **/

error_t mqttClientDisconnect(MqttClientContext *context)
{
   error_t error;
   size_t n;

   //Make sure the MQTT client context is valid
   if(context == NULL)
      return ERROR_INVALID_PARAMETER;

   //Initialize error code
   error = NO_ERROR;

   //Send DISCONNECT packet and shutdown network connection
   while(context->state != MQTT_CLIENT_STATE_DISCONNECTED)
   {
      //Check current state
      if(context->state == MQTT_CLIENT_STATE_READY)
      {
         //Format DISCONNECT packet
         error = mqttClientFormatDisconnect(context);

         //Check status code
         if(!error)
         {
            //Debug message
            TRACE_INFO("MQTT: Sending DISCONNECT packet (%" PRIuSIZE " bytes)...\r\n", context->packetLen);
            TRACE_DEBUG_ARRAY("  ", context->packet, context->packetLen);

            //Point to the beginning of the packet
            context->packetPos = 0;
            //Prepare to send DISCONNECT packet
            mqttClientChangeState(context, MQTT_CLIENT_STATE_SENDING_DISCONNECT);
         }
      }
      else if(context->state == MQTT_CLIENT_STATE_SENDING_DISCONNECT)
      {
         //Any remaining data to be sent?
         if(context->packetPos < context->packetLen)
         {
            //Send more data
            error = mqttClientSendData(context, context->packet + context->packetPos,
               context->packetLen - context->packetPos, &n, 0);

            //Advance data pointer
            context->packetPos += n;
         }
         else
         {
            //Debug message
            TRACE_INFO("MQTT: Shutdown connection...\r\n");

            //DISCONNECT packet successfully sent
            mqttClientChangeState(context, MQTT_CLIENT_STATE_DISCONNECT_SENT);
         }
      }
      else if(context->state == MQTT_CLIENT_STATE_DISCONNECT_SENT)
      {
         //Properly dispose the network connection
         error = mqttClientShutdownConnection(context);

         //Check status code
         if(!error)
         {
            //After sending a DISCONNECT packet the client must not send any
            //more control packets on that network connection
            mqttClientChangeState(context, MQTT_CLIENT_STATE_DISCONNECTED);
         }
      }
      else
      {
         //Invalid state
         error = ERROR_WRONG_STATE;
      }

      //Any error to report?
      if(error)
      {
         //Close network connection
         mqttClientCloseConnection(context);
         break;
      }
   }

   //Return status code
   return error;
}


/**
 * @brief Close network connection
 * @param[in] context Pointer to the MQTT client context
 * @return Error code
 **/

error_t mqttClientClose(MqttClientContext *context)
{
   //Make sure the MQTT client context is valid
   if(context == NULL)
      return ERROR_INVALID_PARAMETER;

   //Close network connection
   mqttClientCloseConnection(context);
   //The network connection is closed
   mqttClientChangeState(context, MQTT_CLIENT_STATE_CLOSED);

   //Network connection successfully closed
   return NO_ERROR;
}


/**
 * @brief Process MQTT client events
 * @param[in] context Pointer to the MQTT client context
 * @param[in] timeout Maximum time to wait before returning
 * @return Error code
 **/

error_t mqttClientProcessEvents(MqttClientContext *context, systime_t timeout)
{
   error_t error;
   uint_t event;
   uint_t i;
   size_t n;
   size_t pos;
   size_t length;
   size_t remainingLen;
   MqttPacketHeader *header;

   //TCP transport protocol?
   if(context->transportProtocol == MQTT_TRANSPORT_PROTOCOL_TCP)
   {
      //Get exclusive access
      osAcquireMutex(&netMutex);
      //Wait for some data to be available for reading
      event = tcpWaitForEvents(context->socket, SOCKET_EVENT_RX_READY, timeout);
      //Release exclusive access
      osReleaseMutex(&netMutex);
   }
#if (MQTT_CLIENT_TLS_SUPPORT == ENABLED)
   //TLS transport protocol?
   else if(context->transportProtocol == MQTT_TRANSPORT_PROTOCOL_TLS)
   {
      //Sanity check
      if(context->tlsContext == NULL)
         return ERROR_FAILURE;

      //Check whether some data is pending in the receive buffer
      if(context->tlsContext->rxBufferLength > 0)
      {
         //No need to poll the underlying socket for incoming traffic...
         event = SOCKET_EVENT_RX_READY;
      }
      else
      {
         //Get exclusive access
         osAcquireMutex(&netMutex);
         //Wait for some data to be available for reading
         event = tcpWaitForEvents(context->socket, SOCKET_EVENT_RX_READY, timeout);
         //Release exclusive access
         osReleaseMutex(&netMutex);
      }
   }
#endif
#if (MQTT_CLIENT_WS_SUPPORT == ENABLED)
   //WebSocket transport protocol?
   else if(context->transportProtocol == MQTT_TRANSPORT_PROTOCOL_WS)
   {
      //Sanity check
      if(context->webSocket == NULL)
         return ERROR_FAILURE;

      //Get exclusive access
      osAcquireMutex(&netMutex);
      //Wait for some data to be available for reading
      event = tcpWaitForEvents(context->webSocket->socket, SOCKET_EVENT_RX_READY, timeout);
      //Release exclusive access
      osReleaseMutex(&netMutex);
   }
#endif
#if (MQTT_CLIENT_WS_SUPPORT == ENABLED && WEB_SOCKET_TLS_SUPPORT)
   //Secure WebSocket transport protocol?
   else if(context->transportProtocol == MQTT_TRANSPORT_PROTOCOL_WSS)
   {
      //Sanity check
      if(context->webSocket == NULL || context->webSocket->tlsContext == NULL)
         return ERROR_FAILURE;

      //Check whether some data is pending in the receive buffer
      if(context->webSocket->tlsContext->rxBufferLength > 0)
      {
         //No need to poll the underlying socket for incoming traffic...
         event = SOCKET_EVENT_RX_READY;
      }
      else
      {
         //Get exclusive access
         osAcquireMutex(&netMutex);
         //Wait for some data to be available for reading
         event = tcpWaitForEvents(context->webSocket->socket, SOCKET_EVENT_RX_READY, timeout);
         //Release exclusive access
         osReleaseMutex(&netMutex);
      }
   }
#endif
   //Unknown transport protocol?
   else
   {
      //Report an error
      return ERROR_INVALID_PROTOCOL;
   }

   //A timeout exception occurred?
   if(event != SOCKET_EVENT_RX_READY)
      return ERROR_TIMEOUT;

   //Point to the MQTT packet header
   header = (MqttPacketHeader *) context->buffer;

   //Read the first byte of the header
   error = mqttClientReceiveData(context, header, 1, &n, 0);
   //Check status code
   if(error)
      return error;

   //Point to the MQTT packet header
   header = (MqttPacketHeader *) context->buffer;

   //Prepare to decode the Remaining Length field
   remainingLen = 0;

   //The Remaining Length is encoded using a variable length encoding scheme
   for(i = 0; i < 4; i++)
   {
      //Read a single byte
      error = mqttClientReceiveData(context, &header->length[i], 1, &n, 0);
      //Any error to report?
      if(error)
         return error;

      //The most significant bit is used to indicate that there are
      //following bytes in the representation
      if(header->length[i] & 0x80)
      {
         //Applications can send control packets of size up to 256 MB
         if(i == 3)
            return ERROR_INVALID_SYNTAX;

         //The least significant seven bits of each byte encode the data
         remainingLen |= (header->length[i] & 0x7F) << (7 * i);
      }
      else
      {
         //The least significant seven bits of each byte encode the data
         remainingLen |= header->length[i] << (7 * i);
         //This is the last byte
         break;
      }
   }

   //Point to the variable header
   pos = sizeof(MqttPacketHeader) + i + 1;
   //Calculate the length of the control packet
   length = pos + remainingLen;

   //Sanity check
   if(length > MQTT_CLIENT_BUFFER_SIZE)
      return ERROR_INVALID_LENGTH;

   //Read the data in the variable header and the payload
   while(pos < length)
   {
      //Limit the number of data to read at a time
      n = length - pos;

      //Read data
      error = mqttClientReceiveData(context, context->buffer + pos, n, &n, 0);
      //Any error to report?
      if(error)
         return error;

      //Advance data pointer
      pos += n;
   }

   //Save the received packet
   context->packet = context->buffer;
   context->packetPos = 0;
   context->packetLen = length;

   //Process MQTT control packet
   error = mqttClientProcessPacket(context);
   //Return status code
   return error;
}

#endif
