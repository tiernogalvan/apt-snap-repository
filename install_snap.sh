#!/bin/bash
# Este script debe ejecutarse en una máquina virtual de Ubuntu Server (no contenedor)


# SNAP Proxy
apt update
apt install -y snapd squashfuse fuse postgresql
systemctl enable --now snapd.socket
snap wait system seed.loaded

cp snap.sql /tmp/snap.sql
chmod 777 /tmp/snap.sql
su - postgres -c "psql -f /tmp/snap.sql"

snap install snap-store-proxy 
# Configurar la base de datos: password Sandia4you
snap-proxy config proxy.db.connection="postgresql://snapproxy-user@localhost:5432/snapproxy-db"
snap-proxy config proxy.domain="snap-cache.tierno.es"
snap-proxy config proxy.cache.size=50480
snap-proxy register
