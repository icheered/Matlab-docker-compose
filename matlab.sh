#!/bin/bash
container_name="matlab";
running=0;
if [[ $(docker ps --format '{{.Names}}' | grep -E "^${container_name}\$") ]]; then running=1; else echo "Matlab not running"; fi

if [ $running -eq 0 ];
then
  echo Matlab not running, starting container
  docker-compose -f ~/Software/docker-compose.yml up -d matlab
fi
echo Starting browser
$BROWSER http://localhost:8888/index.html
