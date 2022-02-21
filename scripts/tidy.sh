#!/bin/bash
set -euo pipefail

if [[ "$#" -eq 0 ]]; then
    set -- $(find \
        bbguimaraes.com/ \
        -path bbguimaraes.com/files -prune -o \( -type f -a -name '*.html' \) \
    )
fi
for f; do
    if ! out=$(tidy -quiet -errors "$f" 2>&1); then
        printf '%s\n%s\n' "$f" "$out"
    fi
done
