#!/bin/bash

for file in *.wav; do
    [ -e "$file" ] || continue

    base="${file%.wav}"
    ffmpeg -i "$file" -c:a libvorbis "${base}.ogg"
done
