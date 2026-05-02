#!/bin/bash

INSTALL_DIR=$1

# Menjalankan Arch melalui Proot
proot --link2symlink \
      -0 \
      -r $INSTALL_DIR \
      -b /dev \
      -b /proc \
      -b /sys \
      -w /root \
      /usr/bin/bash --login
