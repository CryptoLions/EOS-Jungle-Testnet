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

./cleos.sh system claimrewards $ACCOUNT -p $ACCOUNT
