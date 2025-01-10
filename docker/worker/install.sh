#!/bin/bash

# Install Mongo for Debian
curl -fSsL "https://repo.mongodb.org/apt/debian/dists/bookworm/mongodb-org/8.0/main/binary-amd64/mongodb-org-server_${MONGO_VER}_amd64.deb" -o ./mongodb.deb
dpkg -i ./mongodb.deb
