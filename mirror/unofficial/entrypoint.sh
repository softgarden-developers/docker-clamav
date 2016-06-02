#!/bin/sh

# immediate exit if any command return a non-zero exit status
set -e

while true; 
do
    clamav-unofficial-sigs.sh -v
    sleep 3600
done

