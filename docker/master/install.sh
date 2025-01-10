#!/bin/bash

apt-get update && apt-get install -y nginx nodejs && apt-get clean

curl -fsSL https://code-server.dev/install.sh | sh &&
    mkdir -p /root/.config/code-server/ &&
    cp /config.yaml /root/.config/code-server/config.yaml

ln -s /configs/nginx/sites-available/data /etc/nginx/sites-enabled/data
