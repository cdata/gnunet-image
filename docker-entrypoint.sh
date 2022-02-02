#!/bin/bash

gnunet-arm -c /opt/peer.conf -s > $HOME/gnunet.log 2>&1

gnunet-config -c /opt/peer.conf -s gns-proxy -o AUTOSTART -V YES
gnunet-config -c /opt/peer.conf -s rest -o BIND_TO -V "127.0.0.1"
gnunet-config -c /opt/peer.conf -s rest -o BIND_TO6 -V "::1/128"

exec gnunet-arm -c /opt/peer.conf -r --monitor
