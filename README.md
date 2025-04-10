# Mullvad VPN + DNS Leak Checker

This is a simple bash script that checks if your VPN and DNS setup is truly private and leak-free. It was built to validate setups using Mullvad, Pi-hole, or any VPN with DNS filtering.

## Why Use This Script Instead of Mullvad's Check Page?

Mullvad provides a great online [connection check page](https://mullvad.net/check), but this script brings that same power **to your terminal** — and keeps it **100% open-source**.

You can:

- ✅ See your real public IP
- ✅ Confirm your DNS server (and test for leaks)
- ✅ Know which DNS resolvers are being used (via `scutil`)
- ✅ Test ad-blocking (e.g. `doubleclick.com`)
- ✅ Run it **offline** or without a browser
- ✅ Actually understand and inspect the code

Unlike Mullvad's page — this script doesn’t hide the logic. You know exactly what it’s testing and how. That’s what sovereignty looks like. 🧠🔥

---

> Built for use with Mullvad, but useful for any VPN setup.


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

