#!/usr/bin/env bash

cat << EOF > /etc/openvpn/client/private.ovpn
client
dev tun
proto tcp
remote 203.0.113.246 1248
resolv-retry infinite
nobind
persist-key
persist-tun
ping 15
ping-restart 0
ping-timer-rem
reneg-sec 0

remote-cert-tls server
auth-user-pass auth.txt
EOF

cat << EOF > /etc/openvpn/client/auth.txt
${VPN_USER}
${VPN_PASS}
EOF

# start proxy
privoxy <(grep -v listen-address /etc/privoxy/config ; echo listen-address  0.0.0.0:8118) &

# connect vpn
openvpn --config private.ovpn

