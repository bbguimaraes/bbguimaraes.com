#!/usr/bin/env bash
set -euo pipefail

t=$(TZ=UTC date +%s --date "${1-now}")
d=$(TZ=UTC date --date "@$t" +%Y-%m-%dT%H:%M:%S)
printf 'timestamp = { %d, "%s" }\n' "$t" "$d"
