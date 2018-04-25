#!/bin/bash
################################################################################
#
# Scrip Created by http://CryptoLions.io
# https://github.com/CryptoLions/scripts/
#
###############################################################################

NODEOSBINDIR="/home/eos-dawn-v3.0.0/eos/build/programs"

WALLETHOST="127.0.0.1"
NODEPORT="8888"
WALLETPORT="3000"

$NODEOSBINDIR/cleos/cleos -p $NODEPORT --wallet-host $WALLETHOST --wallet-port $WALLETPORT "$@"
