#!/data/data/com.termux/files/usr/bin/bash
clear
echo "🔵 PritomX Remote Access V1 Auto Installer"
echo "-------------------------------------------"

pkg update -y && pkg upgrade -y
pkg install -y openssh wget curl proot-distro

echo "📥 Downloading Remote System..."
wget https://raw.githubusercontent.com/pritomx/pritomx-remote-v1/main/remote.sh -O $PREFIX/bin/pxremote
chmod +x $PREFIX/bin/pxremote

# Set SSH Password (auto)
echo -e "pritomx\npritomx" | passwd

# Install Cloudflared (ARM)
wget https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-arm -O cloudflared
chmod +x cloudflared
mv cloudflared $PREFIX/bin/

echo "🔧 Installation Completed!"
echo "👉 Run: pxremote"
