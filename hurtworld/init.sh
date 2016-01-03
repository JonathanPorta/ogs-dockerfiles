#!/bin/bash
set -e

# Wrap the executable
exec ./Hurtworld.x86 -batchmode -nographics "$@"
