#!/usr/bin/env bash

container_id=$(docker ps | grep kali | awk '{print $1}')

docker exec -i -t $container_id /bin/bash
