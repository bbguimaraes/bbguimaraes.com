#!/usr/bin/env bash
set -euo pipefail

t=${1+$(TZ=UTC date +%s --date "$1")}
d=$(TZ=UTC date --date "@$t" +%Y-%m-%dT%H:%M:%S)
printf 'date = {"%s", "%s"}\n' "$t" "$d"
