#!/usr/bin/env sh
set -e

PEER_ASSETS_DIR=~/peerassets
if [ ! -d $PEER_ASSETS_DIR/peercoin-OP_RETURN ]; then
    mkdir -p $PEER_ASSETS_DIR
    git clone https://github.com/PeerAssets/peercoin-OP_RETURN $PEER_ASSETS_DIR/peercoin-OP_RETURN
fi
