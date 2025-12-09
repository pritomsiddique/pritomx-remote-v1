🛡️ PritomX Remote Access V1

Termux-based Secure Remote SSH + Cloudflared Tunnel

PritomX Remote V1 হলো একটি অটো Remote-Access সিস্টেম যা Termux থেকে
passwordless SSH login, Cloudflared tunnel, auto-start, এবং remote connectivity
একটি কমান্ডেই সেটআপ করে দেয়।


---

🚀 Features (What You Get)

✔️ Auto Termux Update + Upgrade
✔️ OpenSSH + Cloudflared Auto Install
✔️ Passwordless SSH Key Generate
✔️ Background Remote Script (pxremote)
✔️ Auto Cloudflared Tunnel
✔️ Public Secure URL for Remote Login
✔️ Termux-Boot Support (Auto Start After Reboot)


---

📌 Step 1: Install PritomX Remote (One Command)

pkg update -y && pkg install wget -y && \
wget https://raw.githubusercontent.com/pritomsiddique/pritomx-remote-v1/main/install.sh -O install.sh && \
chmod +x install.sh && bash install.sh

এটি অটোমেটিকালি করবে:

1. Termux update + upgrade


2. Install OpenSSH + Cloudflared


3. Generate SSH Key (Passwordless login)


4. Create Auto-start script → pxremote


5. Start Cloudflared secure tunnel




---

📌 Step 2: Start Remote Access

pxremote

এটি করবে:

OpenSSH background run

Cloudflared tunnel auto start

Remote public URL দেখাবে



---

📌 Step 3: SSH Login From Anywhere

🔑 Private Key Path

~/.ssh/id_rsa

🖥️ PC / Laptop / Android থেকে Login:

ssh -i ~/.ssh/id_rsa u0_a$(id -u)@<cloudflared-url>

🔐 Password (Backup)

pritomx

(Private key থাকলে passwordless login হবে)


---

🔄 Step 4: Auto Start on Boot (Optional)

যদি Termux-Boot install থাকে, তাহলে:

~/.termux/boot/px_remote.sh

ডিভাইস অন হওয়ার সাথে Remote Access auto চালু হবে।


---

⭐ Optional Upgrades (Coming Soon)

🔹 GUI Desktop + VNC Remote

Termux XFCE Desktop + VNC server auto setup.

🔹 Fail2ban + Firewall Security

Bruteforce protection + iptables rules.

🔹 Auto Cloudflared Updater

Tunnel সর্বদা up-to-date থাকবে।

🔹 Branding + Custom Banner

লগইনে আপনার নিজের branding.


---

📁 Project Structure

pritomx-remote-v1/
│
├── install.sh
├── pxremote (auto start script)
├── README.md
└── assets/


---

🧑‍💻 Author

PritomX Dev

GitHub: https://github.com/pritomsiddique


---

📜 License

MIT License — Free to use, modify, and distribute.
