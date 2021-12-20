#!/bin/sh

# immediate exit if any command return a non-zero exit status
set -e

sed -ri "
  s/TCPAddr clamd/TCPAddr $CLAMDHOST/g; 
" /etc/clamd.conf

exec freshclam "$@"
