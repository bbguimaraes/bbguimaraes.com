#!/bin/bash
set -euo pipefail

gcc \
    -std=c18 -S -masm=intel -O2 \
    -fno-stack-protector -fno-asynchronous-unwind-tables \
    -o - \
    "$@" \
    | c++filt
