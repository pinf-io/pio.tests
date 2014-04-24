#!/bin/bash -e

echo "[pio.tests] Running status.sh script"

printenv

URL="http://127.0.0.1:$PORT/"

echo "URL: $URL"

STATUS_CODE=$(curl -w %{http_code} -s --output /dev/null $URL)

echo "STATUS_CODE: $STATUS_CODE"

if [ $STATUS_CODE != 200 ]; then
	echo "Did not get 200!";
	echo '<wf name="status">null</wf>'
	exit 1;
fi

echo '<wf name="status">{"status": "OK"}</wf>'

exit 0;
