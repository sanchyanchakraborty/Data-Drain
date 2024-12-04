#!/bin/bash

url="http://212.183.159.230/1GB.zip"

: '
For different sizes of garbage files, 
you can visit this URL: http://212.183.159.230/, grab the download link, and change the URL value. 
Alternatively, you can change the URL download link from any other source.
'

while true; do
  # Download the file into memory and discard it
  curl -o /dev/null $url
  #echo "Downloaded and discarded the file in memory."

  # Sleep for a short time to avoid overwhelming the server
  sleep 1
done
