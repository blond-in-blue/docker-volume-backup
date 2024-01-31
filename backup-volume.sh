#!/bin/bash
mkdir -p backups
echo "Backing up volume \"$1\"..."
docker run --rm \
    --volume ${1}:/data \
    --volume $(pwd)/backups/:/backup \
    alpine tar cf /backup/${1}.tar /data
echo "Done."
