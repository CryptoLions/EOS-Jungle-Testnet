#!/bin/bash
################################################################################
#
# Scrip Created by http://CryptoLions.io
# https://github.com/CryptoLions/Jungle3Testnet
#
###############################################################################


NODEOSBINDIR="/home/eos-DAWN-2018-03-30-ALPHA/eos/build/programs/nodeos"
DATADIR="/opt/Jungle3Testnet"

./stop.sh
echo "Starting Nodeos \n";

$NODEOSBINDIR/nodeos --data-dir $DATADIR --config-dir $DATADIR > $DATADIR/stdout.txt 2> $DATADIR/stderr.txt &  echo $! > $DATADIR/nodeos.pid
#$NODEOSBINDIR/nodeos --replay $DATADIR --config-dir $DATADIR > $DATADIR/stdout.txt 2> $DATADIR/stderr.txt &  echo $! > $DATADIR/nodeos.pid
#$NODEOSBINDIR/nodeos --enable-stale-production true $DATADIR --config-dir $DATADIR > $DATADIR/stdout.txt 2> $DATADIR/stderr.txt &  echo $! > $DATADIR/nodeos.pid
#$EOSIOBINDIR/nodeos --enable-stale-production true --data-dir $DATADIR --config-dir $DATADIR > $DATADIR/stdout.txt 2> $DATADIR/stderr.txt &  echo $! > $DATADIR/nodeos.pid
