# Legacy Arch Installer

This project provides a simple shell script to add **legacy CPU and GPU support** to an existing Arch Linux installation — perfect for making USB installations compatible across both new and old AMD/Intel systems.

## ✅ What it Does

- Installs `linux-lts` kernel
- Adds microcode updates (Intel/AMD)
- Installs GPU drivers including legacy `radeon`
- Creates a systemd-boot entry titled `Legacy Arch (linux-lts)`

## 🧑‍💻 Usage

```bash
chmod +x legacy-support-installer.sh
./legacy-support-installer.sh
```

Follow the prompts to select:
- What kind of support to add (CPU, GPU, or both)
- Which vendor (Intel or AMD)

## 📦 License

MIT
