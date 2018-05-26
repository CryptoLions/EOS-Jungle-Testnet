#!/bin/bash
################################################################################
#
# Scrip Created by http://CryptoLions.io
# https://github.com/CryptoLions/EOS-Jungle-Testnet
#
###############################################################################


NODEOSBINDIR="/home/eos-dawn-v4.2.0/eos/build/programs/nodeos"
DATADIR="/opt/JungleTestnet"

$DATADIR/stop.sh
echo -e "Starting Nodeos \n";

$NODEOSBINDIR/nodeos --data-dir $DATADIR --config-dir $DATADIR > $DATADIR/stdout.txt 2> $DATADIR/stderr.txt &  echo $! > $DATADIR/nodeos.pid
