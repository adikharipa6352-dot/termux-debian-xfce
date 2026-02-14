# Termux Debian XFCE (Non-GPU)

Repositori ini berisi skrip otomatisasi untuk menginstal dan menjalankan lingkungan desktop Debian XFCE di Android menggunakan Termux dan Termux:X11. Panduan ini fokus pada stabilitas dan kemudahan penggunaan tanpa akselerasi GPU.

## Prasyarat

Sebelum memulai, pastikan Anda telah menginstal aplikasi berikut:
1. [Termux](https://f-droid.org/en/packages/com.termux/) (Versi F-Droid)
2. [Termux:X11](https://github.com/termux/termux-x11/releases) (Versi GitHub)

## Cara Penggunaan (Langkah Cepat)

Buka Termux dan jalankan perintah berikut:

```bash
# Update repositori dan instal git
pkg update && pkg upgrade -y
pkg install git -y

# Clone repositori ini
https://github.com/adikharipa6352-dot/termux-debian-xfce.git
cd termux-debian-xfce

# Beri izin eksekusi pada skrip
chmod +x setup.sh start.sh

# Jalankan instalasi (Hanya sekali)
./setup.sh

# Jalankan desktop
./start.sh
```

## Langkah-langkah Manual

Jika Anda ingin melakukan instalasi secara manual, silakan ikuti panduan di bawah ini:

### 1. Persiapan Termux
```bash
pkg install x11-repo -y
pkg install proot-distro pulseaudio nano -y
```

### 2. Instalasi Debian
```bash
proot-distro install debian
```

### 3. Konfigurasi XFCE (Di dalam Debian)
Login ke Debian: `proot-distro login debian`
Jalankan di dalam Debian:
```bash
apt update && apt upgrade -y
apt install xfce4 xfce4-goodies xfce4-terminal dbus-x11 firefox-esr sudo -y
```

## Konfigurasi Termux:X11
Pastikan di pengaturan aplikasi Termux:X11, opsi **"Allow external connections"** sudah diaktifkan agar desktop bisa muncul.

## Kontribusi
Silakan lakukan *fork* repositori ini dan kirimkan *pull request* jika Anda ingin menambahkan fitur atau memperbaiki bug.

---
Dibuat dengan ❤️ untuk komunitas Termux Indonesia.
