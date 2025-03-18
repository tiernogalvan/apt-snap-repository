#!/bin/bash
#


# SNAP Proxy

apt update
apt install postgresql
 sudo -u postgres psql < snap.sql

snap install snap-store-proxy 
snap-proxy set proxy.domain=172.20.0.21

# Cache size setted to 20GB
snap-proxy config proxy.cache.size=20480
snap-proxy register

# Domain caches.tierno.es
# Password postgres Sandia4you

# Desde los clientes


# APT 