#!/bin/bash
mkdir -p backups
for VOLUME in $(docker volume ls -q); do
    echo "Backing up volume \"$VOLUME\"..."
    docker run --rm \
        --volume ${VOLUME}:/data \
        --volume $(pwd)/backups/:/backup \
        alpine tar cf /backup/${VOLUME}.tar /data
done
echo "Done."
