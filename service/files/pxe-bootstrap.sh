#!/bin/bash

set -e

mkdir -p /var/lib/ironic/tftpboot /var/lib/ironic/httpboot

cp \
    /usr/lib/PXELINUX/pxelinux.0 \
    /usr/lib/syslinux/modules/bios/chain.c32 \
    /usr/lib/syslinux/modules/bios/ldlinux.c32 \
    /usr/lib/ipxe/undionly.kpxe \
    /var/lib/ironic/tftpboot

chown -R ironic:ironic /var/lib/ironic
