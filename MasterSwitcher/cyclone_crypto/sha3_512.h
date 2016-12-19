/**
 * @file sha3_512.h
 * @brief SHA3-512 hash function (SHA-3 with 512-bit output)
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

#ifndef _SHA3_512_H
#define _SHA3_512_H

//Dependencies
#include "crypto.h"
#include "keccak.h"

//SHA3-512 block size
#define SHA3_512_BLOCK_SIZE 72
//SHA3-512 digest size
#define SHA3_512_DIGEST_SIZE 64
//Common interface for hash algorithms
#define SHA3_512_HASH_ALGO (&sha3_512HashAlgo)


/**
 * @brief SHA3-512 algorithm context
 **/

typedef KeccakContext Sha3_512Context;


//SHA3-512 related constants
extern const HashAlgo sha3_512HashAlgo;

//SHA3-512 related functions
error_t sha3_512Compute(const void *data, size_t length, uint8_t *digest);
void sha3_512Init(Sha3_512Context *context);
void sha3_512Update(Sha3_512Context *context, const void *data, size_t length);
void sha3_512Final(Sha3_512Context *context, uint8_t *digest);

#endif
