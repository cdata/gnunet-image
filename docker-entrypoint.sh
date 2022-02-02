#!/bin/bash

gnunet-arm -c /opt/peer.conf -s > $HOME/gnunet.log 2>&1



exec gnunet-arm -c /opt/peer.conf -r --monitor
