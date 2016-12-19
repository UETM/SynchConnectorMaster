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
SOURCEFILES_QUOTED_IF_SPACED=../src/main.c ../src/fatfs_drv.c ../src/debug.c ../src/sprintf.c ../src/strtok_r.c ../src/ext4_irq_wrapper.S ../src/eth_irq_wrapper.S ../src/ext_int_driver.c ../../../../../common/endian.c ../../../../../common/os_port_freertos.c ../../../../../common/fs_port_fatfs.c ../../../../../common/date_time.c ../../../../../common/str.c ../../../../../common/path.c ../../../../../cyclone_tcp/core/net.c ../../../../../cyclone_tcp/core/net_mem.c ../../../../../cyclone_tcp/drivers/pic32mz_eth.c ../../../../../cyclone_tcp/drivers/lan8740.c ../../../../../cyclone_tcp/core/nic.c ../../../../../cyclone_tcp/core/ethernet.c ../../../../../cyclone_tcp/ipv4/arp.c ../../../../../cyclone_tcp/ipv4/ipv4.c ../../../../../cyclone_tcp/ipv4/ipv4_frag.c ../../../../../cyclone_tcp/ipv4/icmp.c ../../../../../cyclone_tcp/ipv4/igmp.c ../../../../../cyclone_tcp/ipv6/ipv6.c ../../../../../cyclone_tcp/ipv6/ipv6_frag.c ../../../../../cyclone_tcp/ipv6/ipv6_misc.c ../../../../../cyclone_tcp/ipv6/ipv6_pmtu.c ../../../../../cyclone_tcp/ipv6/icmpv6.c ../../../../../cyclone_tcp/ipv6/mld.c ../../../../../cyclone_tcp/ipv6/ndp.c ../../../../../cyclone_tcp/ipv6/ndp_cache.c ../../../../../cyclone_tcp/ipv6/ndp_misc.c ../../../../../cyclone_tcp/ipv6/slaac.c ../../../../../cyclone_tcp/core/ip.c ../../../../../cyclone_tcp/core/tcp.c ../../../../../cyclone_tcp/core/tcp_fsm.c ../../../../../cyclone_tcp/core/tcp_misc.c ../../../../../cyclone_tcp/core/tcp_timer.c ../../../../../cyclone_tcp/core/udp.c ../../../../../cyclone_tcp/core/socket.c ../../../../../cyclone_tcp/core/bsd_socket.c ../../../../../cyclone_tcp/core/raw_socket.c ../../../../../cyclone_tcp/dns/dns_cache.c ../../../../../cyclone_tcp/dns/dns_client.c ../../../../../cyclone_tcp/dns/dns_common.c ../../../../../cyclone_tcp/dns/dns_debug.c ../../../../../cyclone_tcp/mdns/mdns_client.c ../../../../../cyclone_tcp/mdns/mdns_responder.c ../../../../../cyclone_tcp/mdns/mdns_common.c ../../../../../cyclone_tcp/netbios/nbns_client.c ../../../../../cyclone_tcp/netbios/nbns_responder.c ../../../../../cyclone_tcp/netbios/nbns_common.c ../../../../../cyclone_tcp/dhcp/dhcp_client.c ../../../../../cyclone_tcp/dhcp/dhcp_common.c ../../../../../cyclone_tcp/dhcp/dhcp_debug.c ../../../../../cyclone_tcp/ftp/ftp_server.c ../../../../../cyclone_tcp/ftp/ftp_server_events.c ../../../../../cyclone_tcp/ftp/ftp_server_commands.c ../../../../../cyclone_tcp/ftp/ftp_server_misc.c ../../../../common/freertos/portable/mplab/pic32mz/port.c ../../../../common/freertos/portable/mplab/pic32mz/port_asm.S ../../../../common/freertos/croutine.c ../../../../common/freertos/list.c ../../../../common/freertos/queue.c ../../../../common/freertos/tasks.c ../../../../common/freertos/timers.c ../../../../common/freertos/portable/memmang/heap_3.c ../../../../common/fatfs/ff.c ../../../../common/fatfs/option/unicode.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/fatfs_drv.o ${OBJECTDIR}/_ext/1360937237/debug.o ${OBJECTDIR}/_ext/1360937237/sprintf.o ${OBJECTDIR}/_ext/1360937237/strtok_r.o ${OBJECTDIR}/_ext/1360937237/ext4_irq_wrapper.o ${OBJECTDIR}/_ext/1360937237/eth_irq_wrapper.o ${OBJECTDIR}/_ext/1360937237/ext_int_driver.o ${OBJECTDIR}/_ext/360186330/endian.o ${OBJECTDIR}/_ext/360186330/os_port_freertos.o ${OBJECTDIR}/_ext/360186330/fs_port_fatfs.o ${OBJECTDIR}/_ext/360186330/date_time.o ${OBJECTDIR}/_ext/360186330/str.o ${OBJECTDIR}/_ext/360186330/path.o ${OBJECTDIR}/_ext/1079766828/net.o ${OBJECTDIR}/_ext/1079766828/net_mem.o ${OBJECTDIR}/_ext/1357806602/pic32mz_eth.o ${OBJECTDIR}/_ext/1357806602/lan8740.o ${OBJECTDIR}/_ext/1079766828/nic.o ${OBJECTDIR}/_ext/1079766828/ethernet.o ${OBJECTDIR}/_ext/1079587046/arp.o ${OBJECTDIR}/_ext/1079587046/ipv4.o ${OBJECTDIR}/_ext/1079587046/ipv4_frag.o ${OBJECTDIR}/_ext/1079587046/icmp.o ${OBJECTDIR}/_ext/1079587046/igmp.o ${OBJECTDIR}/_ext/1079587044/ipv6.o ${OBJECTDIR}/_ext/1079587044/ipv6_frag.o ${OBJECTDIR}/_ext/1079587044/ipv6_misc.o ${OBJECTDIR}/_ext/1079587044/ipv6_pmtu.o ${OBJECTDIR}/_ext/1079587044/icmpv6.o ${OBJECTDIR}/_ext/1079587044/mld.o ${OBJECTDIR}/_ext/1079587044/ndp.o ${OBJECTDIR}/_ext/1079587044/ndp_cache.o ${OBJECTDIR}/_ext/1079587044/ndp_misc.o ${OBJECTDIR}/_ext/1079587044/slaac.o ${OBJECTDIR}/_ext/1079766828/ip.o ${OBJECTDIR}/_ext/1079766828/tcp.o ${OBJECTDIR}/_ext/1079766828/tcp_fsm.o ${OBJECTDIR}/_ext/1079766828/tcp_misc.o ${OBJECTDIR}/_ext/1079766828/tcp_timer.o ${OBJECTDIR}/_ext/1079766828/udp.o ${OBJECTDIR}/_ext/1079766828/socket.o ${OBJECTDIR}/_ext/1079766828/bsd_socket.o ${OBJECTDIR}/_ext/1079766828/raw_socket.o ${OBJECTDIR}/_ext/242264404/dns_cache.o ${OBJECTDIR}/_ext/242264404/dns_client.o ${OBJECTDIR}/_ext/242264404/dns_common.o ${OBJECTDIR}/_ext/242264404/dns_debug.o ${OBJECTDIR}/_ext/1079479599/mdns_client.o ${OBJECTDIR}/_ext/1079479599/mdns_responder.o ${OBJECTDIR}/_ext/1079479599/mdns_common.o ${OBJECTDIR}/_ext/1435316685/nbns_client.o ${OBJECTDIR}/_ext/1435316685/nbns_responder.o ${OBJECTDIR}/_ext/1435316685/nbns_common.o ${OBJECTDIR}/_ext/1079744218/dhcp_client.o ${OBJECTDIR}/_ext/1079744218/dhcp_common.o ${OBJECTDIR}/_ext/1079744218/dhcp_debug.o ${OBJECTDIR}/_ext/242266509/ftp_server.o ${OBJECTDIR}/_ext/242266509/ftp_server_events.o ${OBJECTDIR}/_ext/242266509/ftp_server_commands.o ${OBJECTDIR}/_ext/242266509/ftp_server_misc.o ${OBJECTDIR}/_ext/1128343338/port.o ${OBJECTDIR}/_ext/1128343338/port_asm.o ${OBJECTDIR}/_ext/55695242/croutine.o ${OBJECTDIR}/_ext/55695242/list.o ${OBJECTDIR}/_ext/55695242/queue.o ${OBJECTDIR}/_ext/55695242/tasks.o ${OBJECTDIR}/_ext/55695242/timers.o ${OBJECTDIR}/_ext/2075018599/heap_3.o ${OBJECTDIR}/_ext/2101648322/ff.o ${OBJECTDIR}/_ext/1461350242/unicode.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/fatfs_drv.o.d ${OBJECTDIR}/_ext/1360937237/debug.o.d ${OBJECTDIR}/_ext/1360937237/sprintf.o.d ${OBJECTDIR}/_ext/1360937237/strtok_r.o.d ${OBJECTDIR}/_ext/1360937237/ext4_irq_wrapper.o.d ${OBJECTDIR}/_ext/1360937237/eth_irq_wrapper.o.d ${OBJECTDIR}/_ext/1360937237/ext_int_driver.o.d ${OBJECTDIR}/_ext/360186330/endian.o.d ${OBJECTDIR}/_ext/360186330/os_port_freertos.o.d ${OBJECTDIR}/_ext/360186330/fs_port_fatfs.o.d ${OBJECTDIR}/_ext/360186330/date_time.o.d ${OBJECTDIR}/_ext/360186330/str.o.d ${OBJECTDIR}/_ext/360186330/path.o.d ${OBJECTDIR}/_ext/1079766828/net.o.d ${OBJECTDIR}/_ext/1079766828/net_mem.o.d ${OBJECTDIR}/_ext/1357806602/pic32mz_eth.o.d ${OBJECTDIR}/_ext/1357806602/lan8740.o.d ${OBJECTDIR}/_ext/1079766828/nic.o.d ${OBJECTDIR}/_ext/1079766828/ethernet.o.d ${OBJECTDIR}/_ext/1079587046/arp.o.d ${OBJECTDIR}/_ext/1079587046/ipv4.o.d ${OBJECTDIR}/_ext/1079587046/ipv4_frag.o.d ${OBJECTDIR}/_ext/1079587046/icmp.o.d ${OBJECTDIR}/_ext/1079587046/igmp.o.d ${OBJECTDIR}/_ext/1079587044/ipv6.o.d ${OBJECTDIR}/_ext/1079587044/ipv6_frag.o.d ${OBJECTDIR}/_ext/1079587044/ipv6_misc.o.d ${OBJECTDIR}/_ext/1079587044/ipv6_pmtu.o.d ${OBJECTDIR}/_ext/1079587044/icmpv6.o.d ${OBJECTDIR}/_ext/1079587044/mld.o.d ${OBJECTDIR}/_ext/1079587044/ndp.o.d ${OBJECTDIR}/_ext/1079587044/ndp_cache.o.d ${OBJECTDIR}/_ext/1079587044/ndp_misc.o.d ${OBJECTDIR}/_ext/1079587044/slaac.o.d ${OBJECTDIR}/_ext/1079766828/ip.o.d ${OBJECTDIR}/_ext/1079766828/tcp.o.d ${OBJECTDIR}/_ext/1079766828/tcp_fsm.o.d ${OBJECTDIR}/_ext/1079766828/tcp_misc.o.d ${OBJECTDIR}/_ext/1079766828/tcp_timer.o.d ${OBJECTDIR}/_ext/1079766828/udp.o.d ${OBJECTDIR}/_ext/1079766828/socket.o.d ${OBJECTDIR}/_ext/1079766828/bsd_socket.o.d ${OBJECTDIR}/_ext/1079766828/raw_socket.o.d ${OBJECTDIR}/_ext/242264404/dns_cache.o.d ${OBJECTDIR}/_ext/242264404/dns_client.o.d ${OBJECTDIR}/_ext/242264404/dns_common.o.d ${OBJECTDIR}/_ext/242264404/dns_debug.o.d ${OBJECTDIR}/_ext/1079479599/mdns_client.o.d ${OBJECTDIR}/_ext/1079479599/mdns_responder.o.d ${OBJECTDIR}/_ext/1079479599/mdns_common.o.d ${OBJECTDIR}/_ext/1435316685/nbns_client.o.d ${OBJECTDIR}/_ext/1435316685/nbns_responder.o.d ${OBJECTDIR}/_ext/1435316685/nbns_common.o.d ${OBJECTDIR}/_ext/1079744218/dhcp_client.o.d ${OBJECTDIR}/_ext/1079744218/dhcp_common.o.d ${OBJECTDIR}/_ext/1079744218/dhcp_debug.o.d ${OBJECTDIR}/_ext/242266509/ftp_server.o.d ${OBJECTDIR}/_ext/242266509/ftp_server_events.o.d ${OBJECTDIR}/_ext/242266509/ftp_server_commands.o.d ${OBJECTDIR}/_ext/242266509/ftp_server_misc.o.d ${OBJECTDIR}/_ext/1128343338/port.o.d ${OBJECTDIR}/_ext/1128343338/port_asm.o.d ${OBJECTDIR}/_ext/55695242/croutine.o.d ${OBJECTDIR}/_ext/55695242/list.o.d ${OBJECTDIR}/_ext/55695242/queue.o.d ${OBJECTDIR}/_ext/55695242/tasks.o.d ${OBJECTDIR}/_ext/55695242/timers.o.d ${OBJECTDIR}/_ext/2075018599/heap_3.o.d ${OBJECTDIR}/_ext/2101648322/ff.o.d ${OBJECTDIR}/_ext/1461350242/unicode.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/fatfs_drv.o ${OBJECTDIR}/_ext/1360937237/debug.o ${OBJECTDIR}/_ext/1360937237/sprintf.o ${OBJECTDIR}/_ext/1360937237/strtok_r.o ${OBJECTDIR}/_ext/1360937237/ext4_irq_wrapper.o ${OBJECTDIR}/_ext/1360937237/eth_irq_wrapper.o ${OBJECTDIR}/_ext/1360937237/ext_int_driver.o ${OBJECTDIR}/_ext/360186330/endian.o ${OBJECTDIR}/_ext/360186330/os_port_freertos.o ${OBJECTDIR}/_ext/360186330/fs_port_fatfs.o ${OBJECTDIR}/_ext/360186330/date_time.o ${OBJECTDIR}/_ext/360186330/str.o ${OBJECTDIR}/_ext/360186330/path.o ${OBJECTDIR}/_ext/1079766828/net.o ${OBJECTDIR}/_ext/1079766828/net_mem.o ${OBJECTDIR}/_ext/1357806602/pic32mz_eth.o ${OBJECTDIR}/_ext/1357806602/lan8740.o ${OBJECTDIR}/_ext/1079766828/nic.o ${OBJECTDIR}/_ext/1079766828/ethernet.o ${OBJECTDIR}/_ext/1079587046/arp.o ${OBJECTDIR}/_ext/1079587046/ipv4.o ${OBJECTDIR}/_ext/1079587046/ipv4_frag.o ${OBJECTDIR}/_ext/1079587046/icmp.o ${OBJECTDIR}/_ext/1079587046/igmp.o ${OBJECTDIR}/_ext/1079587044/ipv6.o ${OBJECTDIR}/_ext/1079587044/ipv6_frag.o ${OBJECTDIR}/_ext/1079587044/ipv6_misc.o ${OBJECTDIR}/_ext/1079587044/ipv6_pmtu.o ${OBJECTDIR}/_ext/1079587044/icmpv6.o ${OBJECTDIR}/_ext/1079587044/mld.o ${OBJECTDIR}/_ext/1079587044/ndp.o ${OBJECTDIR}/_ext/1079587044/ndp_cache.o ${OBJECTDIR}/_ext/1079587044/ndp_misc.o ${OBJECTDIR}/_ext/1079587044/slaac.o ${OBJECTDIR}/_ext/1079766828/ip.o ${OBJECTDIR}/_ext/1079766828/tcp.o ${OBJECTDIR}/_ext/1079766828/tcp_fsm.o ${OBJECTDIR}/_ext/1079766828/tcp_misc.o ${OBJECTDIR}/_ext/1079766828/tcp_timer.o ${OBJECTDIR}/_ext/1079766828/udp.o ${OBJECTDIR}/_ext/1079766828/socket.o ${OBJECTDIR}/_ext/1079766828/bsd_socket.o ${OBJECTDIR}/_ext/1079766828/raw_socket.o ${OBJECTDIR}/_ext/242264404/dns_cache.o ${OBJECTDIR}/_ext/242264404/dns_client.o ${OBJECTDIR}/_ext/242264404/dns_common.o ${OBJECTDIR}/_ext/242264404/dns_debug.o ${OBJECTDIR}/_ext/1079479599/mdns_client.o ${OBJECTDIR}/_ext/1079479599/mdns_responder.o ${OBJECTDIR}/_ext/1079479599/mdns_common.o ${OBJECTDIR}/_ext/1435316685/nbns_client.o ${OBJECTDIR}/_ext/1435316685/nbns_responder.o ${OBJECTDIR}/_ext/1435316685/nbns_common.o ${OBJECTDIR}/_ext/1079744218/dhcp_client.o ${OBJECTDIR}/_ext/1079744218/dhcp_common.o ${OBJECTDIR}/_ext/1079744218/dhcp_debug.o ${OBJECTDIR}/_ext/242266509/ftp_server.o ${OBJECTDIR}/_ext/242266509/ftp_server_events.o ${OBJECTDIR}/_ext/242266509/ftp_server_commands.o ${OBJECTDIR}/_ext/242266509/ftp_server_misc.o ${OBJECTDIR}/_ext/1128343338/port.o ${OBJECTDIR}/_ext/1128343338/port_asm.o ${OBJECTDIR}/_ext/55695242/croutine.o ${OBJECTDIR}/_ext/55695242/list.o ${OBJECTDIR}/_ext/55695242/queue.o ${OBJECTDIR}/_ext/55695242/tasks.o ${OBJECTDIR}/_ext/55695242/timers.o ${OBJECTDIR}/_ext/2075018599/heap_3.o ${OBJECTDIR}/_ext/2101648322/ff.o ${OBJECTDIR}/_ext/1461350242/unicode.o

# Source Files
SOURCEFILES=../src/main.c ../src/fatfs_drv.c ../src/debug.c ../src/sprintf.c ../src/strtok_r.c ../src/ext4_irq_wrapper.S ../src/eth_irq_wrapper.S ../src/ext_int_driver.c ../../../../../common/endian.c ../../../../../common/os_port_freertos.c ../../../../../common/fs_port_fatfs.c ../../../../../common/date_time.c ../../../../../common/str.c ../../../../../common/path.c ../../../../../cyclone_tcp/core/net.c ../../../../../cyclone_tcp/core/net_mem.c ../../../../../cyclone_tcp/drivers/pic32mz_eth.c ../../../../../cyclone_tcp/drivers/lan8740.c ../../../../../cyclone_tcp/core/nic.c ../../../../../cyclone_tcp/core/ethernet.c ../../../../../cyclone_tcp/ipv4/arp.c ../../../../../cyclone_tcp/ipv4/ipv4.c ../../../../../cyclone_tcp/ipv4/ipv4_frag.c ../../../../../cyclone_tcp/ipv4/icmp.c ../../../../../cyclone_tcp/ipv4/igmp.c ../../../../../cyclone_tcp/ipv6/ipv6.c ../../../../../cyclone_tcp/ipv6/ipv6_frag.c ../../../../../cyclone_tcp/ipv6/ipv6_misc.c ../../../../../cyclone_tcp/ipv6/ipv6_pmtu.c ../../../../../cyclone_tcp/ipv6/icmpv6.c ../../../../../cyclone_tcp/ipv6/mld.c ../../../../../cyclone_tcp/ipv6/ndp.c ../../../../../cyclone_tcp/ipv6/ndp_cache.c ../../../../../cyclone_tcp/ipv6/ndp_misc.c ../../../../../cyclone_tcp/ipv6/slaac.c ../../../../../cyclone_tcp/core/ip.c ../../../../../cyclone_tcp/core/tcp.c ../../../../../cyclone_tcp/core/tcp_fsm.c ../../../../../cyclone_tcp/core/tcp_misc.c ../../../../../cyclone_tcp/core/tcp_timer.c ../../../../../cyclone_tcp/core/udp.c ../../../../../cyclone_tcp/core/socket.c ../../../../../cyclone_tcp/core/bsd_socket.c ../../../../../cyclone_tcp/core/raw_socket.c ../../../../../cyclone_tcp/dns/dns_cache.c ../../../../../cyclone_tcp/dns/dns_client.c ../../../../../cyclone_tcp/dns/dns_common.c ../../../../../cyclone_tcp/dns/dns_debug.c ../../../../../cyclone_tcp/mdns/mdns_client.c ../../../../../cyclone_tcp/mdns/mdns_responder.c ../../../../../cyclone_tcp/mdns/mdns_common.c ../../../../../cyclone_tcp/netbios/nbns_client.c ../../../../../cyclone_tcp/netbios/nbns_responder.c ../../../../../cyclone_tcp/netbios/nbns_common.c ../../../../../cyclone_tcp/dhcp/dhcp_client.c ../../../../../cyclone_tcp/dhcp/dhcp_common.c ../../../../../cyclone_tcp/dhcp/dhcp_debug.c ../../../../../cyclone_tcp/ftp/ftp_server.c ../../../../../cyclone_tcp/ftp/ftp_server_events.c ../../../../../cyclone_tcp/ftp/ftp_server_commands.c ../../../../../cyclone_tcp/ftp/ftp_server_misc.c ../../../../common/freertos/portable/mplab/pic32mz/port.c ../../../../common/freertos/portable/mplab/pic32mz/port_asm.S ../../../../common/freertos/croutine.c ../../../../common/freertos/list.c ../../../../common/freertos/queue.c ../../../../common/freertos/tasks.c ../../../../common/freertos/timers.c ../../../../common/freertos/portable/memmang/heap_3.c ../../../../common/fatfs/ff.c ../../../../common/fatfs/option/unicode.c


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

MP_PROCESSOR_OPTION=32MZ2048ECH144
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1360937237/ext4_irq_wrapper.o: ../src/ext4_irq_wrapper.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ext4_irq_wrapper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ext4_irq_wrapper.o 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ext4_irq_wrapper.o.ok ${OBJECTDIR}/_ext/1360937237/ext4_irq_wrapper.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/ext4_irq_wrapper.o.d" "${OBJECTDIR}/_ext/1360937237/ext4_irq_wrapper.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1360937237/ext4_irq_wrapper.o.d"  -o ${OBJECTDIR}/_ext/1360937237/ext4_irq_wrapper.o ../src/ext4_irq_wrapper.S    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1360937237/ext4_irq_wrapper.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
${OBJECTDIR}/_ext/1360937237/eth_irq_wrapper.o: ../src/eth_irq_wrapper.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/eth_irq_wrapper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/eth_irq_wrapper.o 
	@${RM} ${OBJECTDIR}/_ext/1360937237/eth_irq_wrapper.o.ok ${OBJECTDIR}/_ext/1360937237/eth_irq_wrapper.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/eth_irq_wrapper.o.d" "${OBJECTDIR}/_ext/1360937237/eth_irq_wrapper.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1360937237/eth_irq_wrapper.o.d"  -o ${OBJECTDIR}/_ext/1360937237/eth_irq_wrapper.o ../src/eth_irq_wrapper.S    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1360937237/eth_irq_wrapper.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
${OBJECTDIR}/_ext/1128343338/port_asm.o: ../../../../common/freertos/portable/mplab/pic32mz/port_asm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1128343338" 
	@${RM} ${OBJECTDIR}/_ext/1128343338/port_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1128343338/port_asm.o 
	@${RM} ${OBJECTDIR}/_ext/1128343338/port_asm.o.ok ${OBJECTDIR}/_ext/1128343338/port_asm.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1128343338/port_asm.o.d" "${OBJECTDIR}/_ext/1128343338/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1128343338/port_asm.o.d"  -o ${OBJECTDIR}/_ext/1128343338/port_asm.o ../../../../common/freertos/portable/mplab/pic32mz/port_asm.S    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1128343338/port_asm.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1
	
else
${OBJECTDIR}/_ext/1360937237/ext4_irq_wrapper.o: ../src/ext4_irq_wrapper.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ext4_irq_wrapper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ext4_irq_wrapper.o 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ext4_irq_wrapper.o.ok ${OBJECTDIR}/_ext/1360937237/ext4_irq_wrapper.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/ext4_irq_wrapper.o.d" "${OBJECTDIR}/_ext/1360937237/ext4_irq_wrapper.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1360937237/ext4_irq_wrapper.o.d"  -o ${OBJECTDIR}/_ext/1360937237/ext4_irq_wrapper.o ../src/ext4_irq_wrapper.S    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1360937237/ext4_irq_wrapper.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/_ext/1360937237/eth_irq_wrapper.o: ../src/eth_irq_wrapper.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/eth_irq_wrapper.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/eth_irq_wrapper.o 
	@${RM} ${OBJECTDIR}/_ext/1360937237/eth_irq_wrapper.o.ok ${OBJECTDIR}/_ext/1360937237/eth_irq_wrapper.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/eth_irq_wrapper.o.d" "${OBJECTDIR}/_ext/1360937237/eth_irq_wrapper.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1360937237/eth_irq_wrapper.o.d"  -o ${OBJECTDIR}/_ext/1360937237/eth_irq_wrapper.o ../src/eth_irq_wrapper.S    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1360937237/eth_irq_wrapper.o.asm.d",--gdwarf-2
	
${OBJECTDIR}/_ext/1128343338/port_asm.o: ../../../../common/freertos/portable/mplab/pic32mz/port_asm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1128343338" 
	@${RM} ${OBJECTDIR}/_ext/1128343338/port_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1128343338/port_asm.o 
	@${RM} ${OBJECTDIR}/_ext/1128343338/port_asm.o.ok ${OBJECTDIR}/_ext/1128343338/port_asm.o.err 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1128343338/port_asm.o.d" "${OBJECTDIR}/_ext/1128343338/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1128343338/port_asm.o.d"  -o ${OBJECTDIR}/_ext/1128343338/port_asm.o ../../../../common/freertos/portable/mplab/pic32mz/port_asm.S    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1128343338/port_asm.o.asm.d",--gdwarf-2
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/fatfs_drv.o: ../src/fatfs_drv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/fatfs_drv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/fatfs_drv.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/fatfs_drv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1360937237/fatfs_drv.o.d" -o ${OBJECTDIR}/_ext/1360937237/fatfs_drv.o ../src/fatfs_drv.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/debug.o: ../src/debug.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/debug.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/debug.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1360937237/debug.o.d" -o ${OBJECTDIR}/_ext/1360937237/debug.o ../src/debug.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/sprintf.o: ../src/sprintf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/sprintf.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/sprintf.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/sprintf.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1360937237/sprintf.o.d" -o ${OBJECTDIR}/_ext/1360937237/sprintf.o ../src/sprintf.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/strtok_r.o: ../src/strtok_r.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/strtok_r.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/strtok_r.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/strtok_r.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1360937237/strtok_r.o.d" -o ${OBJECTDIR}/_ext/1360937237/strtok_r.o ../src/strtok_r.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/ext_int_driver.o: ../src/ext_int_driver.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ext_int_driver.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ext_int_driver.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/ext_int_driver.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1360937237/ext_int_driver.o.d" -o ${OBJECTDIR}/_ext/1360937237/ext_int_driver.o ../src/ext_int_driver.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/360186330/endian.o: ../../../../../common/endian.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/360186330" 
	@${RM} ${OBJECTDIR}/_ext/360186330/endian.o.d 
	@${RM} ${OBJECTDIR}/_ext/360186330/endian.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/360186330/endian.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/360186330/endian.o.d" -o ${OBJECTDIR}/_ext/360186330/endian.o ../../../../../common/endian.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/360186330/os_port_freertos.o: ../../../../../common/os_port_freertos.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/360186330" 
	@${RM} ${OBJECTDIR}/_ext/360186330/os_port_freertos.o.d 
	@${RM} ${OBJECTDIR}/_ext/360186330/os_port_freertos.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/360186330/os_port_freertos.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/360186330/os_port_freertos.o.d" -o ${OBJECTDIR}/_ext/360186330/os_port_freertos.o ../../../../../common/os_port_freertos.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/360186330/fs_port_fatfs.o: ../../../../../common/fs_port_fatfs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/360186330" 
	@${RM} ${OBJECTDIR}/_ext/360186330/fs_port_fatfs.o.d 
	@${RM} ${OBJECTDIR}/_ext/360186330/fs_port_fatfs.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/360186330/fs_port_fatfs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/360186330/fs_port_fatfs.o.d" -o ${OBJECTDIR}/_ext/360186330/fs_port_fatfs.o ../../../../../common/fs_port_fatfs.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/360186330/date_time.o: ../../../../../common/date_time.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/360186330" 
	@${RM} ${OBJECTDIR}/_ext/360186330/date_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/360186330/date_time.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/360186330/date_time.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/360186330/date_time.o.d" -o ${OBJECTDIR}/_ext/360186330/date_time.o ../../../../../common/date_time.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/360186330/str.o: ../../../../../common/str.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/360186330" 
	@${RM} ${OBJECTDIR}/_ext/360186330/str.o.d 
	@${RM} ${OBJECTDIR}/_ext/360186330/str.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/360186330/str.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/360186330/str.o.d" -o ${OBJECTDIR}/_ext/360186330/str.o ../../../../../common/str.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/360186330/path.o: ../../../../../common/path.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/360186330" 
	@${RM} ${OBJECTDIR}/_ext/360186330/path.o.d 
	@${RM} ${OBJECTDIR}/_ext/360186330/path.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/360186330/path.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/360186330/path.o.d" -o ${OBJECTDIR}/_ext/360186330/path.o ../../../../../common/path.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079766828/net.o: ../../../../../cyclone_tcp/core/net.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/net.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/net.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/net.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/net.o.d" -o ${OBJECTDIR}/_ext/1079766828/net.o ../../../../../cyclone_tcp/core/net.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079766828/net_mem.o: ../../../../../cyclone_tcp/core/net_mem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/net_mem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/net_mem.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/net_mem.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/net_mem.o.d" -o ${OBJECTDIR}/_ext/1079766828/net_mem.o ../../../../../cyclone_tcp/core/net_mem.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1357806602/pic32mz_eth.o: ../../../../../cyclone_tcp/drivers/pic32mz_eth.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1357806602" 
	@${RM} ${OBJECTDIR}/_ext/1357806602/pic32mz_eth.o.d 
	@${RM} ${OBJECTDIR}/_ext/1357806602/pic32mz_eth.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1357806602/pic32mz_eth.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1357806602/pic32mz_eth.o.d" -o ${OBJECTDIR}/_ext/1357806602/pic32mz_eth.o ../../../../../cyclone_tcp/drivers/pic32mz_eth.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1357806602/lan8740.o: ../../../../../cyclone_tcp/drivers/lan8740.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1357806602" 
	@${RM} ${OBJECTDIR}/_ext/1357806602/lan8740.o.d 
	@${RM} ${OBJECTDIR}/_ext/1357806602/lan8740.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1357806602/lan8740.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1357806602/lan8740.o.d" -o ${OBJECTDIR}/_ext/1357806602/lan8740.o ../../../../../cyclone_tcp/drivers/lan8740.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079766828/nic.o: ../../../../../cyclone_tcp/core/nic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/nic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/nic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/nic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/nic.o.d" -o ${OBJECTDIR}/_ext/1079766828/nic.o ../../../../../cyclone_tcp/core/nic.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079766828/ethernet.o: ../../../../../cyclone_tcp/core/ethernet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/ethernet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/ethernet.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/ethernet.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/ethernet.o.d" -o ${OBJECTDIR}/_ext/1079766828/ethernet.o ../../../../../cyclone_tcp/core/ethernet.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079587046/arp.o: ../../../../../cyclone_tcp/ipv4/arp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587046" 
	@${RM} ${OBJECTDIR}/_ext/1079587046/arp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587046/arp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587046/arp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587046/arp.o.d" -o ${OBJECTDIR}/_ext/1079587046/arp.o ../../../../../cyclone_tcp/ipv4/arp.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079587046/ipv4.o: ../../../../../cyclone_tcp/ipv4/ipv4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587046" 
	@${RM} ${OBJECTDIR}/_ext/1079587046/ipv4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587046/ipv4.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587046/ipv4.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587046/ipv4.o.d" -o ${OBJECTDIR}/_ext/1079587046/ipv4.o ../../../../../cyclone_tcp/ipv4/ipv4.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079587046/ipv4_frag.o: ../../../../../cyclone_tcp/ipv4/ipv4_frag.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587046" 
	@${RM} ${OBJECTDIR}/_ext/1079587046/ipv4_frag.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587046/ipv4_frag.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587046/ipv4_frag.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587046/ipv4_frag.o.d" -o ${OBJECTDIR}/_ext/1079587046/ipv4_frag.o ../../../../../cyclone_tcp/ipv4/ipv4_frag.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079587046/icmp.o: ../../../../../cyclone_tcp/ipv4/icmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587046" 
	@${RM} ${OBJECTDIR}/_ext/1079587046/icmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587046/icmp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587046/icmp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587046/icmp.o.d" -o ${OBJECTDIR}/_ext/1079587046/icmp.o ../../../../../cyclone_tcp/ipv4/icmp.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079587046/igmp.o: ../../../../../cyclone_tcp/ipv4/igmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587046" 
	@${RM} ${OBJECTDIR}/_ext/1079587046/igmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587046/igmp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587046/igmp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587046/igmp.o.d" -o ${OBJECTDIR}/_ext/1079587046/igmp.o ../../../../../cyclone_tcp/ipv4/igmp.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079587044/ipv6.o: ../../../../../cyclone_tcp/ipv6/ipv6.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ipv6.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ipv6.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/ipv6.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/ipv6.o.d" -o ${OBJECTDIR}/_ext/1079587044/ipv6.o ../../../../../cyclone_tcp/ipv6/ipv6.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079587044/ipv6_frag.o: ../../../../../cyclone_tcp/ipv6/ipv6_frag.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ipv6_frag.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ipv6_frag.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/ipv6_frag.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/ipv6_frag.o.d" -o ${OBJECTDIR}/_ext/1079587044/ipv6_frag.o ../../../../../cyclone_tcp/ipv6/ipv6_frag.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079587044/ipv6_misc.o: ../../../../../cyclone_tcp/ipv6/ipv6_misc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ipv6_misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ipv6_misc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/ipv6_misc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/ipv6_misc.o.d" -o ${OBJECTDIR}/_ext/1079587044/ipv6_misc.o ../../../../../cyclone_tcp/ipv6/ipv6_misc.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079587044/ipv6_pmtu.o: ../../../../../cyclone_tcp/ipv6/ipv6_pmtu.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ipv6_pmtu.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ipv6_pmtu.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/ipv6_pmtu.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/ipv6_pmtu.o.d" -o ${OBJECTDIR}/_ext/1079587044/ipv6_pmtu.o ../../../../../cyclone_tcp/ipv6/ipv6_pmtu.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079587044/icmpv6.o: ../../../../../cyclone_tcp/ipv6/icmpv6.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/icmpv6.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/icmpv6.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/icmpv6.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/icmpv6.o.d" -o ${OBJECTDIR}/_ext/1079587044/icmpv6.o ../../../../../cyclone_tcp/ipv6/icmpv6.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079587044/mld.o: ../../../../../cyclone_tcp/ipv6/mld.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/mld.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/mld.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/mld.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/mld.o.d" -o ${OBJECTDIR}/_ext/1079587044/mld.o ../../../../../cyclone_tcp/ipv6/mld.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079587044/ndp.o: ../../../../../cyclone_tcp/ipv6/ndp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ndp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ndp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/ndp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/ndp.o.d" -o ${OBJECTDIR}/_ext/1079587044/ndp.o ../../../../../cyclone_tcp/ipv6/ndp.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079587044/ndp_cache.o: ../../../../../cyclone_tcp/ipv6/ndp_cache.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ndp_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ndp_cache.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/ndp_cache.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/ndp_cache.o.d" -o ${OBJECTDIR}/_ext/1079587044/ndp_cache.o ../../../../../cyclone_tcp/ipv6/ndp_cache.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079587044/ndp_misc.o: ../../../../../cyclone_tcp/ipv6/ndp_misc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ndp_misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ndp_misc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/ndp_misc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/ndp_misc.o.d" -o ${OBJECTDIR}/_ext/1079587044/ndp_misc.o ../../../../../cyclone_tcp/ipv6/ndp_misc.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079587044/slaac.o: ../../../../../cyclone_tcp/ipv6/slaac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/slaac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/slaac.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/slaac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/slaac.o.d" -o ${OBJECTDIR}/_ext/1079587044/slaac.o ../../../../../cyclone_tcp/ipv6/slaac.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079766828/ip.o: ../../../../../cyclone_tcp/core/ip.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/ip.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/ip.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/ip.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/ip.o.d" -o ${OBJECTDIR}/_ext/1079766828/ip.o ../../../../../cyclone_tcp/core/ip.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079766828/tcp.o: ../../../../../cyclone_tcp/core/tcp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/tcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/tcp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/tcp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/tcp.o.d" -o ${OBJECTDIR}/_ext/1079766828/tcp.o ../../../../../cyclone_tcp/core/tcp.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079766828/tcp_fsm.o: ../../../../../cyclone_tcp/core/tcp_fsm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/tcp_fsm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/tcp_fsm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/tcp_fsm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/tcp_fsm.o.d" -o ${OBJECTDIR}/_ext/1079766828/tcp_fsm.o ../../../../../cyclone_tcp/core/tcp_fsm.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079766828/tcp_misc.o: ../../../../../cyclone_tcp/core/tcp_misc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/tcp_misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/tcp_misc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/tcp_misc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/tcp_misc.o.d" -o ${OBJECTDIR}/_ext/1079766828/tcp_misc.o ../../../../../cyclone_tcp/core/tcp_misc.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079766828/tcp_timer.o: ../../../../../cyclone_tcp/core/tcp_timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/tcp_timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/tcp_timer.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/tcp_timer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/tcp_timer.o.d" -o ${OBJECTDIR}/_ext/1079766828/tcp_timer.o ../../../../../cyclone_tcp/core/tcp_timer.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079766828/udp.o: ../../../../../cyclone_tcp/core/udp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/udp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/udp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/udp.o.d" -o ${OBJECTDIR}/_ext/1079766828/udp.o ../../../../../cyclone_tcp/core/udp.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079766828/socket.o: ../../../../../cyclone_tcp/core/socket.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/socket.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/socket.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/socket.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/socket.o.d" -o ${OBJECTDIR}/_ext/1079766828/socket.o ../../../../../cyclone_tcp/core/socket.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079766828/bsd_socket.o: ../../../../../cyclone_tcp/core/bsd_socket.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/bsd_socket.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/bsd_socket.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/bsd_socket.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/bsd_socket.o.d" -o ${OBJECTDIR}/_ext/1079766828/bsd_socket.o ../../../../../cyclone_tcp/core/bsd_socket.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079766828/raw_socket.o: ../../../../../cyclone_tcp/core/raw_socket.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/raw_socket.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/raw_socket.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/raw_socket.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/raw_socket.o.d" -o ${OBJECTDIR}/_ext/1079766828/raw_socket.o ../../../../../cyclone_tcp/core/raw_socket.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/242264404/dns_cache.o: ../../../../../cyclone_tcp/dns/dns_cache.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/242264404" 
	@${RM} ${OBJECTDIR}/_ext/242264404/dns_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/242264404/dns_cache.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/242264404/dns_cache.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/242264404/dns_cache.o.d" -o ${OBJECTDIR}/_ext/242264404/dns_cache.o ../../../../../cyclone_tcp/dns/dns_cache.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/242264404/dns_client.o: ../../../../../cyclone_tcp/dns/dns_client.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/242264404" 
	@${RM} ${OBJECTDIR}/_ext/242264404/dns_client.o.d 
	@${RM} ${OBJECTDIR}/_ext/242264404/dns_client.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/242264404/dns_client.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/242264404/dns_client.o.d" -o ${OBJECTDIR}/_ext/242264404/dns_client.o ../../../../../cyclone_tcp/dns/dns_client.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/242264404/dns_common.o: ../../../../../cyclone_tcp/dns/dns_common.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/242264404" 
	@${RM} ${OBJECTDIR}/_ext/242264404/dns_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/242264404/dns_common.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/242264404/dns_common.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/242264404/dns_common.o.d" -o ${OBJECTDIR}/_ext/242264404/dns_common.o ../../../../../cyclone_tcp/dns/dns_common.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/242264404/dns_debug.o: ../../../../../cyclone_tcp/dns/dns_debug.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/242264404" 
	@${RM} ${OBJECTDIR}/_ext/242264404/dns_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/242264404/dns_debug.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/242264404/dns_debug.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/242264404/dns_debug.o.d" -o ${OBJECTDIR}/_ext/242264404/dns_debug.o ../../../../../cyclone_tcp/dns/dns_debug.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079479599/mdns_client.o: ../../../../../cyclone_tcp/mdns/mdns_client.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079479599" 
	@${RM} ${OBJECTDIR}/_ext/1079479599/mdns_client.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079479599/mdns_client.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079479599/mdns_client.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079479599/mdns_client.o.d" -o ${OBJECTDIR}/_ext/1079479599/mdns_client.o ../../../../../cyclone_tcp/mdns/mdns_client.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079479599/mdns_responder.o: ../../../../../cyclone_tcp/mdns/mdns_responder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079479599" 
	@${RM} ${OBJECTDIR}/_ext/1079479599/mdns_responder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079479599/mdns_responder.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079479599/mdns_responder.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079479599/mdns_responder.o.d" -o ${OBJECTDIR}/_ext/1079479599/mdns_responder.o ../../../../../cyclone_tcp/mdns/mdns_responder.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079479599/mdns_common.o: ../../../../../cyclone_tcp/mdns/mdns_common.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079479599" 
	@${RM} ${OBJECTDIR}/_ext/1079479599/mdns_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079479599/mdns_common.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079479599/mdns_common.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079479599/mdns_common.o.d" -o ${OBJECTDIR}/_ext/1079479599/mdns_common.o ../../../../../cyclone_tcp/mdns/mdns_common.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1435316685/nbns_client.o: ../../../../../cyclone_tcp/netbios/nbns_client.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1435316685" 
	@${RM} ${OBJECTDIR}/_ext/1435316685/nbns_client.o.d 
	@${RM} ${OBJECTDIR}/_ext/1435316685/nbns_client.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1435316685/nbns_client.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1435316685/nbns_client.o.d" -o ${OBJECTDIR}/_ext/1435316685/nbns_client.o ../../../../../cyclone_tcp/netbios/nbns_client.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1435316685/nbns_responder.o: ../../../../../cyclone_tcp/netbios/nbns_responder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1435316685" 
	@${RM} ${OBJECTDIR}/_ext/1435316685/nbns_responder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1435316685/nbns_responder.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1435316685/nbns_responder.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1435316685/nbns_responder.o.d" -o ${OBJECTDIR}/_ext/1435316685/nbns_responder.o ../../../../../cyclone_tcp/netbios/nbns_responder.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1435316685/nbns_common.o: ../../../../../cyclone_tcp/netbios/nbns_common.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1435316685" 
	@${RM} ${OBJECTDIR}/_ext/1435316685/nbns_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/1435316685/nbns_common.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1435316685/nbns_common.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1435316685/nbns_common.o.d" -o ${OBJECTDIR}/_ext/1435316685/nbns_common.o ../../../../../cyclone_tcp/netbios/nbns_common.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079744218/dhcp_client.o: ../../../../../cyclone_tcp/dhcp/dhcp_client.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079744218" 
	@${RM} ${OBJECTDIR}/_ext/1079744218/dhcp_client.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079744218/dhcp_client.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079744218/dhcp_client.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079744218/dhcp_client.o.d" -o ${OBJECTDIR}/_ext/1079744218/dhcp_client.o ../../../../../cyclone_tcp/dhcp/dhcp_client.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079744218/dhcp_common.o: ../../../../../cyclone_tcp/dhcp/dhcp_common.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079744218" 
	@${RM} ${OBJECTDIR}/_ext/1079744218/dhcp_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079744218/dhcp_common.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079744218/dhcp_common.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079744218/dhcp_common.o.d" -o ${OBJECTDIR}/_ext/1079744218/dhcp_common.o ../../../../../cyclone_tcp/dhcp/dhcp_common.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079744218/dhcp_debug.o: ../../../../../cyclone_tcp/dhcp/dhcp_debug.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079744218" 
	@${RM} ${OBJECTDIR}/_ext/1079744218/dhcp_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079744218/dhcp_debug.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079744218/dhcp_debug.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079744218/dhcp_debug.o.d" -o ${OBJECTDIR}/_ext/1079744218/dhcp_debug.o ../../../../../cyclone_tcp/dhcp/dhcp_debug.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/242266509/ftp_server.o: ../../../../../cyclone_tcp/ftp/ftp_server.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/242266509" 
	@${RM} ${OBJECTDIR}/_ext/242266509/ftp_server.o.d 
	@${RM} ${OBJECTDIR}/_ext/242266509/ftp_server.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/242266509/ftp_server.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/242266509/ftp_server.o.d" -o ${OBJECTDIR}/_ext/242266509/ftp_server.o ../../../../../cyclone_tcp/ftp/ftp_server.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/242266509/ftp_server_events.o: ../../../../../cyclone_tcp/ftp/ftp_server_events.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/242266509" 
	@${RM} ${OBJECTDIR}/_ext/242266509/ftp_server_events.o.d 
	@${RM} ${OBJECTDIR}/_ext/242266509/ftp_server_events.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/242266509/ftp_server_events.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/242266509/ftp_server_events.o.d" -o ${OBJECTDIR}/_ext/242266509/ftp_server_events.o ../../../../../cyclone_tcp/ftp/ftp_server_events.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/242266509/ftp_server_commands.o: ../../../../../cyclone_tcp/ftp/ftp_server_commands.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/242266509" 
	@${RM} ${OBJECTDIR}/_ext/242266509/ftp_server_commands.o.d 
	@${RM} ${OBJECTDIR}/_ext/242266509/ftp_server_commands.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/242266509/ftp_server_commands.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/242266509/ftp_server_commands.o.d" -o ${OBJECTDIR}/_ext/242266509/ftp_server_commands.o ../../../../../cyclone_tcp/ftp/ftp_server_commands.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/242266509/ftp_server_misc.o: ../../../../../cyclone_tcp/ftp/ftp_server_misc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/242266509" 
	@${RM} ${OBJECTDIR}/_ext/242266509/ftp_server_misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/242266509/ftp_server_misc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/242266509/ftp_server_misc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/242266509/ftp_server_misc.o.d" -o ${OBJECTDIR}/_ext/242266509/ftp_server_misc.o ../../../../../cyclone_tcp/ftp/ftp_server_misc.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1128343338/port.o: ../../../../common/freertos/portable/mplab/pic32mz/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1128343338" 
	@${RM} ${OBJECTDIR}/_ext/1128343338/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1128343338/port.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1128343338/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1128343338/port.o.d" -o ${OBJECTDIR}/_ext/1128343338/port.o ../../../../common/freertos/portable/mplab/pic32mz/port.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/55695242/croutine.o: ../../../../common/freertos/croutine.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/55695242" 
	@${RM} ${OBJECTDIR}/_ext/55695242/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/55695242/croutine.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/55695242/croutine.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/55695242/croutine.o.d" -o ${OBJECTDIR}/_ext/55695242/croutine.o ../../../../common/freertos/croutine.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/55695242/list.o: ../../../../common/freertos/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/55695242" 
	@${RM} ${OBJECTDIR}/_ext/55695242/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/55695242/list.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/55695242/list.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/55695242/list.o.d" -o ${OBJECTDIR}/_ext/55695242/list.o ../../../../common/freertos/list.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/55695242/queue.o: ../../../../common/freertos/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/55695242" 
	@${RM} ${OBJECTDIR}/_ext/55695242/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/55695242/queue.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/55695242/queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/55695242/queue.o.d" -o ${OBJECTDIR}/_ext/55695242/queue.o ../../../../common/freertos/queue.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/55695242/tasks.o: ../../../../common/freertos/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/55695242" 
	@${RM} ${OBJECTDIR}/_ext/55695242/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/55695242/tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/55695242/tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/55695242/tasks.o.d" -o ${OBJECTDIR}/_ext/55695242/tasks.o ../../../../common/freertos/tasks.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/55695242/timers.o: ../../../../common/freertos/timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/55695242" 
	@${RM} ${OBJECTDIR}/_ext/55695242/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/55695242/timers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/55695242/timers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/55695242/timers.o.d" -o ${OBJECTDIR}/_ext/55695242/timers.o ../../../../common/freertos/timers.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2075018599/heap_3.o: ../../../../common/freertos/portable/memmang/heap_3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2075018599" 
	@${RM} ${OBJECTDIR}/_ext/2075018599/heap_3.o.d 
	@${RM} ${OBJECTDIR}/_ext/2075018599/heap_3.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2075018599/heap_3.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/2075018599/heap_3.o.d" -o ${OBJECTDIR}/_ext/2075018599/heap_3.o ../../../../common/freertos/portable/memmang/heap_3.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2101648322/ff.o: ../../../../common/fatfs/ff.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2101648322" 
	@${RM} ${OBJECTDIR}/_ext/2101648322/ff.o.d 
	@${RM} ${OBJECTDIR}/_ext/2101648322/ff.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2101648322/ff.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/2101648322/ff.o.d" -o ${OBJECTDIR}/_ext/2101648322/ff.o ../../../../common/fatfs/ff.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1461350242/unicode.o: ../../../../common/fatfs/option/unicode.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1461350242" 
	@${RM} ${OBJECTDIR}/_ext/1461350242/unicode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1461350242/unicode.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1461350242/unicode.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1461350242/unicode.o.d" -o ${OBJECTDIR}/_ext/1461350242/unicode.o ../../../../common/fatfs/option/unicode.c      $(COMPARISON_BUILD) 
	
else
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/fatfs_drv.o: ../src/fatfs_drv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/fatfs_drv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/fatfs_drv.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/fatfs_drv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1360937237/fatfs_drv.o.d" -o ${OBJECTDIR}/_ext/1360937237/fatfs_drv.o ../src/fatfs_drv.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/debug.o: ../src/debug.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/debug.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/debug.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1360937237/debug.o.d" -o ${OBJECTDIR}/_ext/1360937237/debug.o ../src/debug.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/sprintf.o: ../src/sprintf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/sprintf.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/sprintf.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/sprintf.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1360937237/sprintf.o.d" -o ${OBJECTDIR}/_ext/1360937237/sprintf.o ../src/sprintf.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/strtok_r.o: ../src/strtok_r.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/strtok_r.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/strtok_r.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/strtok_r.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1360937237/strtok_r.o.d" -o ${OBJECTDIR}/_ext/1360937237/strtok_r.o ../src/strtok_r.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1360937237/ext_int_driver.o: ../src/ext_int_driver.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ext_int_driver.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/ext_int_driver.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/ext_int_driver.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1360937237/ext_int_driver.o.d" -o ${OBJECTDIR}/_ext/1360937237/ext_int_driver.o ../src/ext_int_driver.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/360186330/endian.o: ../../../../../common/endian.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/360186330" 
	@${RM} ${OBJECTDIR}/_ext/360186330/endian.o.d 
	@${RM} ${OBJECTDIR}/_ext/360186330/endian.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/360186330/endian.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/360186330/endian.o.d" -o ${OBJECTDIR}/_ext/360186330/endian.o ../../../../../common/endian.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/360186330/os_port_freertos.o: ../../../../../common/os_port_freertos.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/360186330" 
	@${RM} ${OBJECTDIR}/_ext/360186330/os_port_freertos.o.d 
	@${RM} ${OBJECTDIR}/_ext/360186330/os_port_freertos.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/360186330/os_port_freertos.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/360186330/os_port_freertos.o.d" -o ${OBJECTDIR}/_ext/360186330/os_port_freertos.o ../../../../../common/os_port_freertos.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/360186330/fs_port_fatfs.o: ../../../../../common/fs_port_fatfs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/360186330" 
	@${RM} ${OBJECTDIR}/_ext/360186330/fs_port_fatfs.o.d 
	@${RM} ${OBJECTDIR}/_ext/360186330/fs_port_fatfs.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/360186330/fs_port_fatfs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/360186330/fs_port_fatfs.o.d" -o ${OBJECTDIR}/_ext/360186330/fs_port_fatfs.o ../../../../../common/fs_port_fatfs.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/360186330/date_time.o: ../../../../../common/date_time.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/360186330" 
	@${RM} ${OBJECTDIR}/_ext/360186330/date_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/360186330/date_time.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/360186330/date_time.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/360186330/date_time.o.d" -o ${OBJECTDIR}/_ext/360186330/date_time.o ../../../../../common/date_time.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/360186330/str.o: ../../../../../common/str.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/360186330" 
	@${RM} ${OBJECTDIR}/_ext/360186330/str.o.d 
	@${RM} ${OBJECTDIR}/_ext/360186330/str.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/360186330/str.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/360186330/str.o.d" -o ${OBJECTDIR}/_ext/360186330/str.o ../../../../../common/str.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/360186330/path.o: ../../../../../common/path.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/360186330" 
	@${RM} ${OBJECTDIR}/_ext/360186330/path.o.d 
	@${RM} ${OBJECTDIR}/_ext/360186330/path.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/360186330/path.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/360186330/path.o.d" -o ${OBJECTDIR}/_ext/360186330/path.o ../../../../../common/path.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079766828/net.o: ../../../../../cyclone_tcp/core/net.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/net.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/net.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/net.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/net.o.d" -o ${OBJECTDIR}/_ext/1079766828/net.o ../../../../../cyclone_tcp/core/net.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079766828/net_mem.o: ../../../../../cyclone_tcp/core/net_mem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/net_mem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/net_mem.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/net_mem.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/net_mem.o.d" -o ${OBJECTDIR}/_ext/1079766828/net_mem.o ../../../../../cyclone_tcp/core/net_mem.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1357806602/pic32mz_eth.o: ../../../../../cyclone_tcp/drivers/pic32mz_eth.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1357806602" 
	@${RM} ${OBJECTDIR}/_ext/1357806602/pic32mz_eth.o.d 
	@${RM} ${OBJECTDIR}/_ext/1357806602/pic32mz_eth.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1357806602/pic32mz_eth.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1357806602/pic32mz_eth.o.d" -o ${OBJECTDIR}/_ext/1357806602/pic32mz_eth.o ../../../../../cyclone_tcp/drivers/pic32mz_eth.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1357806602/lan8740.o: ../../../../../cyclone_tcp/drivers/lan8740.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1357806602" 
	@${RM} ${OBJECTDIR}/_ext/1357806602/lan8740.o.d 
	@${RM} ${OBJECTDIR}/_ext/1357806602/lan8740.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1357806602/lan8740.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1357806602/lan8740.o.d" -o ${OBJECTDIR}/_ext/1357806602/lan8740.o ../../../../../cyclone_tcp/drivers/lan8740.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079766828/nic.o: ../../../../../cyclone_tcp/core/nic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/nic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/nic.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/nic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/nic.o.d" -o ${OBJECTDIR}/_ext/1079766828/nic.o ../../../../../cyclone_tcp/core/nic.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079766828/ethernet.o: ../../../../../cyclone_tcp/core/ethernet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/ethernet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/ethernet.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/ethernet.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/ethernet.o.d" -o ${OBJECTDIR}/_ext/1079766828/ethernet.o ../../../../../cyclone_tcp/core/ethernet.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079587046/arp.o: ../../../../../cyclone_tcp/ipv4/arp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587046" 
	@${RM} ${OBJECTDIR}/_ext/1079587046/arp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587046/arp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587046/arp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587046/arp.o.d" -o ${OBJECTDIR}/_ext/1079587046/arp.o ../../../../../cyclone_tcp/ipv4/arp.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079587046/ipv4.o: ../../../../../cyclone_tcp/ipv4/ipv4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587046" 
	@${RM} ${OBJECTDIR}/_ext/1079587046/ipv4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587046/ipv4.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587046/ipv4.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587046/ipv4.o.d" -o ${OBJECTDIR}/_ext/1079587046/ipv4.o ../../../../../cyclone_tcp/ipv4/ipv4.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079587046/ipv4_frag.o: ../../../../../cyclone_tcp/ipv4/ipv4_frag.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587046" 
	@${RM} ${OBJECTDIR}/_ext/1079587046/ipv4_frag.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587046/ipv4_frag.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587046/ipv4_frag.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587046/ipv4_frag.o.d" -o ${OBJECTDIR}/_ext/1079587046/ipv4_frag.o ../../../../../cyclone_tcp/ipv4/ipv4_frag.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079587046/icmp.o: ../../../../../cyclone_tcp/ipv4/icmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587046" 
	@${RM} ${OBJECTDIR}/_ext/1079587046/icmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587046/icmp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587046/icmp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587046/icmp.o.d" -o ${OBJECTDIR}/_ext/1079587046/icmp.o ../../../../../cyclone_tcp/ipv4/icmp.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079587046/igmp.o: ../../../../../cyclone_tcp/ipv4/igmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587046" 
	@${RM} ${OBJECTDIR}/_ext/1079587046/igmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587046/igmp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587046/igmp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587046/igmp.o.d" -o ${OBJECTDIR}/_ext/1079587046/igmp.o ../../../../../cyclone_tcp/ipv4/igmp.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079587044/ipv6.o: ../../../../../cyclone_tcp/ipv6/ipv6.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ipv6.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ipv6.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/ipv6.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/ipv6.o.d" -o ${OBJECTDIR}/_ext/1079587044/ipv6.o ../../../../../cyclone_tcp/ipv6/ipv6.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079587044/ipv6_frag.o: ../../../../../cyclone_tcp/ipv6/ipv6_frag.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ipv6_frag.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ipv6_frag.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/ipv6_frag.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/ipv6_frag.o.d" -o ${OBJECTDIR}/_ext/1079587044/ipv6_frag.o ../../../../../cyclone_tcp/ipv6/ipv6_frag.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079587044/ipv6_misc.o: ../../../../../cyclone_tcp/ipv6/ipv6_misc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ipv6_misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ipv6_misc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/ipv6_misc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/ipv6_misc.o.d" -o ${OBJECTDIR}/_ext/1079587044/ipv6_misc.o ../../../../../cyclone_tcp/ipv6/ipv6_misc.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079587044/ipv6_pmtu.o: ../../../../../cyclone_tcp/ipv6/ipv6_pmtu.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ipv6_pmtu.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ipv6_pmtu.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/ipv6_pmtu.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/ipv6_pmtu.o.d" -o ${OBJECTDIR}/_ext/1079587044/ipv6_pmtu.o ../../../../../cyclone_tcp/ipv6/ipv6_pmtu.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079587044/icmpv6.o: ../../../../../cyclone_tcp/ipv6/icmpv6.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/icmpv6.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/icmpv6.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/icmpv6.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/icmpv6.o.d" -o ${OBJECTDIR}/_ext/1079587044/icmpv6.o ../../../../../cyclone_tcp/ipv6/icmpv6.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079587044/mld.o: ../../../../../cyclone_tcp/ipv6/mld.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/mld.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/mld.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/mld.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/mld.o.d" -o ${OBJECTDIR}/_ext/1079587044/mld.o ../../../../../cyclone_tcp/ipv6/mld.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079587044/ndp.o: ../../../../../cyclone_tcp/ipv6/ndp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ndp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ndp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/ndp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/ndp.o.d" -o ${OBJECTDIR}/_ext/1079587044/ndp.o ../../../../../cyclone_tcp/ipv6/ndp.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079587044/ndp_cache.o: ../../../../../cyclone_tcp/ipv6/ndp_cache.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ndp_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ndp_cache.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/ndp_cache.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/ndp_cache.o.d" -o ${OBJECTDIR}/_ext/1079587044/ndp_cache.o ../../../../../cyclone_tcp/ipv6/ndp_cache.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079587044/ndp_misc.o: ../../../../../cyclone_tcp/ipv6/ndp_misc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ndp_misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/ndp_misc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/ndp_misc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/ndp_misc.o.d" -o ${OBJECTDIR}/_ext/1079587044/ndp_misc.o ../../../../../cyclone_tcp/ipv6/ndp_misc.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079587044/slaac.o: ../../../../../cyclone_tcp/ipv6/slaac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079587044" 
	@${RM} ${OBJECTDIR}/_ext/1079587044/slaac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079587044/slaac.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079587044/slaac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079587044/slaac.o.d" -o ${OBJECTDIR}/_ext/1079587044/slaac.o ../../../../../cyclone_tcp/ipv6/slaac.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079766828/ip.o: ../../../../../cyclone_tcp/core/ip.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/ip.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/ip.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/ip.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/ip.o.d" -o ${OBJECTDIR}/_ext/1079766828/ip.o ../../../../../cyclone_tcp/core/ip.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079766828/tcp.o: ../../../../../cyclone_tcp/core/tcp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/tcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/tcp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/tcp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/tcp.o.d" -o ${OBJECTDIR}/_ext/1079766828/tcp.o ../../../../../cyclone_tcp/core/tcp.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079766828/tcp_fsm.o: ../../../../../cyclone_tcp/core/tcp_fsm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/tcp_fsm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/tcp_fsm.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/tcp_fsm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/tcp_fsm.o.d" -o ${OBJECTDIR}/_ext/1079766828/tcp_fsm.o ../../../../../cyclone_tcp/core/tcp_fsm.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079766828/tcp_misc.o: ../../../../../cyclone_tcp/core/tcp_misc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/tcp_misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/tcp_misc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/tcp_misc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/tcp_misc.o.d" -o ${OBJECTDIR}/_ext/1079766828/tcp_misc.o ../../../../../cyclone_tcp/core/tcp_misc.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079766828/tcp_timer.o: ../../../../../cyclone_tcp/core/tcp_timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/tcp_timer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/tcp_timer.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/tcp_timer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/tcp_timer.o.d" -o ${OBJECTDIR}/_ext/1079766828/tcp_timer.o ../../../../../cyclone_tcp/core/tcp_timer.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079766828/udp.o: ../../../../../cyclone_tcp/core/udp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/udp.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/udp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/udp.o.d" -o ${OBJECTDIR}/_ext/1079766828/udp.o ../../../../../cyclone_tcp/core/udp.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079766828/socket.o: ../../../../../cyclone_tcp/core/socket.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/socket.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/socket.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/socket.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/socket.o.d" -o ${OBJECTDIR}/_ext/1079766828/socket.o ../../../../../cyclone_tcp/core/socket.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079766828/bsd_socket.o: ../../../../../cyclone_tcp/core/bsd_socket.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/bsd_socket.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/bsd_socket.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/bsd_socket.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/bsd_socket.o.d" -o ${OBJECTDIR}/_ext/1079766828/bsd_socket.o ../../../../../cyclone_tcp/core/bsd_socket.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079766828/raw_socket.o: ../../../../../cyclone_tcp/core/raw_socket.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079766828" 
	@${RM} ${OBJECTDIR}/_ext/1079766828/raw_socket.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079766828/raw_socket.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079766828/raw_socket.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079766828/raw_socket.o.d" -o ${OBJECTDIR}/_ext/1079766828/raw_socket.o ../../../../../cyclone_tcp/core/raw_socket.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/242264404/dns_cache.o: ../../../../../cyclone_tcp/dns/dns_cache.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/242264404" 
	@${RM} ${OBJECTDIR}/_ext/242264404/dns_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/242264404/dns_cache.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/242264404/dns_cache.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/242264404/dns_cache.o.d" -o ${OBJECTDIR}/_ext/242264404/dns_cache.o ../../../../../cyclone_tcp/dns/dns_cache.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/242264404/dns_client.o: ../../../../../cyclone_tcp/dns/dns_client.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/242264404" 
	@${RM} ${OBJECTDIR}/_ext/242264404/dns_client.o.d 
	@${RM} ${OBJECTDIR}/_ext/242264404/dns_client.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/242264404/dns_client.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/242264404/dns_client.o.d" -o ${OBJECTDIR}/_ext/242264404/dns_client.o ../../../../../cyclone_tcp/dns/dns_client.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/242264404/dns_common.o: ../../../../../cyclone_tcp/dns/dns_common.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/242264404" 
	@${RM} ${OBJECTDIR}/_ext/242264404/dns_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/242264404/dns_common.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/242264404/dns_common.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/242264404/dns_common.o.d" -o ${OBJECTDIR}/_ext/242264404/dns_common.o ../../../../../cyclone_tcp/dns/dns_common.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/242264404/dns_debug.o: ../../../../../cyclone_tcp/dns/dns_debug.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/242264404" 
	@${RM} ${OBJECTDIR}/_ext/242264404/dns_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/242264404/dns_debug.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/242264404/dns_debug.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/242264404/dns_debug.o.d" -o ${OBJECTDIR}/_ext/242264404/dns_debug.o ../../../../../cyclone_tcp/dns/dns_debug.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079479599/mdns_client.o: ../../../../../cyclone_tcp/mdns/mdns_client.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079479599" 
	@${RM} ${OBJECTDIR}/_ext/1079479599/mdns_client.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079479599/mdns_client.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079479599/mdns_client.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079479599/mdns_client.o.d" -o ${OBJECTDIR}/_ext/1079479599/mdns_client.o ../../../../../cyclone_tcp/mdns/mdns_client.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079479599/mdns_responder.o: ../../../../../cyclone_tcp/mdns/mdns_responder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079479599" 
	@${RM} ${OBJECTDIR}/_ext/1079479599/mdns_responder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079479599/mdns_responder.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079479599/mdns_responder.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079479599/mdns_responder.o.d" -o ${OBJECTDIR}/_ext/1079479599/mdns_responder.o ../../../../../cyclone_tcp/mdns/mdns_responder.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079479599/mdns_common.o: ../../../../../cyclone_tcp/mdns/mdns_common.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079479599" 
	@${RM} ${OBJECTDIR}/_ext/1079479599/mdns_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079479599/mdns_common.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079479599/mdns_common.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079479599/mdns_common.o.d" -o ${OBJECTDIR}/_ext/1079479599/mdns_common.o ../../../../../cyclone_tcp/mdns/mdns_common.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1435316685/nbns_client.o: ../../../../../cyclone_tcp/netbios/nbns_client.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1435316685" 
	@${RM} ${OBJECTDIR}/_ext/1435316685/nbns_client.o.d 
	@${RM} ${OBJECTDIR}/_ext/1435316685/nbns_client.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1435316685/nbns_client.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1435316685/nbns_client.o.d" -o ${OBJECTDIR}/_ext/1435316685/nbns_client.o ../../../../../cyclone_tcp/netbios/nbns_client.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1435316685/nbns_responder.o: ../../../../../cyclone_tcp/netbios/nbns_responder.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1435316685" 
	@${RM} ${OBJECTDIR}/_ext/1435316685/nbns_responder.o.d 
	@${RM} ${OBJECTDIR}/_ext/1435316685/nbns_responder.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1435316685/nbns_responder.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1435316685/nbns_responder.o.d" -o ${OBJECTDIR}/_ext/1435316685/nbns_responder.o ../../../../../cyclone_tcp/netbios/nbns_responder.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1435316685/nbns_common.o: ../../../../../cyclone_tcp/netbios/nbns_common.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1435316685" 
	@${RM} ${OBJECTDIR}/_ext/1435316685/nbns_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/1435316685/nbns_common.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1435316685/nbns_common.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1435316685/nbns_common.o.d" -o ${OBJECTDIR}/_ext/1435316685/nbns_common.o ../../../../../cyclone_tcp/netbios/nbns_common.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079744218/dhcp_client.o: ../../../../../cyclone_tcp/dhcp/dhcp_client.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079744218" 
	@${RM} ${OBJECTDIR}/_ext/1079744218/dhcp_client.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079744218/dhcp_client.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079744218/dhcp_client.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079744218/dhcp_client.o.d" -o ${OBJECTDIR}/_ext/1079744218/dhcp_client.o ../../../../../cyclone_tcp/dhcp/dhcp_client.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079744218/dhcp_common.o: ../../../../../cyclone_tcp/dhcp/dhcp_common.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079744218" 
	@${RM} ${OBJECTDIR}/_ext/1079744218/dhcp_common.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079744218/dhcp_common.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079744218/dhcp_common.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079744218/dhcp_common.o.d" -o ${OBJECTDIR}/_ext/1079744218/dhcp_common.o ../../../../../cyclone_tcp/dhcp/dhcp_common.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1079744218/dhcp_debug.o: ../../../../../cyclone_tcp/dhcp/dhcp_debug.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1079744218" 
	@${RM} ${OBJECTDIR}/_ext/1079744218/dhcp_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/1079744218/dhcp_debug.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1079744218/dhcp_debug.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1079744218/dhcp_debug.o.d" -o ${OBJECTDIR}/_ext/1079744218/dhcp_debug.o ../../../../../cyclone_tcp/dhcp/dhcp_debug.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/242266509/ftp_server.o: ../../../../../cyclone_tcp/ftp/ftp_server.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/242266509" 
	@${RM} ${OBJECTDIR}/_ext/242266509/ftp_server.o.d 
	@${RM} ${OBJECTDIR}/_ext/242266509/ftp_server.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/242266509/ftp_server.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/242266509/ftp_server.o.d" -o ${OBJECTDIR}/_ext/242266509/ftp_server.o ../../../../../cyclone_tcp/ftp/ftp_server.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/242266509/ftp_server_events.o: ../../../../../cyclone_tcp/ftp/ftp_server_events.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/242266509" 
	@${RM} ${OBJECTDIR}/_ext/242266509/ftp_server_events.o.d 
	@${RM} ${OBJECTDIR}/_ext/242266509/ftp_server_events.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/242266509/ftp_server_events.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/242266509/ftp_server_events.o.d" -o ${OBJECTDIR}/_ext/242266509/ftp_server_events.o ../../../../../cyclone_tcp/ftp/ftp_server_events.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/242266509/ftp_server_commands.o: ../../../../../cyclone_tcp/ftp/ftp_server_commands.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/242266509" 
	@${RM} ${OBJECTDIR}/_ext/242266509/ftp_server_commands.o.d 
	@${RM} ${OBJECTDIR}/_ext/242266509/ftp_server_commands.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/242266509/ftp_server_commands.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/242266509/ftp_server_commands.o.d" -o ${OBJECTDIR}/_ext/242266509/ftp_server_commands.o ../../../../../cyclone_tcp/ftp/ftp_server_commands.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/242266509/ftp_server_misc.o: ../../../../../cyclone_tcp/ftp/ftp_server_misc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/242266509" 
	@${RM} ${OBJECTDIR}/_ext/242266509/ftp_server_misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/242266509/ftp_server_misc.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/242266509/ftp_server_misc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/242266509/ftp_server_misc.o.d" -o ${OBJECTDIR}/_ext/242266509/ftp_server_misc.o ../../../../../cyclone_tcp/ftp/ftp_server_misc.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1128343338/port.o: ../../../../common/freertos/portable/mplab/pic32mz/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1128343338" 
	@${RM} ${OBJECTDIR}/_ext/1128343338/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1128343338/port.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1128343338/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1128343338/port.o.d" -o ${OBJECTDIR}/_ext/1128343338/port.o ../../../../common/freertos/portable/mplab/pic32mz/port.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/55695242/croutine.o: ../../../../common/freertos/croutine.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/55695242" 
	@${RM} ${OBJECTDIR}/_ext/55695242/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/55695242/croutine.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/55695242/croutine.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/55695242/croutine.o.d" -o ${OBJECTDIR}/_ext/55695242/croutine.o ../../../../common/freertos/croutine.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/55695242/list.o: ../../../../common/freertos/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/55695242" 
	@${RM} ${OBJECTDIR}/_ext/55695242/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/55695242/list.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/55695242/list.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/55695242/list.o.d" -o ${OBJECTDIR}/_ext/55695242/list.o ../../../../common/freertos/list.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/55695242/queue.o: ../../../../common/freertos/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/55695242" 
	@${RM} ${OBJECTDIR}/_ext/55695242/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/55695242/queue.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/55695242/queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/55695242/queue.o.d" -o ${OBJECTDIR}/_ext/55695242/queue.o ../../../../common/freertos/queue.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/55695242/tasks.o: ../../../../common/freertos/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/55695242" 
	@${RM} ${OBJECTDIR}/_ext/55695242/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/55695242/tasks.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/55695242/tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/55695242/tasks.o.d" -o ${OBJECTDIR}/_ext/55695242/tasks.o ../../../../common/freertos/tasks.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/55695242/timers.o: ../../../../common/freertos/timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/55695242" 
	@${RM} ${OBJECTDIR}/_ext/55695242/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/55695242/timers.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/55695242/timers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/55695242/timers.o.d" -o ${OBJECTDIR}/_ext/55695242/timers.o ../../../../common/freertos/timers.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2075018599/heap_3.o: ../../../../common/freertos/portable/memmang/heap_3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2075018599" 
	@${RM} ${OBJECTDIR}/_ext/2075018599/heap_3.o.d 
	@${RM} ${OBJECTDIR}/_ext/2075018599/heap_3.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2075018599/heap_3.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/2075018599/heap_3.o.d" -o ${OBJECTDIR}/_ext/2075018599/heap_3.o ../../../../common/freertos/portable/memmang/heap_3.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/2101648322/ff.o: ../../../../common/fatfs/ff.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2101648322" 
	@${RM} ${OBJECTDIR}/_ext/2101648322/ff.o.d 
	@${RM} ${OBJECTDIR}/_ext/2101648322/ff.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/2101648322/ff.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/2101648322/ff.o.d" -o ${OBJECTDIR}/_ext/2101648322/ff.o ../../../../common/fatfs/ff.c      $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1461350242/unicode.o: ../../../../common/fatfs/option/unicode.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1461350242" 
	@${RM} ${OBJECTDIR}/_ext/1461350242/unicode.o.d 
	@${RM} ${OBJECTDIR}/_ext/1461350242/unicode.o 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1461350242/unicode.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -DUSE_PIC32MZ_EC_STARTER_KIT -I"../src" -I"../../../../common/microchip/boards/common" -I"../../../../common/microchip/boards/pic32mz_ec_starter_kit" -I"../../../../common/freertos/include" -I"../../../../common/freertos/portable/mplab/pic32mz" -I"../../../../common/fatfs" -I"../../../../../common" -I"../../../../../cyclone_tcp" -I"../../../../../cyclone_ssl" -I"../../../../../cyclone_crypto" -MMD -MF "${OBJECTDIR}/_ext/1461350242/unicode.o.d" -o ${OBJECTDIR}/_ext/1461350242/unicode.o ../../../../common/fatfs/option/unicode.c      $(COMPARISON_BUILD) 
	
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
