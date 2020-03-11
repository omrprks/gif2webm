#!/usr/bin/env bash

IN_FILE=$1
OUT_FILE=${IN_FILE/.gif/.webm}

ffmpeg -i $IN_FILE -c vp9 -b:v 0 -crf 41 $OUT_FILE
