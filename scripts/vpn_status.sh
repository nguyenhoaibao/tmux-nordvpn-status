#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}"  )" && pwd  )"
source "$CURRENT_DIR/helpers.sh"

vpn_status() {
    if command -v nordvpn &> /dev/null; then
        status=$(nordvpn status | sed -n -e 's/Status: \(.*\)$/\1/p')

        if [[ $status == *"Disconnected" ]]; then
            echo -e " \U1f513 "
        elif [[ $status == "Connecting" ]]; then
            echo -e " "
        elif [[ $status == *"Connected" ]]; then
            echo -e " \U1f512 "
        fi
    else
        echo -e " "
    fi
}

vpn_status
