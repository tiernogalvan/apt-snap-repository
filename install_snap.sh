#!/bin/bash
# Este script debe ejecutarse en una máquina virtual de Ubuntu Server (no contenedor)


# SNAP Proxy

sudo apt update
sudo apt install postgresql

sudo -u postgres psql < snap.sql

sudo snap install snap-store-proxy 
# Configurar la base de datos: password Sandia4you
sudo snap-proxy config proxy.db.connection="postgresql://snapproxy-user@localhost:5432/snapproxy-db"
sudo snap-proxy config proxy.domain="proxy-snap.tierno.es"
sudo snap-proxy config proxy.cache.size=50480
sudo snap-proxy register
