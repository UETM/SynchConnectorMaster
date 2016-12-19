/**
 * @file oid.c
 * @brief OID (Object Identifier)
 *
 * @section License
 *
 * Copyright (C) 2010-2016 Oryx Embedded SARL. All rights reserved.
 *
 * This file is part of CycloneCrypto Open.
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
#define TRACE_LEVEL CRYPTO_TRACE_LEVEL

//Dependencies
#include <string.h>
#include <ctype.h>
#include "crypto.h"
#include "oid.h"
#include "debug.h"

//Check crypto library configuration
#if (OID_SUPPORT == ENABLED)


/**
* @brief Check whether the specified object identifier is valid
* @param[in] oid Pointer to the object identifier
* @param[in] oidLen Length of the OID, in bytes
* @return Error code
**/

error_t oidCheck(const uint8_t *oid, size_t oidLen)
{
   size_t i;
   size_t n;

   //Check parameters
   if(oid == NULL)
      return ERROR_INVALID_PARAMETER;

   //Check the length of the OID
   if(oidLen == 0)
   {
      //Report an error
      return ERROR_INVALID_SYNTAX;
   }
   else if(oidLen > 1)
   {
      //Parse the object identifier
      for(i = 1, n = 2; i < oidLen; i++)
      {
         //Update the total number of nodes
         if(!(oid[i] & OID_MORE_FLAG))
            n++;

         //SNMP limits object identifier values to a maximum of 128 nodes
         if(n > 128)
            return ERROR_INVALID_SYNTAX;
      }

      //Ensure that the last sub-identifier is valid
      if(oid[oidLen - 1] & OID_MORE_FLAG)
         return ERROR_INVALID_SYNTAX;
   }

   //The specified OID is valid
   return NO_ERROR;
}


/**
 * @brief Compare object identifiers
 * @param[in] oid1 Pointer the first OID
 * @param[in] oidLen1 Length of the first OID, in bytes
 * @param[in] oid2 Pointer the second OID
 * @param[in] oidLen2 Length of the second OID, in bytes
 * @return Comparison result
 * @retval 0 Objects identifiers are equal
 * @retval -1 The first OID lexicographically precedes the second OID
 * @retval 1 The second OID lexicographically precedes the first OID
 **/

int_t oidComp(const uint8_t *oid1, size_t oidLen1,
   const uint8_t *oid2, size_t oidLen2)
{
   size_t i;

   //Perform lexicographical comparison
   for(i = 0; i < oidLen1 && i < oidLen2; i++)
   {
      //Compare current byte
      if(oid1[i] < oid2[i])
         return -1;
      else if(oid1[i] > oid2[i])
         return 1;
   }

   //Compare length
   if(oidLen1 < oidLen2)
      return -1;
   else if(oidLen1 > oidLen2)
      return 1;

   //Object identifiers are equal
   return 0;
}


/**
 * @brief Encode OID sub-identifier
 * @param[in] oid Pointer to the object identifier
 * @param[in] maxOidLen Maximum number of bytes the OID can hold
 * @param[in,out] pos Offset where to write the sub-identifier
 * @param[in] value Value of the sub-identifier
 * @return Error code
 **/

error_t oidEncodeSubIdentifier(uint8_t *oid,
   size_t maxOidLen, size_t *pos, uint32_t value)
{
   size_t i;
   size_t n;
   uint8_t temp[5];

   //Encode the first byte of the sub-identifier
   temp[0] = value & OID_VALUE_MASK;
   //Shift the value to the right
   value >>= 7;

   //Encode the remaining bytes
   for(n = 1; value != 0; n++)
   {
      //Encode current byte
      temp[n] = OID_MORE_FLAG | (value & OID_VALUE_MASK);
      //Shift the value to the right
      value >>= 7;
   }

   //Sanity check
   if((*pos + n) > maxOidLen)
      return ERROR_BUFFER_OVERFLOW;

   //Write the current sub-identifier
   for(i = 0; i < n; i++)
      oid[*pos + i] = temp[n - i - 1];

   //Update offset value
   *pos += n;

   //Successful processing
   return NO_ERROR;
}


/**
 * @brief Decode OID sub-identifier
 * @param[in] oid Pointer to the object identifier
 * @param[in] oidLen Length of the OID, in bytes
 * @param[in,out] pos Offset where to read the sub-identifier
 * @param[out] value Value of the sub-identifier
 * @return Error code
 **/

error_t oidDecodeSubIdentifier(const uint8_t *oid,
   size_t oidLen, size_t *pos, uint32_t *value)
{
   size_t i;

   //Initialize the value of the sub-identifier
   *value = 0;

   //Read the OID until the last byte of the sub-identifier is found
   for(i = *pos; i < oidLen; i++)
   {
      //Shift the value to the left
      *value <<= 7;
      //Update value of the sub-identifier
      *value |= oid[i] & OID_VALUE_MASK;

      //Bit b8 is set to zero to indicate the last byte
      if(!(oid[i] & OID_MORE_FLAG))
      {
         //Update offset value
         *pos = i + 1;
         //Successful processing
         return NO_ERROR;
      }
   }

   //The specified OID is not valid
   return ERROR_INVALID_SYNTAX;
}


/**
 * @brief Convert a string representation of an OID to a binary OID
 * @param[in] str NULL-terminated string representing the OID
 * @param[out] oid Object identifier
 * @param[in] maxOidLen Maximum number of bytes the OID can hold
 * @param[out] oidLen Length of the object identifier
 * @return Error code
 **/

error_t oidFromString(const char_t *str,
   uint8_t *oid, size_t maxOidLen, size_t *oidLen)
{
   error_t error;
   size_t i;
   size_t j;
   size_t n;
   uint32_t value;
   uint8_t temp[5];

   //Reset the length of the OID
   *oidLen = 0;

   //Number of nodes
   i = 0;
   //Initialize the value of the sub-identifier
   value = 0;

   //Parse input string
   while(1)
   {
      //Digit found?
      if(isdigit((uint8_t) *str))
      {
         //Update the value of the sub-identifier
         value = (value * 10) + (*str - '0');
      }
      //Separator or end of string found?
      else if(*str == '.' || *str == '\0')
      {
         //First node?
         if(i == 0)
         {
            //Check value
            if(value > 6)
            {
               //The conversion failed
               error = ERROR_INVALID_SYNTAX;
               break;
            }

            //Encode the first sub-identifier
            temp[0] = value * 40;
            //Prepare to decode the next node
            value = 0;
            //Do not write current sub-identifier yet
            n = 0;
         }
         //Second node?
         else if(i == 1)
         {
            //Check value
            if(value > 39)
            {
               //The conversion failed
               error = ERROR_INVALID_SYNTAX;
               break;
            }

            //Encode the second sub-identifier
            temp[0] |= value;
            //Prepare to decode the next node
            value = 0;
            //Write the first two sub-identifiers
            n = 1;
         }
         //Remaining nodes?
         else
         {
            //Encode the first byte of the sub-identifier
            temp[0] = value & OID_VALUE_MASK;
            //Shift the value to the right
            value >>= 7;

            //Encode the remaining bytes
            for(n = 1; value != 0; n++)
            {
               //Encode current byte
               temp[n] = OID_MORE_FLAG | (value & OID_VALUE_MASK);
               //Shift the value to the right
               value >>= 7;
            }
         }

         //Sanity check
         if(n > maxOidLen)
         {
            //Report an error
            error = ERROR_BUFFER_OVERFLOW;
            break;
         }

         //Write the current sub-identifier
         for(j = 0; j < n; j++)
            oid[j] = temp[n - j - 1];

         //Advance write pointer
         oid += n;
         *oidLen += n;
         maxOidLen -= n;

         //Number of sub-identifiers
         i++;

         //End of string detected?
         if(*str == '\0')
         {
            //The conversion succeeded
            error = NO_ERROR;
            break;
         }
      }
      //Invalid character...
      else
      {
         //The conversion failed
         error = ERROR_INVALID_SYNTAX;
         break;
      }

      //Point to the next character
      str++;
   }

   //Return status code
   return error;
}


/**
 * @brief Convert a binary OID to a string representation
 * @param[in] oid Object identifier
 * @param[in] oidLen Length of the object identifier, in bytes
 * @param[out] str NULL-terminated string representing the OID
 * @param[in] maxStrLen Maximum length of the resulting string
 * @return Pointer to the formatted string
 **/

char_t *oidToString(const uint8_t *oid,
   size_t oidLen, char_t *str, size_t maxStrLen)
{
   static char_t buffer[64];
   size_t i;
   size_t n;
   uint32_t value;
   char_t *p;
   char_t temp[12];

   //The str parameter is optional
   if(str == NULL)
   {
      //Point to the internal buffer
      str = buffer;
      //Maximum length of the resulting string
      maxStrLen = sizeof(buffer) - 1;
   }

   //Point the beginning of the string
   p = str;
   //Properly terminate the string
   *p = '\0';

   //Check the length of the OID
   if(oidLen > 0)
   {
      //Convert the first 2 bytes
      n = sprintf(temp, "%" PRIu8 ".%" PRIu8 "", oid[0] / 40, oid[0] % 40);

      //Sanity check
      if(n <= maxStrLen)
      {
         //Copy the resulting string
         strcpy(p, temp);
         //Advance write pointer
         p += n;
         maxStrLen -= n;
      }

      //Initialize the value of the sub-identifier
      value = 0;

      //Convert the rest of the OID
      for(i = 1; i < oidLen; i++)
      {
         //Shift the value to the left
         value <<= 7;
         //Update the current value
         value |= oid[i] & OID_VALUE_MASK;

         //Bit b8 is set to zero to indicate the last byte
         if(!(oid[i] & OID_MORE_FLAG))
         {
            //Dump current value
            n = sprintf(temp, ".%" PRIu32, value);

            //Sanity check
            if(n <= maxStrLen)
            {
               //Copy the resulting string
               strcpy(p, temp);
               //Advance write pointer
               p += n;
               maxStrLen -= n;
            }

            //Prepare to decode the next value
            value = 0;
         }
      }
   }

   //Return a pointer to the formatted string
   return str;
}

#endif
