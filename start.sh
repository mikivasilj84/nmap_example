#!/usr/bin/env bash

flag=false

while getopts :d option
do
    case "${option}" in
        d) flag=true
           ;;
    esac
done

if [[ "$flag" != true ]]; then
   docker-compose up
else
   docker-compose up -d
fi
 
