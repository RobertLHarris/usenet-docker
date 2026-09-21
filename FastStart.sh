#!/usr/bin/env bash


#Container="radarr" && docker-compose pull $Container && docker-compose up --no-start $Container && docker-compose start $Container && docker logs -f $Container
#exit 0

#
#
#

cd ~/MediaRage

# Fix automount of Expeditor mount points
sudo service autofs restart

docker compose down

docker compose up -d


