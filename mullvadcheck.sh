#!/bin/bash

echo "🔍 Checking Public IP..."
curl -s ifconfig.me
echo -e "\n"

echo "🔍 Checking DNS Resolver..."
dns_ips=$(dig +short google.com)

echo "$dns_ips"
echo

echo "🌍 WHOIS Lookup for Resolved IPs:"
for ip in $dns_ips; do
  echo "🔎 $ip:"
  whois $ip | grep -E 'OrgName|Organization|netname|owner' | head -n 1
  echo
done

echo "🔍 Checking Which DNS Server Is Being Used..."
dig google.com | grep SERVER
echo -e "\n"

echo "🔍 Testing Ad Blocking (doubleclick.com)..."
dig doubleclick.com | grep -Ei 'status|ANSWER SECTION'
echo "🔸 If status is NXDOMAIN, ad blocking is working."
echo "🔸 If you see an IP, tracking domain was not blocked."
echo

echo "🔍 DNS Resolver List (scutil)..."
scutil --dns | grep "nameserver\|if_index"
echo -e "\n"

echo "✅ Done."
