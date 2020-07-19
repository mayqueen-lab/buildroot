#!/bin/sh
# post-build.sh for Panzer fanless computing
# 2018, Wig Cheng <onlywig@gmail.com>

BOARD_DIR="$(dirname $0)"

install -m 0644 -D ${BOARD_DIR}/rootfs_overlay/etc/inittab ${TARGET_DIR}/etc/inittab
install -m 0644 -D ${BOARD_DIR}/rootfs_overlay/etc/ppp/peers/vzw-GELS3 ${TARGET_DIR}/etc/ppp/peers/vzw-GELS3
install -m 0644 -D ${BOARD_DIR}/rootfs_overlay/etc/ppp/peers/vzw-GELS3-chat ${TARGET_DIR}/etc/ppp/peers/vzw-GELS3-chat

install -m755 -D ${BOARD_DIR}/rootfs_overlay/usr/bin/system_init ${TARGET_DIR}/usr/bin/system_init
