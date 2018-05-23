#!/bin/bash
################################################################################
#
# Scrip Created by http://CryptoLions.io
# For EOS Junlge testnet
#
# https://github.com/CryptoLions/
#
################################################################################
ACCOUNT="acryptolions"
PUBKEY="EOS74wRrQt96rGaEEBNrqWNN4VBebuJGuZrECdBYqLqFCiRzvt3ja"
URL="http://cryptolions.io"

./cleos.sh system regproducer $ACCOUNT $PUBKEY "$URL" -p $ACCOUNT

