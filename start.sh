#!/data/data/com.termux/files/usr/bin/bash

# Cleanup old sessions
killall -9 pulseaudio &>/dev/null

echo "Starting PulseAudio..."
pulseaudio --start --load="module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1" --exit-idle-time=-1

sleep 1

echo "Starting Debian XFCE..."
echo "Make sure Termux:X11 app is open and 'Allow external connections' is enabled."

# Login as root by default for simplicity in the script, 
# but recommend using a user in README.
proot-distro login debian --shared-tmp -- /bin/bash -c "export DISPLAY=:0 PULSE_SERVER=127.0.0.1 && dbus-launch --exit-with-session startxfce4"

# Cleanup after session ends
echo "Session ended. Cleaning up..."
killall -9 pulseaudio &>/dev/null
