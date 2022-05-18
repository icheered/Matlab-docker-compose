#!/bin/bash
echo "Setting directories correctly"
sed -i "s|^  docker-compose.*|  docker-compose -f $PWD/docker-compose.yml up -d matlab|" matlab.sh


