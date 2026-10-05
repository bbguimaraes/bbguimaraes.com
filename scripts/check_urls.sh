#!/usr/bin/env bash
set -euo pipefail

search() {
    rg \
        --only-matching --no-filename --no-line-number \
        --glob '!bbguimaraes.com/files/' \
        --glob '!bbguimaraes.com/random/' \
        '(href|src)="[^"]+?\.[^"]+?"' \
        -- bbguimaraes.com/
}

filter() {
    sed \
        --expression 's/^\(href\|src\)="//' \
        --expression 's/"$//' \
        --expression 's/#.*$//' \
        --expression '/^\(https\?\|mailto\):/d' \
        --expression '/\.\(html\|png\|jpg\|svg\|gif\|mkv\|mp4\|webm\)$/d' \
        --expression '/\.\(asc\|pdf\|ogg\|mscz\|c\|cpp\|lua\|s\|xml\)$/d' \
        --expression '/\?v=/d'
}

out=$(search | filter)
if [[ ! "$out" ]]; then
    exit 0
fi
echo >&2 'warning: these files do not have a version parameter in their URL:'
sort -u <<< $out
