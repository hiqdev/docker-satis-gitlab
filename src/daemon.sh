#!/bin/bash

cd /app

while :
do
    echo "Rebuilding Satis..."
    ./rebuild-satis.sh
    echo "... done. Sleeping 60 seconds"
    sleep 60
done
