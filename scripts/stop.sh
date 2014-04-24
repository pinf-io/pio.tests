#!/bin/bash -e

echo "[pio.tests] Running stop.sh script"


if [ -f "/etc/init/app-$PIO_SERVICE_ID_SAFE.conf" ]; then
    sudo stop app-$PIO_SERVICE_ID_SAFE || true
fi
