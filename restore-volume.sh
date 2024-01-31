#!/bin/bash
filename=$(basename -- "$1")
volume_name="${filename%.*}"

echo "Restoring volume \"$volume_name\" from \"$1\"..."
docker run --rm \
    --volume $volume_name:/data \
    --volume $(pwd):/backup \
    alpine tar xf /backup/$1 -C /data --strip 1
echo "Volume \"$volume_name\" successully restored."
