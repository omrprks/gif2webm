#!/usr/bin/env sh

function error {
  echo "Error: $1" >&2
  exit 1
}

[[ ! -x "$(command -v ffmpeg)" ]] && error "ffmpeg is required"
[[ ! -f "$1" ]] && error "No such file"

OUT_FILE=${1/.gif/.webm}

ffmpeg -i $1 -c vp9 -b:v 0 -crf 41 $OUT_FILE
