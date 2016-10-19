#!/bin/bash

mkdir -p /var/lib/ironic/tftpboot

cp \
    /usr/lib/PXELINUX/pxelinux.0 \
    /usr/lib/syslinux/modules/bios/chain.c32 \
    /usr/lib/syslinux/modules/bios/ldlinux.c32 \
    /usr/lib/ipxe/undionly.kpxe \
    /var/lib/ironic/tftpboot

chown -R ironic: /var/lib/ironic
