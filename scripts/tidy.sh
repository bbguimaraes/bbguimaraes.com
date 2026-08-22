#!/bin/bash
set -euo pipefail

TIDY_ARGS=(
    -quiet
    -errors
    --warn-proprietary-attributes=no
)

filter() {
    grep --invert-match \
        --regexp 'Warning: <video> proprietary attribute "loading"' \
        --regexp 'Warning: <video> proprietary attribute "muted"' \
        || true
}

if [[ "$#" -eq 0 ]]; then
    set -- $(find \
        bbguimaraes.com/ \
        -path bbguimaraes.com/files -prune -o \( -type f -a -name '*.html' \) \
    )
fi
for f; do
    if ! out=$(tidy "${TIDY_ARGS[@]}" "$f" 2>&1); then
        echo "$f"
        filter <<< $out
    fi
done
