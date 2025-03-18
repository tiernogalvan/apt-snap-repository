#!/bin/bash
#

snap install -y snap-store-proxy 
snap-proxy config set proxy.domain=172.20.0.21

snap-proxy config set cache.enable=true
# Cache size setted to 20GB
snap-proxy config set cache.size=20480

systemctl start snap-store-proxy
systemctl enable snap-store-proxy
