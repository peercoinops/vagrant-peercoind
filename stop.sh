#!/usr/bin/env sh
set -e

vagrant ssh -c "pushd /home/ubuntu/peerassets/docker-peercoind; docker-compose stop"
