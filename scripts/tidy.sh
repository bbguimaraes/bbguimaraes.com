#!/bin/bash
set -euo pipefail

for f in $(find \
    bbguimaraes.com/ \
    -path bbguimaraes.com/files -prune -o \( -type f -a -name '*.html' \) \
); do
    if ! out=$(tidy -quiet -errors "$f" 2>&1); then
        printf '%s\n%s\n' "$f" "$out"
    fi
done
