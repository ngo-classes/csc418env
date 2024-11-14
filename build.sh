#!/bin/bash

set -e

docker image rm master:latest || true
docker image rm worker:latest || true

docker build -t master:latest ./docker/master
docker build -t worker:latest ./docker/worker
