#!/bin/bash
set -e

if [[ "$FFNODE" == 'true' || "$FFNODE" == '1' || "$1" = '--node' ]]; then
    printf "Launching node\n"
    cd /app/Node
    exec ./run-node.sh

else
    printf "Launching server\n"
    cd /app/Server
    exec ./run-server.sh

fi
