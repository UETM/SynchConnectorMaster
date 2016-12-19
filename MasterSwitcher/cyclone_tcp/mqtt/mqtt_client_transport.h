/**
 * @file mqtt_client_transport.h
 * @brief Transport protocol abstraction layer
 *
 * @section License
 *
 * Copyright (C) 2010-2016 Oryx Embedded SARL. All rights reserved.
 *
 * This file is part of CycloneSSL Open.
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

#ifndef _MQTT_CLIENT_IO_H
#define _MQTT_CLIENT_IO_H

//MQTT client related functions
error_t mqttClientOpenConnection(MqttClientContext *context);

error_t mqttClientEstablishConnection(MqttClientContext *context,
   const IpAddr *serverIpAddr, uint16_t serverPort, const char_t *uri);

error_t mqttClientShutdownConnection(MqttClientContext *context);

void mqttClientCloseConnection(MqttClientContext *context);

error_t mqttClientSendData(MqttClientContext *context, const void *data,
   size_t length, size_t *written, uint_t flags);

error_t mqttClientReceiveData(MqttClientContext *context, void *data,
   size_t size, size_t *received, uint_t flags);

#endif
