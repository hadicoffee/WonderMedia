#!/bin/sh
################################################################################
#                                                                              #
# Copyright c 2009-2011  WonderMedia Technologies, Inc.   All Rights Reserved. #
#                                                                              #
# This PROPRIETARY SOFTWARE is the property of WonderMedia Technologies, Inc.  #
# and may contain trade secrets and/or other confidential information of       #
# WonderMedia Technologies, Inc. This file shall not be disclosed to any third #
# party, in whole or in part, without prior written consent of WonderMedia.    #
#                                                                              #
# THIS PROPRIETARY SOFTWARE AND ANY RELATED DOCUMENTATION ARE PROVIDED AS IS,  #
# WITH ALL FAULTS, AND WITHOUT WARRANTY OF ANY KIND EITHER EXPRESS OR IMPLIED, #
# AND WonderMedia TECHNOLOGIES, INC. DISCLAIMS ALL EXPRESS OR IMPLIED          #
# WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, QUIET       #
# ENJOYMENT OR NON-INFRINGEMENT.                                               #
#                                                                              #
################################################################################

ifconfig ra0 down
sync

#still do it here ?
#call WmtService::releaseDevices function
service call wmt.server 100 i32 1
#still do it here ?
/bin/umount -lf /mnt/sdcard
/bin/umount /mnt/internal

tinymix 20 0
tinymix 21 0

if [ $# -eq 0 ];then
    echo "$0: power off" > /dev/console
    reboot -p &
elif [ $# -eq 1 ];then
    echo "$0: reboot" > /dev/console
    if [ $1 -eq 0 ];then
        local reason=`getprop sys.reboot.reason`
        echo "$0: *I* reboot reason: $reason" > /dev/console
        reboot $reason
    fi
fi

