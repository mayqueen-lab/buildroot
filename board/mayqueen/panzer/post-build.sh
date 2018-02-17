#!/bin/sh
# post-build.sh for Panzer fanless computing
# 2018, Wig Cheng <onlywig@gmail.com>

BOARD_DIR="$(dirname $0)"

install -m 0644 -D ${BOARD_DIR}/rootfs_overlay/etc/inittab ${TARGET_DIR}/etc/inittab
