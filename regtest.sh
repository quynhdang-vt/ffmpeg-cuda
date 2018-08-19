#!/usr/bin/env bash

if [ $# -lt 2 ]; then
  echo "Usage $0 INPUTFILE OUTPUTFILE"
  exit 1
fi
INFILE=$1
OUTFILE=$2
MODE=nohw
if [ $# -ge 3 ]; then
   MODE=$3
fi
if [ "$MODE" == "hwaccel" ]; then
    set -x
    ffmpeg -hwaccel cuvid -i $INFILE -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" -vcodec h264_nvenc -threads 2 $OUTFILE
else
    set -x
    #ffmpeg -i $INFILE -c:v libx264 -c:a copy -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" -threads 2 $OUTFILE
    ffmpeg -i $INFILE -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" -vcodec libx264 -threads 2 $OUTFILE
fi
