#!/bin/bash

# Path to the ZIP file
FILE_PATH="./garbage-file-for-upload-script/50MB.zip"

# API endpoint URL
API_URL="http://212.183.159.230/1GB.zip"

: '
You can change any API URL for uploading the garbage file to consume your upload bandwidth. 
You must ensure that the API endpoint you have changed supports POST requests with file uploading permission and can handle a 50MB payload.

If the API endpoint supports 50MB or less, you can change the file to a different one that fits your payload size in the 
"garbage-file-for-upload-script" folder and update the FILE_PATH variable value accordingly.
'

# Infinite loop to upload the file
while true; do
    # Upload the file using curl
    curl -X POST -F "file=@$FILE_PATH" $API_URL

    #echo "Uploaded $FILE_PATH to $API_URL"

    # Sleep for a short time to avoid overwhelming the server
    sleep 1
done
