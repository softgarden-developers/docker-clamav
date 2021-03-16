#!/bin/sh

# immediate exit if any command return a non-zero exit status
set -e

while true; 
do
    cvd update
    sleep 1800
done

