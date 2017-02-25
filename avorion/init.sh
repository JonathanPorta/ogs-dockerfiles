#!/bin/bash
set -e

# Wrap the executable
exec ./server.sh "$@"
