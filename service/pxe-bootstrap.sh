#!/bin/bash

mkdir -p /var/lib/ironic/tftpboot

cp \
    /usr/lib/PXELINUX/pxelinux.0 \
    /usr/lib/syslinux/modules/bios/chain.c32 \
    /usr/lib/syslinux/modules/bios/ldlinux.c32 \
    /var/lib/ironic/tftpboot

chown -R ironic:ironic /var/lib/ironic
