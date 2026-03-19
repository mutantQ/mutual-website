#!/bin/bash
# Extract the last frame of a video as a PNG image
# Usage: ./extract-last-frame.sh <video_path> [output_path]

if [ -z "$1" ]; then
  echo "Usage: $0 <video_path> [output_path]"
  exit 1
fi

VIDEO="$1"
OUTPUT="${2:-${VIDEO%.*}_lastframe.png}"

# Get duration, seek to near the end, grab 1 frame
DURATION=$(ffprobe -v error -show_entries format=duration -of csv=p=0 "$VIDEO")
ffmpeg -y -ss "$(echo "$DURATION - 0.05" | bc)" -i "$VIDEO" -frames:v 1 "$OUTPUT" 2>/dev/null

echo "Saved: $OUTPUT"
