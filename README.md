# Legacy Support Installer for Arch Linux

[![Release](https://img.shields.io/github/v/release/SpeedyCoder1192/legacysupport-archlinux)](https://github.com/SpeedyCoder1192/legacysupport-archlinux/releases)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

A user-friendly script to add **legacy CPU and GPU support** to an Arch Linux installation — perfect for USB installations that need to run on a wide variety of hardware.

---

## ⚙️ Features

* Adds support for older **AMD** and **Intel** CPUs/GPUs
* Installs the `linux-lts` kernel for better compatibility with legacy hardware
* Prompts you to choose what to install (CPU or GPU support)
* Automatically adds a new bootloader entry: `Legacy Arch (linux-lts)`
* Simple and interactive script flow

---

## 📥 Download

**Option 1 – Recommended:**

➡️ [Download the latest release script (ver\_release)](https://github.com/SpeedyCoder1192/legacysupport-archlinux/releases/download/ver_release/legacy-support-installer.sh)

Then run:

```bash
chmod +x legacy-support-installer.sh
./legacy-support-installer.sh
```

**Option 2 – Manual Clone:**

```bash
git clone https://github.com/SpeedyCoder1192/legacysupport-archlinux
cd legacysupport-archlinux
# Download script manually from the Releases tab
```

---

## 💡 Notes

* Be sure to run the script **before** booting on older PCs.
* Your bootloader must support systemd-boot or be manually configured if using something else.
* Works great with modern and older Intel/AMD systems — includes detection and correct driver install paths.

---

## 🧪 Tested On

* ✅ Modern Intel systems (UHD 620, etc.)
* ✅ AMD Ryzen (All Series) with RadeonT (Radeon Graphics)
* ✅ Older AMD APU systems (A-series)

---

## 📝 License

Licensed under the MIT License. See `LICENSE` file for details.

---

Enjoy booting Arch everywhere! 😄
