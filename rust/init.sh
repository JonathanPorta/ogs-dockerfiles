#!/bin/bash
set -e

# Wrap the executable
exec ./RustDedicated -batchmode "$@"
