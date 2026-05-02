#!/bin/bash

# Arcmux Core - Arch Linux Installer
# Optimized for Realme Note 50 (ARM64)

INSTALL_DIR=$1
ARCH=$(uname -m)

if [ "$ARCH" == "aarch64" ]; then
    ROOTFS_URL="http://os.archlinuxarm.org/os/ArchLinuxARM-aarch64-latest.tar.gz"
elif [ "$ARCH" == "armv7l" ]; then
    ROOTFS_URL="http://os.archlinuxarm.org/os/ArchLinuxARM-armv7-latest.tar.gz"
else
    echo "Arsitektur tidak didukung!"
    exit 1
fi

echo "--- Arcmux: Mengunduh Arch Linux ($ARCH) ---"
curl -L $ROOTFS_URL -o arch_rootfs.tar.gz

echo "--- Arcmux: Mengekstrak Sistem ---"
# Proot akan digunakan untuk menjalankan ini tanpa root
tar -xpf arch_rootfs.tar.gz -C $INSTALL_DIR

echo "--- Arcmux: Konfigurasi Dasar ---"
# Menambahkan DNS agar internet di dalam Arch lancar
echo "nameserver 8.8.8.8" > $INSTALL_DIR/etc/resolv.conf

rm arch_rootfs.tar.gz
echo "Setup Selesai. Arch Linux siap diluncurkan!"
