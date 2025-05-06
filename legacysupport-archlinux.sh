#!/bin/bash

echo "Legacy Support Installer for Arch Linux"
echo "----------------------------------------"

read -p "What would you like to install support for? (cpu/gpu/both): " type
read -p "Which vendor? (intel/amd): " vendor

# Install linux-lts kernel for broader support
echo "Installing linux-lts and headers..."
sudo pacman -Sy --noconfirm linux-lts linux-lts-headers

# CPU microcode
if [[ "$type" == "cpu" || "$type" == "both" ]]; then
  if [[ "$vendor" == "intel" ]]; then
    echo "Installing Intel microcode..."
    sudo pacman -Sy --noconfirm intel-ucode
  elif [[ "$vendor" == "amd" ]]; then
    echo "Installing AMD microcode..."
    sudo pacman -Sy --noconfirm amd-ucode
  fi
fi

# GPU drivers
if [[ "$type" == "gpu" || "$type" == "both" ]]; then
  if [[ "$vendor" == "intel" ]]; then
    echo "Installing Intel GPU drivers..."
    sudo pacman -Sy --noconfirm xf86-video-intel mesa
  elif [[ "$vendor" == "amd" ]]; then
    echo "Installing AMD GPU drivers..."
    sudo pacman -Sy --noconfirm xf86-video-amdgpu mesa
    echo "Installing legacy AMD GPU driver (radeon)..."
    sudo pacman -Sy --noconfirm xf86-video-ati
  fi
fi

# Update bootloader entry
echo "Creating bootloader entry for linux-lts..."
bootctl_path="/boot/loader/entries/legacy-arch.conf"

sudo tee "$bootctl_path" > /dev/null <<EOF
title   Legacy Arch (linux-lts)
linux   /vmlinuz-linux-lts
initrd  /${vendor}-ucode.img
initrd  /initramfs-linux-lts.img
options root=PARTUUID=\$(blkid -s PARTUUID -o value \$(findmnt / -o SOURCE -n)) rw
EOF

echo "Done! Reboot and select 'Legacy Arch (linux-lts)' to test."
