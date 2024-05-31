#!/usr/bin/env bash
set -euo pipefail

t=$(date +%s)
d=$(TZ=UTC date --date "@$t" +%Y-%m-%dT%H:%M:%S)
printf 'date = {"%s", "%s"}\n' "$t" "$d"
