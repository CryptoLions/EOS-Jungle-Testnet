#!/bin/bash

################################################################################
#
# Scrip Created by http://CryptoLions.io
# https://github.com/CryptoLions/EOS-Jungle-Testnet/
#
###############################################################################

NODEOSBINDIR="/home/eos-dawn-v4.0.0/eos/build/programs"
DATADIR="/opt/JungleTestnet/Wallet"
WALLET_HOST="127.0.0.1"
WALLET_POSRT="3000"


$DATADIR/stop_wallet.sh
$NODEOSBINDIR/keosd/keosd --data-dir $DATADIR --http-server-address $WALLET_HOST:$WALLET_POSRT $@ & echo $! > $DATADIR/wallet.pid
