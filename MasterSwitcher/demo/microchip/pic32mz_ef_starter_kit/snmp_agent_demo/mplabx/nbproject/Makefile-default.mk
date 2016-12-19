#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/mplabx.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/mplabx.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/main.c ../src/private_mib_module.c ../src/private_mib_impl.c ../src/debug.c ../src/sprintf.c ../src/strtok_r.c ../../../../../common/endian.c ../../../../../common/os_port_none.c ../../../../../common/date_time.c ../../../../../common/str.c ../../../../../cyclone_tcp/core/net.c ../../../../../cyclone_tcp/core/net_mem.c ../../../../../cyclone_tcp/drivers/pic32mz_eth.c ../../../../../cyclone_tcp/drivers/lan8740.c ../../../../../cyclone_tcp/core/nic.c ../../../../../cyclone_tcp/core/ethernet.c ../../../../../cyclone_tcp/ipv4/arp.c ../../../../../cyclone_tcp/ipv4/ipv4.c ../../../../../cyclone_tcp/ipv4/ipv4_frag.c ../../../../../cyclone_tcp/ipv4/icmp.c ../../../../../cyclone_tcp/ipv4/igmp.c ../../../../../cyclone_tcp/ipv6/ipv6.c ../../../../../cyclone_tcp/ipv6/ipv6_frag.c ../../../../../cyclone_tcp/ipv6/ipv6_misc.c ../../../../../cyclone_tcp/ipv6/ipv6_pmtu.c ../../../../../cyclone_tcp/ipv6/icmpv6.c ../../../../../cyclone_tcp/ipv6/mld.c ../../../../../cyclone_tcp/ipv6/ndp.c ../../../../../cyclone_tcp/ipv6/ndp_cache.c ../../../../../cyclone_tcp/ipv6/ndp_misc.c ../../../../../cyclone_tcp/ipv6/slaac.c ../../../../../cyclone_tcp/core/ip.c ../../../../../cyclone_tcp/core/tcp.c ../../../../../cyclone_tcp/core/tcp_fsm.c ../../../../../cyclone_tcp/core/tcp_misc.c ../../../../../cyclone_tcp/core/tcp_timer.c ../../../../../cyclone_tcp/core/udp.c ../../../../../cyclone_tcp/core/socket.c ../../../../../cyclone_tcp/core/bsd_socket.c ../../../../../cyclone_tcp/core/raw_socket.c ../../../../../cyclone_tcp/dns/dns_cache.c ../../../../../cyclone_tcp/dns/dns_client.c ../../../../../cyclone_tcp/dns/dns_common.c ../../../../../cyclone_tcp/dns/dns_debug.c ../../../../../cyclone_tcp/mdns/mdns_client.c ../../../../../cyclone_tcp/mdns/mdns_responder.c ../../../../../cyclone_tcp/mdns/mdns_common.c ../../../../../cyclone_tcp/netbios/nbns_client.c ../../../../../cyclone_tcp/netbios/nbns_responder.c ../../../../../cyclone_tcp/netbios/nbns_common.c ../../../../../cyclone_tcp/dhcp/dhcp_client.c ../../../../../cyclone_tcp/dhcp/dhcp_common.c ../../../../../cyclone_tcp/dhcp/dhcp_debug.c ../../../../../cyclone_tcp/snmp/snmp_agent.c ../../../../../cyclone_tcp/snmp/snmp_agent_dispatch.c ../../../../../cyclone_tcp/snmp/snmp_agent_pdu.c ../../../../../cyclone_tcp/snmp/snmp_agent_misc.c ../../../../../cyclone_tcp/snmp/snmp_common.c ../../../../../cyclone_tcp/snmp/snmp_usm.c ../../../../../cyclone_tcp/mibs/mib_common.c ../../../../../cyclone_tcp/mibs/mib2_module.c ../../../../../cyclone_tcp/mibs/mib2_impl.c ../../../../../cyclone_crypto/md5.c ../../../../../cyclone_crypto/sha1.c ../../../../../cyclone_crypto/hmac.c ../../../../../cyclone_crypto/des.c ../../../../../cyclone_crypto/aes.c ../../../../../cyclone_crypto/cipher_mode_cbc.c ../../../../../cyclone_crypto/cipher_mode_cfb.c ../../../../../cyclone_crypto/asn1.c ../../../../../cyclone_crypto/oid.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/private_mib_module.o ${OBJECTDIR}/_ext/1360937237/private_mib_impl.o ${OBJECTDIR}/_ext/1360937237/debug.o ${OBJECTDIR}/_ext/1360937237/sprintf.o ${OBJECTDIR}/_ext/1360937237/strtok_r.o ${OBJECTDIR}/_ext/360186330/endian.o ${OBJECTDIR}/_ext/360186330/os_port_none.o ${OBJECTDIR}/_ext/360186330/date_time.o ${OBJECTDIR}/_ext/360186330/str.o ${OBJECTDIR}/_ext/1079766828/net.o ${OBJECTDIR}/_ext/1079766828/net_mem.o ${OBJECTDIR}/_ext/1357806602/pic32mz_eth.o ${OBJECTDIR}/_ext/1357806602/lan8740.o ${OBJECTDIR}/_ext/1079766828/nic.o ${OBJECTDIR}/_ext/1079766828/ethernet.o ${OBJECTDIR}/_ext/1079587046/arp.o ${OBJECTDIR}/_ext/1079587046/ipv4.o ${OBJECTDIR}/_ext/1079587046/ipv4_frag.o ${OBJECTDIR}/_ext/1079587046/icmp.o ${OBJECTDIR}/_ext/1079587046/igmp.o ${OBJECTDIR}/_ext/1079587044/ipv6.o ${OBJECTDIR}/_ext/1079587044/ipv6_frag.o ${OBJECTDIR}/_ext/1079587044/ipv6_misc.o ${OBJECTDIR}/_ext/1079587044/ipv6_pmtu.o ${OBJECTDIR}/_ext/1079587044/icmpv6.o ${OBJECTDIR}/_ext/1079587044/mld.o ${OBJECTDIR}/_ext/1079587044/ndp.o ${OBJECTDIR}/_ext/1079587044/ndp_cache.o ${OBJECTDIR}/_ext/1079587044/ndp_misc.o ${OBJECTDIR}/_ext/1079587044/slaac.o ${OBJECTDIR}/_ext/1079766828/ip.o ${OBJECTDIR}/_ext/1079766828/tcp.o ${OBJECTDIR}/_ext/1079766828/tcp_fsm.o ${OBJECTDIR}/_ext/1079766828/tcp_misc.o ${OBJECTDIR}/_ext/1079766828/tcp_timer.o ${OBJECTDIR}/_ext/1079766828/udp.o ${OBJECTDIR}/_ext/1079766828/socket.o ${OBJECTDIR}/_ext/1079766828/bsd_socket.o ${OBJECTDIR}/_ext/1079766828/raw_socket.o ${OBJECTDIR}/_ext/242264404/dns_cache.o ${OBJECTDIR}/_ext/242264404/dns_client.o ${OBJECTDIR}/_ext/242264404/dns_common.o ${OBJECTDIR}/_ext/242264404/dns_debug.o ${OBJECTDIR}/_ext/1079479599/mdns_client.o ${OBJECTDIR}/_ext/1079479599/mdns_responder.o ${OBJECTDIR}/_ext/1079479599/mdns_common.o ${OBJECTDIR}/_ext/1435316685/nbns_client.o ${OBJECTDIR}/_ext/1435316685/nbns_responder.o ${OBJECTDIR}/_ext/1435316685/nbns_common.o ${OBJECTDIR}/_ext/1079744218/dhcp_client.o ${OBJECTDIR}/_ext/1079744218/dhcp_common.o ${OBJECTDIR}/_ext/1079744218/dhcp_debug.o ${OBJECTDIR}/_ext/1079291277/snmp_agent.o ${OBJECTDIR}/_ext/1079291277/snmp_agent_dispatch.o ${OBJECTDIR}/_ext/1079291277/snmp_agent_pdu.o ${OBJECTDIR}/_ext/1079291277/snmp_agent_misc.o ${OBJECTDIR}/_ext/1079291277/snmp_common.o ${OBJECTDIR}/_ext/1079291277/snmp_usm.o ${OBJECTDIR}/_ext/1079475166/mib_common.o ${OBJECTDIR}/_ext/1079475166/mib2_module.o ${OBJECTDIR}/_ext/1079475166/mib2_impl.o ${OBJECTDIR}/_ext/1613513288/md5.o ${OBJECTDIR}/_ext/1613513288/sha1.o ${OBJECTDIR}/_ext/1613513288/hmac.o ${OBJECTDIR}/_ext/1613513288/des.o ${OBJECTDIR}/_ext/1613513288/aes.o ${OBJECTDIR}/_ext/1613513288/cipher_mode_cbc.o ${OBJECTDIR}/_ext/1613513288/cipher_mode_cfb.o ${OBJECTDIR}/_ext/1613513288/asn1.o ${OBJECTDIR}/_ext/1613513288/oid.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/private_mib_module.o.d ${OBJECTDIR}/_ext/1360937237/private_mib_impl.o.d ${OBJECTDIR}/_ext/1360937237/debug.o.d ${OBJECTDIR}/_ext/1360937237/sprintf.o.d ${OBJECTDIR}/_ext/1360937237/strtok_r.o.d ${OBJECTDIR}/_ext/360186330/endian.o.d ${OBJECTDIR}/_ext/360186330/os_port_none.o.d ${OBJECTDIR}/_ext/360186330/date_time.o.d ${OBJECTDIR}/_ext/360186330/str.o.d ${OBJECTDIR}/_ext/1079766828/net.o.d ${OBJECTDIR}/_ext/1079766828/net_mem.o.d ${OBJECTDIR}/_ext/1357806602/pic32mz_eth.o.d ${OBJECTDIR}/_ext/1357806602/lan8740.o.d ${OBJECTDIR}/_ext/1079766828/nic.o.d ${OBJECTDIR}/_ext/1079766828/ethernet.o.d ${OBJECTDIR}/_ext/1079587046/arp.o.d ${OBJECTDIR}/_ext/1079587046/ipv4.o.d ${OBJECTDIR}/_ext/1079587046/ipv4_frag.o.d ${OBJECTDIR}/_ext/1079587046/icmp.o.d ${OBJECTDIR}/_ext/1079587046/igmp.o.d ${OBJECTDIR}/_ext/1079587044/ipv6.o.d ${OBJECTDIR}/_ext/1079587044/ipv6_frag.o.d ${OBJECTDIR}/_ext/1079587044/ipv6_misc.o.d ${OBJECTDIR}/_ext/1079587044/ipv6_pmtu.o.d ${OBJECTDIR}/_ext/1079587044/icmpv6.o.d ${OBJECTDIR}/_ext/1079587044/mld.o.d ${OBJECTDIR}/_ext/1079587044/ndp.o.d ${OBJECTDIR}/_ext/1079587044/ndp_cache.o.d ${OBJECTDIR}/_ext/1079587044/ndp_misc.o.d ${OBJECTDIR}/_ext/1079587044/slaac.o.d ${OBJECTDIR}/_ext/1079766828/ip.o.d ${OBJECTDIR}/_ext/1079766828/tcp.o.d ${OBJECTDIR}/_ext/1079766828/tcp_fsm.o.d ${OBJECTDIR}/_ext/1079766828/tcp_misc.o.d ${OBJECTDIR}/_ext/1079766828/tcp_timer.o.d ${OBJECTDIR}/_ext/1079766828/udp.o.d ${OBJECTDIR}/_ext/1079766828/socket.o.d ${OBJECTDIR}/_ext/1079766828/bsd_socket.o.d ${OBJECTDIR}/_ext/1079766828/raw_socket.o.d ${OBJECTDIR}/_ext/242264404/dns_cache.o.d ${OBJECTDIR}/_ext/242264404/dns_client.o.d ${OBJECTDIR}/_ext/242264404/dns_common.o.d ${OBJECTDIR}/_ext/242264404/dns_debug.o.d ${OBJECTDIR}/_ext/1079479599/mdns_client.o.d ${OBJECTDIR}/_ext/1079479599/mdns_responder.o.d ${OBJECTDIR}/_ext/1079479599/mdns_common.o.d ${OBJECTDIR}/_ext/1435316685/nbns_client.o.d ${OBJECTDIR}/_ext/1435316685/nbns_responder.o.d ${OBJECTDIR}/_ext/1435316685/nbns_common.o.d ${OBJECTDIR}/_ext/1079744218/dhcp_client.o.d ${OBJECTDIR}/_ext/1079744218/dhcp_common.o.d ${OBJECTDIR}/_ext/1079744218/dhcp_debug.o.d ${OBJECTDIR}/_ext/1079291277/snmp_agent.o.d ${OBJECTDIR}/_ext/1079291277/snmp_agent_dispatch.o.d ${OBJECTDIR}/_ext/1079291277/snmp_agent_pdu.o.d ${OBJECTDIR}/_ext/1079291277/snmp_agent_misc.o.d ${OBJECTDIR}/_ext/1079291277/snmp_common.o.d ${OBJECTDIR}/_ext/1079291277/snmp_usm.o.d ${OBJECTDIR}/_ext/1079475166/mib_common.o.d ${OBJECTDIR}/_ext/1079475166/mib2_module.o.d ${OBJECTDIR}/_ext/1079475166/mib2_impl.o.d ${OBJECTDIR}/_ext/1613513288/md5.o.d ${OBJECTDIR}/_ext/1613513288/sha1.o.d ${OBJECTDIR}/_ext/1613513288/hmac.o.d ${OBJECTDIR}/_ext/1613513288/des.o.d ${OBJECTDIR}/_ext/1613513288/aes.o.d ${OBJECTDIR}/_ext/1613513288/cipher_mode_cbc.o.d ${OBJECTDIR}/_ext/1613513288/cipher_mode_cfb.o.d ${OBJECTDIR}/_ext/1613513288/asn1.o.d ${OBJECTDIR}/_ext/1613513288/oid.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/private_mib_module.o ${OBJECTDIR}/_ext/1360937237/private_mib_impl.o ${OBJECTDIR}/_ext/1360937237/debug.o ${OBJECTDIR}/_ext/1360937237/sprintf.o ${OBJECTDIR}/_ext/1360937237/strtok_r.o ${OBJECTDIR}/_ext/360186330/endian.o ${OBJECTDIR}/_ext/360186330/os_port_none.o ${OBJECTDIR}/_ext/360186330/date_time.o ${OBJECTDIR}/_ext/360186330/str.o ${OBJECTDIR}/_ext/1079766828/net.o ${OBJECTDIR}/_ext/1079766828/net_mem.o ${OBJECTDIR}/_ext/1357806602/pic32mz_eth.o ${OBJECTDIR}/_ext/1357806602/lan8740.o ${OBJECTDIR}/_ext/1079766828/nic.o ${OBJECTDIR}/_ext/1079766828/ethernet.o ${OBJECTDIR}/_ext/1079587046/arp.o ${OBJECTDIR}/_ext/1079587046/ipv4.o ${OBJECTDIR}/_ext/1079587046/ipv4_frag.o ${OBJECTDIR}/_ext/1079587046/icmp.o ${OBJECTDIR}/_ext/1079587046/igmp.o ${OBJECTDIR}/_ext/1079587044/ipv6.o ${OBJECTDIR}/_ext/1079587044/ipv6_frag.o ${OBJECTDIR}/_ext/1079587044/ipv6_misc.o ${OBJECTDIR}/_ext/1079587044/ipv6_pmtu.o ${OBJECTDIR}/_ext/1079587044/icmpv6.o ${OBJECTDIR}/_ext/1079587044/mld.o ${OBJECTDIR}/_ext/1079587044/ndp.o ${OBJECTDIR}/_ext/1079587044/ndp_cache.o ${OBJECTDIR}/_ext/1079587044/ndp_misc.o ${OBJECTDIR}/_ext/1079587044/slaac.o ${OBJECTDIR}/_ext/1079766828/ip.o ${OBJECTDIR}/_ext/1079766828/tcp.o ${OBJECTDIR}/_ext/1079766828/tcp_fsm.o ${OBJECTDIR}/_ext/1079766828/tcp_misc.o ${OBJECTDIR}/_ext/1079766828/tcp_timer.o ${OBJECTDIR}/_ext/1079766828/udp.o ${OBJECTDIR}/_ext/1079766828/socket.o ${OBJECTDIR}/_ext/1079766828/bsd_socket.o ${OBJECTDIR}/_ext/1079766828/raw_socket.o ${OBJECTDIR}/_ext/242264404/dns_cache.o ${OBJECTDIR}/_ext/242264404/dns_client.o ${OBJECTDIR}/_ext/242264404/dns_common.o ${OBJECTDIR}/_ext/242264404/dns_debug.o ${OBJECTDIR}/_ext/1079479599/mdns_client.o ${OBJECTDIR}/_ext/1079479599/mdns_responder.o ${OBJECTDIR}/_ext/1079479599/mdns_common.o ${OBJECTDIR}/_ext/1435316685/nbns_client.o ${OBJECTDIR}/_ext/1435316685/nbns_responder.o ${OBJECTDIR}/_ext/1435316685/nbns_common.o ${OBJECTDIR}/_ext/1079744218/dhcp_client.o ${OBJECTDIR}/_ext/1079744218/dhcp_common.o ${OBJECTDIR}/_ext/1079744218/dhcp_debug.o ${OBJECTDIR}/_ext/1079291277/snmp_agent.o ${OBJECTDIR}/_ext/1079291277/snmp_agent_dispatch.o ${OBJECTDIR}/_ext/1079291277/snmp_agent_pdu.o ${OBJECTDIR}/_ext/1079291277/snmp_agent_misc.o ${OBJECTDIR}/_ext/1079291277/snmp_common.o ${OBJECTDIR}/_ext/1079291277/snmp_usm.o ${OBJECTDIR}/_ext/1079475166/mib_common.o ${OBJECTDIR}/_ext/1079475166/mib2_module.o ${OBJECTDIR}/_ext/1079475166/mib2_impl.o ${OBJECTDIR}/_ext/1613513288/md5.o ${OBJECTDIR}/_ext/1613513288/sha1.o ${OBJECTDIR}/_ext/1613513288/hmac.o ${OBJECTDIR}/_ext/1613513288/des.o ${OBJECTDIR}/_ext/1613513288/aes.o ${OBJECTDIR}/_ext/1613513288/cipher_mode_cbc.o ${OBJECTDIR}/_ext/1613513288/cipher_mode_cfb.o ${OBJECTDIR}/_ext/1613513288/asn1.o ${OBJECTDIR}/_ext/1613513288/oid.o

# Source Files
SOURCEFILES=../src/main.c ../src/private_mib_module.c ../src/private_mib_impl.c ../src/debug.c ../src/sprintf.c ../src/strtok_r.c ../../../../../common/endian.c ../../../../../common/os_port_none.c ../../../../../common/date_time.c ../../../../../common/str.c ../../../../../cyclone_tcp/core/net.c ../../../../../cyclone_tcp/core/net_mem.c ../../../../../cyclone_tcp/drivers/pic32mz_eth.c ../../../../../cyclone_tcp/drivers/lan8740.c ../../../../../cyclone_tcp/core/nic.c ../../../../../cyclone_tcp/core/ethernet.c ../../../../../cyclone_tcp/ipv4/arp.c ../../../../../cyclone_tcp/ipv4/ipv4.c ../../../../../cyclone_tcp/ipv4/ipv4_frag.c ../../../../../cyclone_tcp/ipv4/icmp.c ../../../../../cyclone_tcp/ipv4/igmp.c ../../../../../cyclone_tcp/ipv6/ipv6.c ../../../../../cyclone_tcp/ipv6/ipv6_frag.c ../../../../../cyclone_tcp/ipv6/ipv6_misc.c ../../../../../cyclone_tcp/ipv6/ipv6_pmtu.c ../../../../../cyclone_tcp/ipv6/icmpv6.c ../../../../../cyclone_tcp/ipv6/mld.c ../../../../../cyclone_tcp/ipv6/ndp.c ../../../../../cyclone_tcp/ipv6/ndp_cache.c ../../../../../cyclone_tcp/ipv6/ndp_misc.c ../../../../../cyclone_tcp/ipv6/slaac.c ../../../../../cyclone_tcp/core/ip.c ../../../../../cyclone_tcp/core/tcp.c ../../../../../cyclone_tcp/core/tcp_fsm.c ../../../../../cyclone_tcp/core/tcp_misc.c ../../../../../cyclone_tcp/core/tcp_timer.c ../../../../../cyclone_tcp/core/udp.c ../../../../../cyclone_tcp/core/socket.c ../../../../../cyclone_tcp/core/bsd_socket.c ../../../../../cyclone_tcp/core/raw_socket.c ../../../../../cyclone_tcp/dns/dns_cache.c ../../../../../cyclone_tcp/dns/dns_client.c ../../../../../cyclone_tcp/dns/dns_common.c ../../../../../cyclone_tcp/dns/dns_debug.c ../../../../../cyclone_tcp/mdns/mdns_client.c ../../../../../cyclone_tcp/mdns/mdns_responder.c ../../../../../cyclone_tcp/mdns/mdns_common.c ../../../../../cyclone_tcp/netbios/nbns_client.c ../../../../../cyclone_tcp/netbios/nbns_responder.c ../../../../../cyclone_tcp/netbios/nbns_common.c ../../../../../cyclone_tcp/dhcp/dhcp_client.c ../../../../../cyclone_tcp/dhcp/dhcp_common.c ../../../../../cyclone_tcp/dhcp/dhcp_debug.c ../../../../../cyclone_tcp/snmp/snmp_agent.c ../../../../../cyclone_tcp/snmp/snmp_agent_dispatch.c ../../../../../cyclone_tcp/snmp/snmp_agent_pdu.c ../../../../../cyclone_tcp/snmp/snmp_agent_misc.c ../../../../../cyclone_tcp/snmp/snmp_common.c ../../../../../cyclone_tcp/snmp/snmp_usm.c ../../../../../cyclone_tcp/mibs/mib_common.c ../../../../../cyclone_tcp/mibs/mib2_module.c ../../../../../cyclone_tcp/mibs/mib2_impl.c ../../../../../cyclone_crypto/md5.c ../../../../../cyclone_crypto/sha1.c ../../../../../cyclone_crypto/hmac.c ../../../../../cyclone_crypto/des.c ../../../../../cyclone_crypto/aes.c ../../../../../cyclone_crypto/cipher_mode_cbc.c ../../../../../cyclone_crypto/cipher_mode_cfb.c ../../../../../cyclone_crypto/asn1.c ../../../../../cyclone_crypto/oid.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/mplabx.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MZ2048EFM144
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/private_mib_module.o: ../src/private_mib_module.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/private_mib_module.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/private_mib_module.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/private_mib_module.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1360937237/private_mib_module.o.d" -o ${OBJECTDIR}/_ext/1360937237/private_mib_module.o ../src/private_mib_module.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/private_mib_impl.o: ../src/private_mib_impl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/private_mib_impl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/private_mib_impl.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/private_mib_impl.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1360937237/private_mib_impl.o.d" -o ${OBJECTDIR}/_ext/1360937237/private_mib_impl.o ../src/private_mib_impl.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/debug.o: ../src/debug.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/debug.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/debug.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1360937237/debug.o.d" -o ${OBJECTDIR}/_ext/1360937237/debug.o ../src/debug.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/sprintf.o: ../src/sprintf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/sprintf.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/sprintf.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/sprintf.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1360937237/sprintf.o.d" -o ${OBJECTDIR}/_ext/1360937237/sprintf.o ../src/sprintf.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/strtok_r.o: ../src/strtok_r.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/strtok_r.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/strtok_r.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/strtok_r.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1360937237/strtok_r.o.d" -o ${OBJECTDIR}/_ext/1360937237/strtok_r.o ../src/strtok_r.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/360186330/endian.o: ../../../../../common/endian.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/360186330" 
	@${RM} ${OBJECTDIR}/_ext/360186330/endian.o.d 
	@${RM} ${OBJECTDIR}/_ext/360186330/endian.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/360186330/endian.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/360186330/endian.o.d" -o ${OBJECTDIR}/_ext/360186330/endian.o ../../../../../common/endian.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/360186330/os_port_none.o: ../../../../../common/os_port_none.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/360186330" 
	@${RM} ${OBJECTDIR}/_ext/360186330/os_port_none.o.d 
	@${RM} ${OBJECTDIR}/_ext/360186330/os_port_none.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/360186330/os_port_none.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/360186330/os_port_none.o.d" -o ${OBJECTDIR}/_ext/360186330/os_port_none.o ../../../../../common/os_port_none.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/360186330/date_time.o: ../../../../../common/date_time.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/360186330" 
	@${RM} ${OBJECTDIR}/_ext/360186330/date_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/360186330/date_time.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/360186330/date_time.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/360186330/date_time.o.d" -o ${OBJECTDIR}/_ext/360186330/date_time.o ../../../../../common/date_time.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/360186330/str.o: ../../../../../common/str.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/360186330" 
	@${RM} ${OBJECTDIR}/_ext/360186330/str.o.d 
	@${RM} ${OBJECTDIR}/_ext/360186330/str.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/360186330/str.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/360186330/str.o.d" -o ${OBJECTDIR}/_ext/360186330/str.o ../../../../../common/str.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079766828/net.o: ../../../../../cyclone_tcp/core/net.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/net.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/net.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/net.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/net.o.d" -o ${OBJECTDIR}/_ext/1079766828/net.o ../../../../../cyclone_tcp/core/net.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079766828/net_mem.o: ../../../../../cyclone_tcp/core/net_mem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/net_mem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/net_mem.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/net_mem.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/net_mem.o.d" -o ${OBJECTDIR}/_ext/1079766828/net_mem.o ../../../../../cyclone_tcp/core/net_mem.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1357806602/pic32mz_eth.o: ../../../../../cyclone_tcp/drivers/pic32mz_eth.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1357806602" 
	@${RM} ${OBJECTDIR}/_ext/1357806602/pic32mz_eth.o.d 
	@${RM} ${OBJECTDIR}/_ext/1357806602/pic32mz_eth.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1357806602/pic32mz_eth.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1357806602/pic32mz_eth.o.d" -o ${OBJECTDIR}/_ext/1357806602/pic32mz_eth.o ../../../../../cyclone_tcp/drivers/pic32mz_eth.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1357806602/lan8740.o: ../../../../../cyclone_tcp/drivers/lan8740.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1357806602" 
	@${RM} ${OBJECTDIR}/_ext/1357806602/lan8740.o.d 
	@${RM} ${OBJECTDIR}/_ext/1357806602/lan8740.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1357806602/lan8740.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1357806602/lan8740.o.d" -o ${OBJECTDIR}/_ext/1357806602/lan8740.o ../../../../../cyclone_tcp/drivers/lan8740.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079766828/nic.o: ../../../../../cyclone_tcp/core/nic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/nic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/nic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/nic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/nic.o.d" -o ${OBJECTDIR}/_ext/1079766828/nic.o ../../../../../cyclone_tcp/core/nic.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079766828/ethernet.o: ../../../../../cyclone_tcp/core/ethernet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/ethernet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/ethernet.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/ethernet.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/ethernet.o.d" -o ${OBJECTDIR}/_ext/1079766828/ethernet.o ../../../../../cyclone_tcp/core/ethernet.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079587046/arp.o: ../../../../../cyclone_tcp/ipv4/arp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587046" 
	@${RM} ${OBJECTDIR}/_ext/1079587046/arp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587046/arp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587046/arp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587046/arp.o.d" -o ${OBJECTDIR}/_ext/1079587046/arp.o ../../../../../cyclone_tcp/ipv4/arp.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079587046/ipv4.o: ../../../../../cyclone_tcp/ipv4/ipv4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587046" 
	@${RM} ${OBJECTDIR}/_ext/1079587046/ipv4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587046/ipv4.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587046/ipv4.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587046/ipv4.o.d" -o ${OBJECTDIR}/_ext/1079587046/ipv4.o ../../../../../cyclone_tcp/ipv4/ipv4.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079587046/ipv4_frag.o: ../../../../../cyclone_tcp/ipv4/ipv4_frag.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587046" 
	@${RM} ${OBJECTDIR}/_ext/1079587046/ipv4_frag.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587046/ipv4_frag.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587046/ipv4_frag.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587046/ipv4_frag.o.d" -o ${OBJECTDIR}/_ext/1079587046/ipv4_frag.o ../../../../../cyclone_tcp/ipv4/ipv4_frag.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079587046/icmp.o: ../../../../../cyclone_tcp/ipv4/icmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587046" 
	@${RM} ${OBJECTDIR}/_ext/1079587046/icmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587046/icmp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587046/icmp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587046/icmp.o.d" -o ${OBJECTDIR}/_ext/1079587046/icmp.o ../../../../../cyclone_tcp/ipv4/icmp.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079587046/igmp.o: ../../../../../cyclone_tcp/ipv4/igmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587046" 
	@${RM} ${OBJECTDIR}/_ext/1079587046/igmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587046/igmp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587046/igmp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587046/igmp.o.d" -o ${OBJECTDIR}/_ext/1079587046/igmp.o ../../../../../cyclone_tcp/ipv4/igmp.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079587044/ipv6.o: ../../../../../cyclone_tcp/ipv6/ipv6.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ipv6.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ipv6.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/ipv6.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/ipv6.o.d" -o ${OBJECTDIR}/_ext/1079587044/ipv6.o ../../../../../cyclone_tcp/ipv6/ipv6.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079587044/ipv6_frag.o: ../../../../../cyclone_tcp/ipv6/ipv6_frag.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ipv6_frag.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ipv6_frag.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/ipv6_frag.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/ipv6_frag.o.d" -o ${OBJECTDIR}/_ext/1079587044/ipv6_frag.o ../../../../../cyclone_tcp/ipv6/ipv6_frag.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079587044/ipv6_misc.o: ../../../../../cyclone_tcp/ipv6/ipv6_misc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ipv6_misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ipv6_misc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/ipv6_misc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/ipv6_misc.o.d" -o ${OBJECTDIR}/_ext/1079587044/ipv6_misc.o ../../../../../cyclone_tcp/ipv6/ipv6_misc.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079587044/ipv6_pmtu.o: ../../../../../cyclone_tcp/ipv6/ipv6_pmtu.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ipv6_pmtu.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ipv6_pmtu.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/ipv6_pmtu.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/ipv6_pmtu.o.d" -o ${OBJECTDIR}/_ext/1079587044/ipv6_pmtu.o ../../../../../cyclone_tcp/ipv6/ipv6_pmtu.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079587044/icmpv6.o: ../../../../../cyclone_tcp/ipv6/icmpv6.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/icmpv6.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/icmpv6.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/icmpv6.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/icmpv6.o.d" -o ${OBJECTDIR}/_ext/1079587044/icmpv6.o ../../../../../cyclone_tcp/ipv6/icmpv6.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079587044/mld.o: ../../../../../cyclone_tcp/ipv6/mld.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/mld.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/mld.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/mld.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/mld.o.d" -o ${OBJECTDIR}/_ext/1079587044/mld.o ../../../../../cyclone_tcp/ipv6/mld.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079587044/ndp.o: ../../../../../cyclone_tcp/ipv6/ndp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ndp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ndp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/ndp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/ndp.o.d" -o ${OBJECTDIR}/_ext/1079587044/ndp.o ../../../../../cyclone_tcp/ipv6/ndp.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079587044/ndp_cache.o: ../../../../../cyclone_tcp/ipv6/ndp_cache.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ndp_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ndp_cache.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/ndp_cache.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/ndp_cache.o.d" -o ${OBJECTDIR}/_ext/1079587044/ndp_cache.o ../../../../../cyclone_tcp/ipv6/ndp_cache.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079587044/ndp_misc.o: ../../../../../cyclone_tcp/ipv6/ndp_misc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ndp_misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ndp_misc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/ndp_misc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/ndp_misc.o.d" -o ${OBJECTDIR}/_ext/1079587044/ndp_misc.o ../../../../../cyclone_tcp/ipv6/ndp_misc.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079587044/slaac.o: ../../../../../cyclone_tcp/ipv6/slaac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/slaac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/slaac.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/slaac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/slaac.o.d" -o ${OBJECTDIR}/_ext/1079587044/slaac.o ../../../../../cyclone_tcp/ipv6/slaac.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079766828/ip.o: ../../../../../cyclone_tcp/core/ip.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/ip.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/ip.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/ip.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/ip.o.d" -o ${OBJECTDIR}/_ext/1079766828/ip.o ../../../../../cyclone_tcp/core/ip.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079766828/tcp.o: ../../../../../cyclone_tcp/core/tcp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/tcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/tcp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/tcp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/tcp.o.d" -o ${OBJECTDIR}/_ext/1079766828/tcp.o ../../../../../cyclone_tcp/core/tcp.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079766828/tcp_fsm.o: ../../../../../cyclone_tcp/core/tcp_fsm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/tcp_fsm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/tcp_fsm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/tcp_fsm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/tcp_fsm.o.d" -o ${OBJECTDIR}/_ext/1079766828/tcp_fsm.o ../../../../../cyclone_tcp/core/tcp_fsm.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079766828/tcp_misc.o: ../../../../../cyclone_tcp/core/tcp_misc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/tcp_misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/tcp_misc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/tcp_misc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/tcp_misc.o.d" -o ${OBJECTDIR}/_ext/1079766828/tcp_misc.o ../../../../../cyclone_tcp/core/tcp_misc.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079766828/tcp_timer.o: ../../../../../cyclone_tcp/core/tcp_timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/tcp_timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/tcp_timer.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/tcp_timer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/tcp_timer.o.d" -o ${OBJECTDIR}/_ext/1079766828/tcp_timer.o ../../../../../cyclone_tcp/core/tcp_timer.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079766828/udp.o: ../../../../../cyclone_tcp/core/udp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/udp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/udp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/udp.o.d" -o ${OBJECTDIR}/_ext/1079766828/udp.o ../../../../../cyclone_tcp/core/udp.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079766828/socket.o: ../../../../../cyclone_tcp/core/socket.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/socket.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/socket.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/socket.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/socket.o.d" -o ${OBJECTDIR}/_ext/1079766828/socket.o ../../../../../cyclone_tcp/core/socket.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079766828/bsd_socket.o: ../../../../../cyclone_tcp/core/bsd_socket.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/bsd_socket.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/bsd_socket.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/bsd_socket.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/bsd_socket.o.d" -o ${OBJECTDIR}/_ext/1079766828/bsd_socket.o ../../../../../cyclone_tcp/core/bsd_socket.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079766828/raw_socket.o: ../../../../../cyclone_tcp/core/raw_socket.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/raw_socket.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/raw_socket.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/raw_socket.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/raw_socket.o.d" -o ${OBJECTDIR}/_ext/1079766828/raw_socket.o ../../../../../cyclone_tcp/core/raw_socket.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/242264404/dns_cache.o: ../../../../../cyclone_tcp/dns/dns_cache.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/242264404" 
	@${RM} ${OBJECTDIR}/_ext/242264404/dns_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/242264404/dns_cache.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/242264404/dns_cache.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/242264404/dns_cache.o.d" -o ${OBJECTDIR}/_ext/242264404/dns_cache.o ../../../../../cyclone_tcp/dns/dns_cache.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/242264404/dns_client.o: ../../../../../cyclone_tcp/dns/dns_client.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/242264404" 
	@${RM} ${OBJECTDIR}/_ext/242264404/dns_client.o.d 
	@${RM} ${OBJECTDIR}/_ext/242264404/dns_client.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/242264404/dns_client.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/242264404/dns_client.o.d" -o ${OBJECTDIR}/_ext/242264404/dns_client.o ../../../../../cyclone_tcp/dns/dns_client.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/242264404/dns_common.o: ../../../../../cyclone_tcp/dns/dns_common.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/242264404" 
	@${RM} ${OBJECTDIR}/_ext/242264404/dns_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/242264404/dns_common.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/242264404/dns_common.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/242264404/dns_common.o.d" -o ${OBJECTDIR}/_ext/242264404/dns_common.o ../../../../../cyclone_tcp/dns/dns_common.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/242264404/dns_debug.o: ../../../../../cyclone_tcp/dns/dns_debug.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/242264404" 
	@${RM} ${OBJECTDIR}/_ext/242264404/dns_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/242264404/dns_debug.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/242264404/dns_debug.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/242264404/dns_debug.o.d" -o ${OBJECTDIR}/_ext/242264404/dns_debug.o ../../../../../cyclone_tcp/dns/dns_debug.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079479599/mdns_client.o: ../../../../../cyclone_tcp/mdns/mdns_client.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079479599" 
	@${RM} ${OBJECTDIR}/_ext/1079479599/mdns_client.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079479599/mdns_client.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079479599/mdns_client.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079479599/mdns_client.o.d" -o ${OBJECTDIR}/_ext/1079479599/mdns_client.o ../../../../../cyclone_tcp/mdns/mdns_client.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079479599/mdns_responder.o: ../../../../../cyclone_tcp/mdns/mdns_responder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079479599" 
	@${RM} ${OBJECTDIR}/_ext/1079479599/mdns_responder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079479599/mdns_responder.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079479599/mdns_responder.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079479599/mdns_responder.o.d" -o ${OBJECTDIR}/_ext/1079479599/mdns_responder.o ../../../../../cyclone_tcp/mdns/mdns_responder.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079479599/mdns_common.o: ../../../../../cyclone_tcp/mdns/mdns_common.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079479599" 
	@${RM} ${OBJECTDIR}/_ext/1079479599/mdns_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079479599/mdns_common.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079479599/mdns_common.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079479599/mdns_common.o.d" -o ${OBJECTDIR}/_ext/1079479599/mdns_common.o ../../../../../cyclone_tcp/mdns/mdns_common.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1435316685/nbns_client.o: ../../../../../cyclone_tcp/netbios/nbns_client.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1435316685" 
	@${RM} ${OBJECTDIR}/_ext/1435316685/nbns_client.o.d 
	@${RM} ${OBJECTDIR}/_ext/1435316685/nbns_client.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1435316685/nbns_client.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1435316685/nbns_client.o.d" -o ${OBJECTDIR}/_ext/1435316685/nbns_client.o ../../../../../cyclone_tcp/netbios/nbns_client.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1435316685/nbns_responder.o: ../../../../../cyclone_tcp/netbios/nbns_responder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1435316685" 
	@${RM} ${OBJECTDIR}/_ext/1435316685/nbns_responder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1435316685/nbns_responder.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1435316685/nbns_responder.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1435316685/nbns_responder.o.d" -o ${OBJECTDIR}/_ext/1435316685/nbns_responder.o ../../../../../cyclone_tcp/netbios/nbns_responder.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1435316685/nbns_common.o: ../../../../../cyclone_tcp/netbios/nbns_common.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1435316685" 
	@${RM} ${OBJECTDIR}/_ext/1435316685/nbns_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/1435316685/nbns_common.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1435316685/nbns_common.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1435316685/nbns_common.o.d" -o ${OBJECTDIR}/_ext/1435316685/nbns_common.o ../../../../../cyclone_tcp/netbios/nbns_common.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079744218/dhcp_client.o: ../../../../../cyclone_tcp/dhcp/dhcp_client.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079744218" 
	@${RM} ${OBJECTDIR}/_ext/1079744218/dhcp_client.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079744218/dhcp_client.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079744218/dhcp_client.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079744218/dhcp_client.o.d" -o ${OBJECTDIR}/_ext/1079744218/dhcp_client.o ../../../../../cyclone_tcp/dhcp/dhcp_client.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079744218/dhcp_common.o: ../../../../../cyclone_tcp/dhcp/dhcp_common.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079744218" 
	@${RM} ${OBJECTDIR}/_ext/1079744218/dhcp_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079744218/dhcp_common.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079744218/dhcp_common.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079744218/dhcp_common.o.d" -o ${OBJECTDIR}/_ext/1079744218/dhcp_common.o ../../../../../cyclone_tcp/dhcp/dhcp_common.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079744218/dhcp_debug.o: ../../../../../cyclone_tcp/dhcp/dhcp_debug.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079744218" 
	@${RM} ${OBJECTDIR}/_ext/1079744218/dhcp_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079744218/dhcp_debug.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079744218/dhcp_debug.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079744218/dhcp_debug.o.d" -o ${OBJECTDIR}/_ext/1079744218/dhcp_debug.o ../../../../../cyclone_tcp/dhcp/dhcp_debug.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079291277/snmp_agent.o: ../../../../../cyclone_tcp/snmp/snmp_agent.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079291277" 
	@${RM} ${OBJECTDIR}/_ext/1079291277/snmp_agent.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079291277/snmp_agent.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079291277/snmp_agent.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079291277/snmp_agent.o.d" -o ${OBJECTDIR}/_ext/1079291277/snmp_agent.o ../../../../../cyclone_tcp/snmp/snmp_agent.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079291277/snmp_agent_dispatch.o: ../../../../../cyclone_tcp/snmp/snmp_agent_dispatch.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079291277" 
	@${RM} ${OBJECTDIR}/_ext/1079291277/snmp_agent_dispatch.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079291277/snmp_agent_dispatch.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079291277/snmp_agent_dispatch.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079291277/snmp_agent_dispatch.o.d" -o ${OBJECTDIR}/_ext/1079291277/snmp_agent_dispatch.o ../../../../../cyclone_tcp/snmp/snmp_agent_dispatch.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079291277/snmp_agent_pdu.o: ../../../../../cyclone_tcp/snmp/snmp_agent_pdu.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079291277" 
	@${RM} ${OBJECTDIR}/_ext/1079291277/snmp_agent_pdu.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079291277/snmp_agent_pdu.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079291277/snmp_agent_pdu.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079291277/snmp_agent_pdu.o.d" -o ${OBJECTDIR}/_ext/1079291277/snmp_agent_pdu.o ../../../../../cyclone_tcp/snmp/snmp_agent_pdu.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079291277/snmp_agent_misc.o: ../../../../../cyclone_tcp/snmp/snmp_agent_misc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079291277" 
	@${RM} ${OBJECTDIR}/_ext/1079291277/snmp_agent_misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079291277/snmp_agent_misc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079291277/snmp_agent_misc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079291277/snmp_agent_misc.o.d" -o ${OBJECTDIR}/_ext/1079291277/snmp_agent_misc.o ../../../../../cyclone_tcp/snmp/snmp_agent_misc.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079291277/snmp_common.o: ../../../../../cyclone_tcp/snmp/snmp_common.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079291277" 
	@${RM} ${OBJECTDIR}/_ext/1079291277/snmp_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079291277/snmp_common.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079291277/snmp_common.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079291277/snmp_common.o.d" -o ${OBJECTDIR}/_ext/1079291277/snmp_common.o ../../../../../cyclone_tcp/snmp/snmp_common.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079291277/snmp_usm.o: ../../../../../cyclone_tcp/snmp/snmp_usm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079291277" 
	@${RM} ${OBJECTDIR}/_ext/1079291277/snmp_usm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079291277/snmp_usm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079291277/snmp_usm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079291277/snmp_usm.o.d" -o ${OBJECTDIR}/_ext/1079291277/snmp_usm.o ../../../../../cyclone_tcp/snmp/snmp_usm.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079475166/mib_common.o: ../../../../../cyclone_tcp/mibs/mib_common.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079475166" 
	@${RM} ${OBJECTDIR}/_ext/1079475166/mib_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079475166/mib_common.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079475166/mib_common.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079475166/mib_common.o.d" -o ${OBJECTDIR}/_ext/1079475166/mib_common.o ../../../../../cyclone_tcp/mibs/mib_common.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079475166/mib2_module.o: ../../../../../cyclone_tcp/mibs/mib2_module.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079475166" 
	@${RM} ${OBJECTDIR}/_ext/1079475166/mib2_module.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079475166/mib2_module.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079475166/mib2_module.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079475166/mib2_module.o.d" -o ${OBJECTDIR}/_ext/1079475166/mib2_module.o ../../../../../cyclone_tcp/mibs/mib2_module.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079475166/mib2_impl.o: ../../../../../cyclone_tcp/mibs/mib2_impl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079475166" 
	@${RM} ${OBJECTDIR}/_ext/1079475166/mib2_impl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079475166/mib2_impl.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079475166/mib2_impl.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079475166/mib2_impl.o.d" -o ${OBJECTDIR}/_ext/1079475166/mib2_impl.o ../../../../../cyclone_tcp/mibs/mib2_impl.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1613513288/md5.o: ../../../../../cyclone_crypto/md5.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1613513288" 
	@${RM} ${OBJECTDIR}/_ext/1613513288/md5.o.d 
	@${RM} ${OBJECTDIR}/_ext/1613513288/md5.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1613513288/md5.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1613513288/md5.o.d" -o ${OBJECTDIR}/_ext/1613513288/md5.o ../../../../../cyclone_crypto/md5.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1613513288/sha1.o: ../../../../../cyclone_crypto/sha1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1613513288" 
	@${RM} ${OBJECTDIR}/_ext/1613513288/sha1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1613513288/sha1.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1613513288/sha1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1613513288/sha1.o.d" -o ${OBJECTDIR}/_ext/1613513288/sha1.o ../../../../../cyclone_crypto/sha1.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1613513288/hmac.o: ../../../../../cyclone_crypto/hmac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1613513288" 
	@${RM} ${OBJECTDIR}/_ext/1613513288/hmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1613513288/hmac.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1613513288/hmac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1613513288/hmac.o.d" -o ${OBJECTDIR}/_ext/1613513288/hmac.o ../../../../../cyclone_crypto/hmac.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1613513288/des.o: ../../../../../cyclone_crypto/des.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1613513288" 
	@${RM} ${OBJECTDIR}/_ext/1613513288/des.o.d 
	@${RM} ${OBJECTDIR}/_ext/1613513288/des.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1613513288/des.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1613513288/des.o.d" -o ${OBJECTDIR}/_ext/1613513288/des.o ../../../../../cyclone_crypto/des.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1613513288/aes.o: ../../../../../cyclone_crypto/aes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1613513288" 
	@${RM} ${OBJECTDIR}/_ext/1613513288/aes.o.d 
	@${RM} ${OBJECTDIR}/_ext/1613513288/aes.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1613513288/aes.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1613513288/aes.o.d" -o ${OBJECTDIR}/_ext/1613513288/aes.o ../../../../../cyclone_crypto/aes.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1613513288/cipher_mode_cbc.o: ../../../../../cyclone_crypto/cipher_mode_cbc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1613513288" 
	@${RM} ${OBJECTDIR}/_ext/1613513288/cipher_mode_cbc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1613513288/cipher_mode_cbc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1613513288/cipher_mode_cbc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1613513288/cipher_mode_cbc.o.d" -o ${OBJECTDIR}/_ext/1613513288/cipher_mode_cbc.o ../../../../../cyclone_crypto/cipher_mode_cbc.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1613513288/cipher_mode_cfb.o: ../../../../../cyclone_crypto/cipher_mode_cfb.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1613513288" 
	@${RM} ${OBJECTDIR}/_ext/1613513288/cipher_mode_cfb.o.d 
	@${RM} ${OBJECTDIR}/_ext/1613513288/cipher_mode_cfb.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1613513288/cipher_mode_cfb.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1613513288/cipher_mode_cfb.o.d" -o ${OBJECTDIR}/_ext/1613513288/cipher_mode_cfb.o ../../../../../cyclone_crypto/cipher_mode_cfb.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1613513288/asn1.o: ../../../../../cyclone_crypto/asn1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1613513288" 
	@${RM} ${OBJECTDIR}/_ext/1613513288/asn1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1613513288/asn1.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1613513288/asn1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1613513288/asn1.o.d" -o ${OBJECTDIR}/_ext/1613513288/asn1.o ../../../../../cyclone_crypto/asn1.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1613513288/oid.o: ../../../../../cyclone_crypto/oid.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1613513288" 
	@${RM} ${OBJECTDIR}/_ext/1613513288/oid.o.d 
	@${RM} ${OBJECTDIR}/_ext/1613513288/oid.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1613513288/oid.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1613513288/oid.o.d" -o ${OBJECTDIR}/_ext/1613513288/oid.o ../../../../../cyclone_crypto/oid.c      $(COMPARISON_BUILD) 
	
else
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/private_mib_module.o: ../src/private_mib_module.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/private_mib_module.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/private_mib_module.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/private_mib_module.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1360937237/private_mib_module.o.d" -o ${OBJECTDIR}/_ext/1360937237/private_mib_module.o ../src/private_mib_module.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/private_mib_impl.o: ../src/private_mib_impl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/private_mib_impl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/private_mib_impl.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/private_mib_impl.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1360937237/private_mib_impl.o.d" -o ${OBJECTDIR}/_ext/1360937237/private_mib_impl.o ../src/private_mib_impl.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/debug.o: ../src/debug.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/debug.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/debug.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1360937237/debug.o.d" -o ${OBJECTDIR}/_ext/1360937237/debug.o ../src/debug.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/sprintf.o: ../src/sprintf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/sprintf.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/sprintf.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/sprintf.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1360937237/sprintf.o.d" -o ${OBJECTDIR}/_ext/1360937237/sprintf.o ../src/sprintf.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/strtok_r.o: ../src/strtok_r.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/strtok_r.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/strtok_r.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/strtok_r.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1360937237/strtok_r.o.d" -o ${OBJECTDIR}/_ext/1360937237/strtok_r.o ../src/strtok_r.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/360186330/endian.o: ../../../../../common/endian.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/360186330" 
	@${RM} ${OBJECTDIR}/_ext/360186330/endian.o.d 
	@${RM} ${OBJECTDIR}/_ext/360186330/endian.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/360186330/endian.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/360186330/endian.o.d" -o ${OBJECTDIR}/_ext/360186330/endian.o ../../../../../common/endian.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/360186330/os_port_none.o: ../../../../../common/os_port_none.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/360186330" 
	@${RM} ${OBJECTDIR}/_ext/360186330/os_port_none.o.d 
	@${RM} ${OBJECTDIR}/_ext/360186330/os_port_none.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/360186330/os_port_none.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/360186330/os_port_none.o.d" -o ${OBJECTDIR}/_ext/360186330/os_port_none.o ../../../../../common/os_port_none.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/360186330/date_time.o: ../../../../../common/date_time.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/360186330" 
	@${RM} ${OBJECTDIR}/_ext/360186330/date_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/360186330/date_time.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/360186330/date_time.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/360186330/date_time.o.d" -o ${OBJECTDIR}/_ext/360186330/date_time.o ../../../../../common/date_time.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/360186330/str.o: ../../../../../common/str.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/360186330" 
	@${RM} ${OBJECTDIR}/_ext/360186330/str.o.d 
	@${RM} ${OBJECTDIR}/_ext/360186330/str.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/360186330/str.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/360186330/str.o.d" -o ${OBJECTDIR}/_ext/360186330/str.o ../../../../../common/str.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079766828/net.o: ../../../../../cyclone_tcp/core/net.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/net.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/net.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/net.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/net.o.d" -o ${OBJECTDIR}/_ext/1079766828/net.o ../../../../../cyclone_tcp/core/net.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079766828/net_mem.o: ../../../../../cyclone_tcp/core/net_mem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/net_mem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/net_mem.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/net_mem.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/net_mem.o.d" -o ${OBJECTDIR}/_ext/1079766828/net_mem.o ../../../../../cyclone_tcp/core/net_mem.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1357806602/pic32mz_eth.o: ../../../../../cyclone_tcp/drivers/pic32mz_eth.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1357806602" 
	@${RM} ${OBJECTDIR}/_ext/1357806602/pic32mz_eth.o.d 
	@${RM} ${OBJECTDIR}/_ext/1357806602/pic32mz_eth.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1357806602/pic32mz_eth.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1357806602/pic32mz_eth.o.d" -o ${OBJECTDIR}/_ext/1357806602/pic32mz_eth.o ../../../../../cyclone_tcp/drivers/pic32mz_eth.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1357806602/lan8740.o: ../../../../../cyclone_tcp/drivers/lan8740.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1357806602" 
	@${RM} ${OBJECTDIR}/_ext/1357806602/lan8740.o.d 
	@${RM} ${OBJECTDIR}/_ext/1357806602/lan8740.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1357806602/lan8740.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1357806602/lan8740.o.d" -o ${OBJECTDIR}/_ext/1357806602/lan8740.o ../../../../../cyclone_tcp/drivers/lan8740.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079766828/nic.o: ../../../../../cyclone_tcp/core/nic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/nic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/nic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/nic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/nic.o.d" -o ${OBJECTDIR}/_ext/1079766828/nic.o ../../../../../cyclone_tcp/core/nic.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079766828/ethernet.o: ../../../../../cyclone_tcp/core/ethernet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/ethernet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/ethernet.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/ethernet.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/ethernet.o.d" -o ${OBJECTDIR}/_ext/1079766828/ethernet.o ../../../../../cyclone_tcp/core/ethernet.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079587046/arp.o: ../../../../../cyclone_tcp/ipv4/arp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587046" 
	@${RM} ${OBJECTDIR}/_ext/1079587046/arp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587046/arp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587046/arp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587046/arp.o.d" -o ${OBJECTDIR}/_ext/1079587046/arp.o ../../../../../cyclone_tcp/ipv4/arp.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079587046/ipv4.o: ../../../../../cyclone_tcp/ipv4/ipv4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587046" 
	@${RM} ${OBJECTDIR}/_ext/1079587046/ipv4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587046/ipv4.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587046/ipv4.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587046/ipv4.o.d" -o ${OBJECTDIR}/_ext/1079587046/ipv4.o ../../../../../cyclone_tcp/ipv4/ipv4.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079587046/ipv4_frag.o: ../../../../../cyclone_tcp/ipv4/ipv4_frag.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587046" 
	@${RM} ${OBJECTDIR}/_ext/1079587046/ipv4_frag.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587046/ipv4_frag.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587046/ipv4_frag.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587046/ipv4_frag.o.d" -o ${OBJECTDIR}/_ext/1079587046/ipv4_frag.o ../../../../../cyclone_tcp/ipv4/ipv4_frag.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079587046/icmp.o: ../../../../../cyclone_tcp/ipv4/icmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587046" 
	@${RM} ${OBJECTDIR}/_ext/1079587046/icmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587046/icmp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587046/icmp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587046/icmp.o.d" -o ${OBJECTDIR}/_ext/1079587046/icmp.o ../../../../../cyclone_tcp/ipv4/icmp.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079587046/igmp.o: ../../../../../cyclone_tcp/ipv4/igmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587046" 
	@${RM} ${OBJECTDIR}/_ext/1079587046/igmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587046/igmp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587046/igmp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587046/igmp.o.d" -o ${OBJECTDIR}/_ext/1079587046/igmp.o ../../../../../cyclone_tcp/ipv4/igmp.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079587044/ipv6.o: ../../../../../cyclone_tcp/ipv6/ipv6.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ipv6.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ipv6.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/ipv6.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/ipv6.o.d" -o ${OBJECTDIR}/_ext/1079587044/ipv6.o ../../../../../cyclone_tcp/ipv6/ipv6.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079587044/ipv6_frag.o: ../../../../../cyclone_tcp/ipv6/ipv6_frag.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ipv6_frag.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ipv6_frag.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/ipv6_frag.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/ipv6_frag.o.d" -o ${OBJECTDIR}/_ext/1079587044/ipv6_frag.o ../../../../../cyclone_tcp/ipv6/ipv6_frag.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079587044/ipv6_misc.o: ../../../../../cyclone_tcp/ipv6/ipv6_misc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ipv6_misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ipv6_misc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/ipv6_misc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/ipv6_misc.o.d" -o ${OBJECTDIR}/_ext/1079587044/ipv6_misc.o ../../../../../cyclone_tcp/ipv6/ipv6_misc.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079587044/ipv6_pmtu.o: ../../../../../cyclone_tcp/ipv6/ipv6_pmtu.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ipv6_pmtu.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ipv6_pmtu.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/ipv6_pmtu.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/ipv6_pmtu.o.d" -o ${OBJECTDIR}/_ext/1079587044/ipv6_pmtu.o ../../../../../cyclone_tcp/ipv6/ipv6_pmtu.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079587044/icmpv6.o: ../../../../../cyclone_tcp/ipv6/icmpv6.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/icmpv6.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/icmpv6.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/icmpv6.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/icmpv6.o.d" -o ${OBJECTDIR}/_ext/1079587044/icmpv6.o ../../../../../cyclone_tcp/ipv6/icmpv6.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079587044/mld.o: ../../../../../cyclone_tcp/ipv6/mld.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/mld.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/mld.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/mld.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/mld.o.d" -o ${OBJECTDIR}/_ext/1079587044/mld.o ../../../../../cyclone_tcp/ipv6/mld.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079587044/ndp.o: ../../../../../cyclone_tcp/ipv6/ndp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ndp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ndp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/ndp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/ndp.o.d" -o ${OBJECTDIR}/_ext/1079587044/ndp.o ../../../../../cyclone_tcp/ipv6/ndp.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079587044/ndp_cache.o: ../../../../../cyclone_tcp/ipv6/ndp_cache.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ndp_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ndp_cache.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/ndp_cache.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/ndp_cache.o.d" -o ${OBJECTDIR}/_ext/1079587044/ndp_cache.o ../../../../../cyclone_tcp/ipv6/ndp_cache.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079587044/ndp_misc.o: ../../../../../cyclone_tcp/ipv6/ndp_misc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ndp_misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ndp_misc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/ndp_misc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/ndp_misc.o.d" -o ${OBJECTDIR}/_ext/1079587044/ndp_misc.o ../../../../../cyclone_tcp/ipv6/ndp_misc.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079587044/slaac.o: ../../../../../cyclone_tcp/ipv6/slaac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/slaac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/slaac.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/slaac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/slaac.o.d" -o ${OBJECTDIR}/_ext/1079587044/slaac.o ../../../../../cyclone_tcp/ipv6/slaac.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079766828/ip.o: ../../../../../cyclone_tcp/core/ip.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/ip.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/ip.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/ip.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/ip.o.d" -o ${OBJECTDIR}/_ext/1079766828/ip.o ../../../../../cyclone_tcp/core/ip.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079766828/tcp.o: ../../../../../cyclone_tcp/core/tcp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/tcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/tcp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/tcp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/tcp.o.d" -o ${OBJECTDIR}/_ext/1079766828/tcp.o ../../../../../cyclone_tcp/core/tcp.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079766828/tcp_fsm.o: ../../../../../cyclone_tcp/core/tcp_fsm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/tcp_fsm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/tcp_fsm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/tcp_fsm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/tcp_fsm.o.d" -o ${OBJECTDIR}/_ext/1079766828/tcp_fsm.o ../../../../../cyclone_tcp/core/tcp_fsm.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079766828/tcp_misc.o: ../../../../../cyclone_tcp/core/tcp_misc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/tcp_misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/tcp_misc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/tcp_misc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/tcp_misc.o.d" -o ${OBJECTDIR}/_ext/1079766828/tcp_misc.o ../../../../../cyclone_tcp/core/tcp_misc.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079766828/tcp_timer.o: ../../../../../cyclone_tcp/core/tcp_timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/tcp_timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/tcp_timer.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/tcp_timer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/tcp_timer.o.d" -o ${OBJECTDIR}/_ext/1079766828/tcp_timer.o ../../../../../cyclone_tcp/core/tcp_timer.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079766828/udp.o: ../../../../../cyclone_tcp/core/udp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/udp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/udp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/udp.o.d" -o ${OBJECTDIR}/_ext/1079766828/udp.o ../../../../../cyclone_tcp/core/udp.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079766828/socket.o: ../../../../../cyclone_tcp/core/socket.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/socket.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/socket.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/socket.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/socket.o.d" -o ${OBJECTDIR}/_ext/1079766828/socket.o ../../../../../cyclone_tcp/core/socket.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079766828/bsd_socket.o: ../../../../../cyclone_tcp/core/bsd_socket.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/bsd_socket.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/bsd_socket.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/bsd_socket.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/bsd_socket.o.d" -o ${OBJECTDIR}/_ext/1079766828/bsd_socket.o ../../../../../cyclone_tcp/core/bsd_socket.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079766828/raw_socket.o: ../../../../../cyclone_tcp/core/raw_socket.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/raw_socket.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/raw_socket.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/raw_socket.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/raw_socket.o.d" -o ${OBJECTDIR}/_ext/1079766828/raw_socket.o ../../../../../cyclone_tcp/core/raw_socket.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/242264404/dns_cache.o: ../../../../../cyclone_tcp/dns/dns_cache.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/242264404" 
	@${RM} ${OBJECTDIR}/_ext/242264404/dns_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/242264404/dns_cache.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/242264404/dns_cache.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/242264404/dns_cache.o.d" -o ${OBJECTDIR}/_ext/242264404/dns_cache.o ../../../../../cyclone_tcp/dns/dns_cache.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/242264404/dns_client.o: ../../../../../cyclone_tcp/dns/dns_client.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/242264404" 
	@${RM} ${OBJECTDIR}/_ext/242264404/dns_client.o.d 
	@${RM} ${OBJECTDIR}/_ext/242264404/dns_client.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/242264404/dns_client.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/242264404/dns_client.o.d" -o ${OBJECTDIR}/_ext/242264404/dns_client.o ../../../../../cyclone_tcp/dns/dns_client.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/242264404/dns_common.o: ../../../../../cyclone_tcp/dns/dns_common.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/242264404" 
	@${RM} ${OBJECTDIR}/_ext/242264404/dns_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/242264404/dns_common.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/242264404/dns_common.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/242264404/dns_common.o.d" -o ${OBJECTDIR}/_ext/242264404/dns_common.o ../../../../../cyclone_tcp/dns/dns_common.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/242264404/dns_debug.o: ../../../../../cyclone_tcp/dns/dns_debug.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/242264404" 
	@${RM} ${OBJECTDIR}/_ext/242264404/dns_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/242264404/dns_debug.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/242264404/dns_debug.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/242264404/dns_debug.o.d" -o ${OBJECTDIR}/_ext/242264404/dns_debug.o ../../../../../cyclone_tcp/dns/dns_debug.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079479599/mdns_client.o: ../../../../../cyclone_tcp/mdns/mdns_client.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079479599" 
	@${RM} ${OBJECTDIR}/_ext/1079479599/mdns_client.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079479599/mdns_client.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079479599/mdns_client.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079479599/mdns_client.o.d" -o ${OBJECTDIR}/_ext/1079479599/mdns_client.o ../../../../../cyclone_tcp/mdns/mdns_client.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079479599/mdns_responder.o: ../../../../../cyclone_tcp/mdns/mdns_responder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079479599" 
	@${RM} ${OBJECTDIR}/_ext/1079479599/mdns_responder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079479599/mdns_responder.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079479599/mdns_responder.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079479599/mdns_responder.o.d" -o ${OBJECTDIR}/_ext/1079479599/mdns_responder.o ../../../../../cyclone_tcp/mdns/mdns_responder.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079479599/mdns_common.o: ../../../../../cyclone_tcp/mdns/mdns_common.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079479599" 
	@${RM} ${OBJECTDIR}/_ext/1079479599/mdns_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079479599/mdns_common.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079479599/mdns_common.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079479599/mdns_common.o.d" -o ${OBJECTDIR}/_ext/1079479599/mdns_common.o ../../../../../cyclone_tcp/mdns/mdns_common.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1435316685/nbns_client.o: ../../../../../cyclone_tcp/netbios/nbns_client.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1435316685" 
	@${RM} ${OBJECTDIR}/_ext/1435316685/nbns_client.o.d 
	@${RM} ${OBJECTDIR}/_ext/1435316685/nbns_client.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1435316685/nbns_client.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1435316685/nbns_client.o.d" -o ${OBJECTDIR}/_ext/1435316685/nbns_client.o ../../../../../cyclone_tcp/netbios/nbns_client.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1435316685/nbns_responder.o: ../../../../../cyclone_tcp/netbios/nbns_responder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1435316685" 
	@${RM} ${OBJECTDIR}/_ext/1435316685/nbns_responder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1435316685/nbns_responder.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1435316685/nbns_responder.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1435316685/nbns_responder.o.d" -o ${OBJECTDIR}/_ext/1435316685/nbns_responder.o ../../../../../cyclone_tcp/netbios/nbns_responder.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1435316685/nbns_common.o: ../../../../../cyclone_tcp/netbios/nbns_common.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1435316685" 
	@${RM} ${OBJECTDIR}/_ext/1435316685/nbns_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/1435316685/nbns_common.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1435316685/nbns_common.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1435316685/nbns_common.o.d" -o ${OBJECTDIR}/_ext/1435316685/nbns_common.o ../../../../../cyclone_tcp/netbios/nbns_common.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079744218/dhcp_client.o: ../../../../../cyclone_tcp/dhcp/dhcp_client.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079744218" 
	@${RM} ${OBJECTDIR}/_ext/1079744218/dhcp_client.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079744218/dhcp_client.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079744218/dhcp_client.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079744218/dhcp_client.o.d" -o ${OBJECTDIR}/_ext/1079744218/dhcp_client.o ../../../../../cyclone_tcp/dhcp/dhcp_client.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079744218/dhcp_common.o: ../../../../../cyclone_tcp/dhcp/dhcp_common.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079744218" 
	@${RM} ${OBJECTDIR}/_ext/1079744218/dhcp_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079744218/dhcp_common.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079744218/dhcp_common.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079744218/dhcp_common.o.d" -o ${OBJECTDIR}/_ext/1079744218/dhcp_common.o ../../../../../cyclone_tcp/dhcp/dhcp_common.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079744218/dhcp_debug.o: ../../../../../cyclone_tcp/dhcp/dhcp_debug.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079744218" 
	@${RM} ${OBJECTDIR}/_ext/1079744218/dhcp_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079744218/dhcp_debug.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079744218/dhcp_debug.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079744218/dhcp_debug.o.d" -o ${OBJECTDIR}/_ext/1079744218/dhcp_debug.o ../../../../../cyclone_tcp/dhcp/dhcp_debug.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079291277/snmp_agent.o: ../../../../../cyclone_tcp/snmp/snmp_agent.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079291277" 
	@${RM} ${OBJECTDIR}/_ext/1079291277/snmp_agent.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079291277/snmp_agent.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079291277/snmp_agent.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079291277/snmp_agent.o.d" -o ${OBJECTDIR}/_ext/1079291277/snmp_agent.o ../../../../../cyclone_tcp/snmp/snmp_agent.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079291277/snmp_agent_dispatch.o: ../../../../../cyclone_tcp/snmp/snmp_agent_dispatch.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079291277" 
	@${RM} ${OBJECTDIR}/_ext/1079291277/snmp_agent_dispatch.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079291277/snmp_agent_dispatch.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079291277/snmp_agent_dispatch.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079291277/snmp_agent_dispatch.o.d" -o ${OBJECTDIR}/_ext/1079291277/snmp_agent_dispatch.o ../../../../../cyclone_tcp/snmp/snmp_agent_dispatch.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079291277/snmp_agent_pdu.o: ../../../../../cyclone_tcp/snmp/snmp_agent_pdu.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079291277" 
	@${RM} ${OBJECTDIR}/_ext/1079291277/snmp_agent_pdu.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079291277/snmp_agent_pdu.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079291277/snmp_agent_pdu.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079291277/snmp_agent_pdu.o.d" -o ${OBJECTDIR}/_ext/1079291277/snmp_agent_pdu.o ../../../../../cyclone_tcp/snmp/snmp_agent_pdu.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079291277/snmp_agent_misc.o: ../../../../../cyclone_tcp/snmp/snmp_agent_misc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079291277" 
	@${RM} ${OBJECTDIR}/_ext/1079291277/snmp_agent_misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079291277/snmp_agent_misc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079291277/snmp_agent_misc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079291277/snmp_agent_misc.o.d" -o ${OBJECTDIR}/_ext/1079291277/snmp_agent_misc.o ../../../../../cyclone_tcp/snmp/snmp_agent_misc.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079291277/snmp_common.o: ../../../../../cyclone_tcp/snmp/snmp_common.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079291277" 
	@${RM} ${OBJECTDIR}/_ext/1079291277/snmp_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079291277/snmp_common.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079291277/snmp_common.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079291277/snmp_common.o.d" -o ${OBJECTDIR}/_ext/1079291277/snmp_common.o ../../../../../cyclone_tcp/snmp/snmp_common.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079291277/snmp_usm.o: ../../../../../cyclone_tcp/snmp/snmp_usm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079291277" 
	@${RM} ${OBJECTDIR}/_ext/1079291277/snmp_usm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079291277/snmp_usm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079291277/snmp_usm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079291277/snmp_usm.o.d" -o ${OBJECTDIR}/_ext/1079291277/snmp_usm.o ../../../../../cyclone_tcp/snmp/snmp_usm.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079475166/mib_common.o: ../../../../../cyclone_tcp/mibs/mib_common.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079475166" 
	@${RM} ${OBJECTDIR}/_ext/1079475166/mib_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079475166/mib_common.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079475166/mib_common.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079475166/mib_common.o.d" -o ${OBJECTDIR}/_ext/1079475166/mib_common.o ../../../../../cyclone_tcp/mibs/mib_common.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079475166/mib2_module.o: ../../../../../cyclone_tcp/mibs/mib2_module.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079475166" 
	@${RM} ${OBJECTDIR}/_ext/1079475166/mib2_module.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079475166/mib2_module.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079475166/mib2_module.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079475166/mib2_module.o.d" -o ${OBJECTDIR}/_ext/1079475166/mib2_module.o ../../../../../cyclone_tcp/mibs/mib2_module.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079475166/mib2_impl.o: ../../../../../cyclone_tcp/mibs/mib2_impl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079475166" 
	@${RM} ${OBJECTDIR}/_ext/1079475166/mib2_impl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079475166/mib2_impl.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079475166/mib2_impl.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079475166/mib2_impl.o.d" -o ${OBJECTDIR}/_ext/1079475166/mib2_impl.o ../../../../../cyclone_tcp/mibs/mib2_impl.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1613513288/md5.o: ../../../../../cyclone_crypto/md5.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1613513288" 
	@${RM} ${OBJECTDIR}/_ext/1613513288/md5.o.d 
	@${RM} ${OBJECTDIR}/_ext/1613513288/md5.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1613513288/md5.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1613513288/md5.o.d" -o ${OBJECTDIR}/_ext/1613513288/md5.o ../../../../../cyclone_crypto/md5.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1613513288/sha1.o: ../../../../../cyclone_crypto/sha1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1613513288" 
	@${RM} ${OBJECTDIR}/_ext/1613513288/sha1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1613513288/sha1.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1613513288/sha1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1613513288/sha1.o.d" -o ${OBJECTDIR}/_ext/1613513288/sha1.o ../../../../../cyclone_crypto/sha1.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1613513288/hmac.o: ../../../../../cyclone_crypto/hmac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1613513288" 
	@${RM} ${OBJECTDIR}/_ext/1613513288/hmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1613513288/hmac.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1613513288/hmac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1613513288/hmac.o.d" -o ${OBJECTDIR}/_ext/1613513288/hmac.o ../../../../../cyclone_crypto/hmac.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1613513288/des.o: ../../../../../cyclone_crypto/des.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1613513288" 
	@${RM} ${OBJECTDIR}/_ext/1613513288/des.o.d 
	@${RM} ${OBJECTDIR}/_ext/1613513288/des.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1613513288/des.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1613513288/des.o.d" -o ${OBJECTDIR}/_ext/1613513288/des.o ../../../../../cyclone_crypto/des.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1613513288/aes.o: ../../../../../cyclone_crypto/aes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1613513288" 
	@${RM} ${OBJECTDIR}/_ext/1613513288/aes.o.d 
	@${RM} ${OBJECTDIR}/_ext/1613513288/aes.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1613513288/aes.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1613513288/aes.o.d" -o ${OBJECTDIR}/_ext/1613513288/aes.o ../../../../../cyclone_crypto/aes.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1613513288/cipher_mode_cbc.o: ../../../../../cyclone_crypto/cipher_mode_cbc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1613513288" 
	@${RM} ${OBJECTDIR}/_ext/1613513288/cipher_mode_cbc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1613513288/cipher_mode_cbc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1613513288/cipher_mode_cbc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1613513288/cipher_mode_cbc.o.d" -o ${OBJECTDIR}/_ext/1613513288/cipher_mode_cbc.o ../../../../../cyclone_crypto/cipher_mode_cbc.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1613513288/cipher_mode_cfb.o: ../../../../../cyclone_crypto/cipher_mode_cfb.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1613513288" 
	@${RM} ${OBJECTDIR}/_ext/1613513288/cipher_mode_cfb.o.d 
	@${RM} ${OBJECTDIR}/_ext/1613513288/cipher_mode_cfb.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1613513288/cipher_mode_cfb.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1613513288/cipher_mode_cfb.o.d" -o ${OBJECTDIR}/_ext/1613513288/cipher_mode_cfb.o ../../../../../cyclone_crypto/cipher_mode_cfb.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1613513288/asn1.o: ../../../../../cyclone_crypto/asn1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1613513288" 
	@${RM} ${OBJECTDIR}/_ext/1613513288/asn1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1613513288/asn1.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1613513288/asn1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1613513288/asn1.o.d" -o ${OBJECTDIR}/_ext/1613513288/asn1.o ../../../../../cyclone_crypto/asn1.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1613513288/oid.o: ../../../../../cyclone_crypto/oid.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1613513288" 
	@${RM} ${OBJECTDIR}/_ext/1613513288/oid.o.d 
	@${RM} ${OBJECTDIR}/_ext/1613513288/oid.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1613513288/oid.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EF_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ef_starter_kit" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1613513288/oid.o.d" -o ${OBJECTDIR}/_ext/1613513288/oid.o ../../../../../cyclone_crypto/oid.c      $(COMPARISON_BUILD) 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/mplabx.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/mplabx.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}            $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,--defsym=_min_heap_size=262144,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/mplabx.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/mplabx.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}            $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=262144,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/mplabx.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
