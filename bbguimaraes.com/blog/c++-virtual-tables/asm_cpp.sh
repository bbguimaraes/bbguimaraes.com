#!/bin/bash
set -euo pipefail

g++ \
    -std=c++20 -S -masm=intel -O2 \
    -fno-exceptions -fno-rtti -fno-stack-protector \
    -fno-asynchronous-unwind-tables \
    -o - \
    "$@" \
    | c++filt
