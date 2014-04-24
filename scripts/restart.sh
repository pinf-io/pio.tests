#!/bin/bash -e

echo "[pio.tests] Running restart.sh script"


sh $PIO_SCRIPTS_PATH/stop.sh
sh $PIO_SCRIPTS_PATH/start.sh
