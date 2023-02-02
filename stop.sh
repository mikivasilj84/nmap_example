#!/usr/bin/env bash

docker-compose down
 
if [ $? -ne 0 ]; then
    echo "Docker-compose nije uspijesno ugasen. Nasilno brisanje kontejnera"
    docker-compose kill
fi
