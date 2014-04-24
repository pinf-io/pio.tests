#!/bin/bash -e

echo "[pio.tests] Running build.sh script"

printenv

if [ -z "$PIO_SERVICE_PATH" ]; then
    echo "'PIO_SERVICE_PATH' environment variable not set!"
    exit 1;
fi
