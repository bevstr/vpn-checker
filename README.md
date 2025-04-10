# Mullvad VPN + DNS Leak Checker

This is a simple bash script that checks if your VPN and DNS setup is truly private and leak-free. It was built to validate setups using Mullvad, Pi-hole, or any VPN with DNS filtering.

## ✅ What It Checks

- 🔍 Your current public IP address
- 🛡️ Which DNS server is actually resolving your queries
- 🌍 WHOIS ownership of resolved IPs (e.g. is `google.com` really resolving to Google?)
- 🚫 Whether known ad/tracking domains (like `doubleclick.com`) are being blocked
- 🧠 What your system DNS configuration is per interface

## 📦 Requirements

- Bash (default on macOS and Linux)
- `dig` (from `bind` utils)
- `curl`
- `whois`
- macOS users: `scutil` is already available

## 💻 Usage

1. Clone the repo or download the script:
   ```bash
   git clone https://github.com/yourusername/vpn-checker.git
   cd vpn-checker
   chmod +x mullvadcheck.sh

