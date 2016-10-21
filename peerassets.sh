#!/usr/bin/env sh
set -e

sudo apt install -y python-pip
pip install --user git+git://github.com/peercoinops/peercoin_rpc.git

PEER_ASSETS_DIR=~/peerassets
mkdir -p $PEER_ASSETS_DIR

if [ ! -d $PEER_ASSETS_DIR/peercoin-OP_RETURN ]; then
    git clone https://github.com/PeerAssets/peercoin-OP_RETURN $PEER_ASSETS_DIR/peercoin-OP_RETURN
fi

if [ ! -d $PEER_ASSETS_DIR/op_return ]; then
    git clone https://github.com/PeerAssets/op_return $PEER_ASSETS_DIR/op_return
fi
