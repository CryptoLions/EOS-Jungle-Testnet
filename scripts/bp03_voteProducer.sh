#!/bin/bash
################################################################################
#
# Scrip Created by http://CryptoLions.io
# For EOS Junlge testnet
#
# https://github.com/CryptoLions/
#
################################################################################
VOTER="acryptolions"
VOTEFOR="acryptolions bohdanjungle"

./cleos.sh system voteproducer prods $VOTER $VOTEFOR -p $VOTER
