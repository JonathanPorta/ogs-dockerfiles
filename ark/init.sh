#!/bin/bash
set -e

# Wrap the executable
exec /srv/ShooterGame/Binaries/Linux/ShooterGameServer "$@"
