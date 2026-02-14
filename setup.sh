#!/data/data/com.termux/files/usr/bin/bash

echo "Starting installation for Termux Debian XFCE..."

# Update and install dependencies
pkg update && pkg upgrade -y
pkg install x11-repo -y
pkg install proot-distro pulseaudio wget nano -y

# Install Debian
if [ ! -d "$PREFIX/var/lib/proot-distro/installed-rootfs/debian" ]; then
    echo "Installing Debian..."
    proot-distro install debian
else
    echo "Debian is already installed."
fi

echo "Setting up XFCE inside Debian. This may take a while..."

# Automated setup inside Debian
proot-distro login debian -- /bin/bash -c "
apt update && apt upgrade -y
apt install xfce4 xfce4-goodies xfce4-terminal dbus-x11 nano firefox-esr sudo -y
"

echo "Installation complete!"
echo "Please make sure to create a user and add it to the sudo group manually if needed."
echo "You can now run ./start.sh to start the desktop."
