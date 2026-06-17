#!/bin/bash
# Este script debe ejecutarse en una máquina virtual de Ubuntu Server (no contenedor)


# SNAP Proxy

apt update
apt install postgresql

su - postgres psql < snap.sql

snap install snap-store-proxy 
# Configurar la base de datos: password Sandia4you
snap-proxy config proxy.db.connection="postgresql://snapproxy-user@localhost:5432/snapproxy-db"
snap-proxy config proxy.domain="snap-cache.tierno.es"
snap-proxy config proxy.cache.size=50480
snap-proxy register
