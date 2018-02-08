#!/bin/bash -e


compose_files="-f docker-compose.yml"

for arg in $*; do
    compose_files+=" -f docker-compose.${arg}.yml"
done

docker-compose ${compose_files} config | docker stack deploy --prune --compose-file - infra
