#!/bin/sh
# post-build.sh for Panzer fanless computing
# 2018, Wig Cheng <onlywig@gmail.com>

BOARD_DIR="$(dirname $0)"

install -m 0644 -D ${BOARD_DIR}/rootfs_overlay/etc/inittab ${TARGET_DIR}/etc/inittab

install -m755 -D ${BOARD_DIR}/rootfs_overlay/usr/bin/create_ap ${TARGET_DIR}/usr/bin/create_ap
install -m644 -D ${BOARD_DIR}/rootfs_overlay/etc/create_ap.conf ${TARGET_DIR}/etc/create_ap.conf
install -m644 -D ${BOARD_DIR}/rootfs_overlay/share/bash-completion/completions/create_ap ${TARGET_DIR}/share/bash-completion/completions/create_ap
install -m644 -D ${BOARD_DIR}/rootfs_overlay/share/doc/create_ap/README.md ${TARGET_DIR}/share/doc/create_ap/README.md

