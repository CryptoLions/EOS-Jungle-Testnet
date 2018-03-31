#!/bin/bash
################################################################################
#
# Scrip Created by http://CryptoLions.io
# https://github.com/CryptoLions/Jungle3Testnet
#
###############################################################################

DIR="/opt/Jungle3Testnet"


    if [ -f $DIR"/nodeos.pid" ]; then
	pid=`cat $DIR"/nodeos.pid"`
	echo $pid
	kill $pid
	rm -r $DIR"/nodeos.pid"

	echo -ne "Stoping Nodeos"

        while true; do
            [ ! -d "/proc/$pid/fd" ] && break
            echo -ne "."
            sleep 1
        done
        echo -ne "\rNodeos Stopped.    \n"
    fi

