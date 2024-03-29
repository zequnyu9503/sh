#!/bin/bash
# 接收 net0 1194端口进入的数据包.
iptables -A INPUT -i net0 -m state --state NEW -p tcp --dport 1194 -j ACCEPT
# 允许tun接入.
iptables -A INPUT -i tun+ -j ACCEPT
# 允许tun转发.
iptables -A FORWARD -i tun+ -j ACCEPT
# 允许tun到net0的转发.
iptables -A FORWARD -i tun+ -o net0 -m state --state RELATED,ESTABLISHED -j ACCEPT
# 允许net0到tun的转发.
iptables -A FORWARD -i net0 -o tun+ -m state --state RELATED,ESTABLISHED -j ACCEPT
# 包转发, vpn客户端网段到net0(外网).
iptables -t nat -A POSTROUTING -s 10.8.0.0/24 -o net0 -j MASQUERADE
# 包转发, vpn客户端网段到net1(内网).
iptables -t nat -A POSTROUTING -s 10.8.0.0/24 -o net1 -j MASQUERADE