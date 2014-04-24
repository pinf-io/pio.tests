#!/bin/bash -e

echo "[pio.tests] Running test.sh script"

printenv

sh $PIO_SCRIPTS_PATH/status.sh > /dev/null
if [ $? -ne 0 ]; then
	echo "Did not run test. Got bad status!";
	echo '<wf name="status">{"success": false}</wf>'
	exit 1;
fi

echo '<wf name="result">{"success": true}</wf>'

exit 0;
