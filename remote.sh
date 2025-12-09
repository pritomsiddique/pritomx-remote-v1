#!/data/data/com.termux/files/usr/bin/bash
clear
echo "🔵 PritomX Remote Access V1 Started"
echo "-------------------------------------------"

# Background Mode Enabled
nohup sshd > /dev/null 2>&1 &

# Generate SSH Key (Passwordless)
if [ ! -f ~/.ssh/id_rsa ]; then
    mkdir -p ~/.ssh
    ssh-keygen -t rsa -N "" -f ~/.ssh/id_rsa
    cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
    chmod 600 ~/.ssh/authorized_keys
fi

# Start Cloudflared Tunnel
echo "🌐 Creating Secure Cloudflared Tunnel..."
cloudflared tunnel --url ssh://localhost:8022 --no-autoupdate
