#!/bin/bash
set -e

sudo apt install -y python3-pip
pip3 install --upgrade pip
pip3 install --user git+git://github.com/peerchemist/peercoin_rpc.git
pip3 install --user secp256k1 base58 #pypeerassets
pip3 install --user docker-compose

PEER_ASSETS_DIR=~/peerassets
mkdir -p $PEER_ASSETS_DIR

if [ ! -d $PEER_ASSETS_DIR/peercoin-OP_RETURN ]; then
    git clone https://github.com/PeerAssets/peercoin-OP_RETURN $PEER_ASSETS_DIR/peercoin-OP_RETURN
fi

if [ ! -d $PEER_ASSETS_DIR/op_return ]; then
    git clone https://github.com/PeerAssets/op_return $PEER_ASSETS_DIR/op_return
fi

if [ ! -d $PEER_ASSETS_DIR/pypeerassets ]; then
    git clone https://github.com/PeerAssets/pypeerassets $PEER_ASSETS_DIR/pypeerassets
fi

if [ ! -d $PEER_ASSETS_DIR/docker-peercoind ]; then
    git clone https://github.com/peerchemist/docker-peercoind $PEER_ASSETS_DIR/docker-peercoind
fi

