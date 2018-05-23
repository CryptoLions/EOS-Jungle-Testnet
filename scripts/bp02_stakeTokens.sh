#!/bin/bash
################################################################################
#
# Scrip Created by http://CryptoLions.io
# For EOS Junlge testnet
#
# https://github.com/CryptoLions/
#
################################################################################
FROM="acryptolions"
TO="acryptolions"
NET="1000.0000 EOS"
CPU="1000.0000 EOS"


./cleos.sh system delegatebw $FROM $TO "$NET" "$CPU" -p $FROM
