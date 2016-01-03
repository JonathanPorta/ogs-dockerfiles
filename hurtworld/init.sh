#!/bin/bash
set -e

# Wrap the executable
exec ./Hurtworld.x86_64 -batchmode -nographics "$@"
#exec ./Hurtworld.x86_64 -batchmode -nographics -exec "host 12871;queryport 12881;servername My New Server;addadmin <My Steam ID>" -logfile "/logs/gamelog.txt"
