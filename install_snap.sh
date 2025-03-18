#!/bin/bash
#


# SNAP Proxy

snap install snap-store-proxy 
snap-proxy set proxy.domain=172.20.0.21

snap-proxy set cache.enable=true
# Cache size setted to 20GB
snap-proxy config set cache.size=20480

systemctl start snap-store-proxy
systemctl enable snap-store-proxy


# APT 