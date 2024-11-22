#!/bin/bash

nginx

# Just a log file.
# Should've probably mounted the node-server directory instead of copying it.
node /node-server/server.js &>node-server/log.txt&

code-server --bind-addr 0.0.0.0:8088
