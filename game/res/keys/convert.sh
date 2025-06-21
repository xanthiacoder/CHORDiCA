#!/bin/bash

for file in *.mp3; do
    [ -e "$file" ] || continue

    base="${file%.mp3}"
    ffmpeg -i "$file" -c:a libvorbis "${base}.ogg"
done
