#!/usr/bin/env bash


#Container="radarr" && docker-compose pull $Container && docker-compose up --no-start $Container && docker-compose start $Container && docker logs -f $Container
#exit 0

#
#
#
function Start_Container() {
  local Container="${1}"

  echo 
  echo "${Container} is starting"

  sleep 1
  # Changed in ubuntu 20.04
  #docker-compose pull $Container && docker-compose up --no-start $Container && docker-compose start $Container
  docker compose pull $Container && docker compose up --no-start $Container && docker compose start $Container

  sleep 3
}

Container="npm"   # Nginx Proxy Manager
Start_Container ${Container}

Container="openvpn" # VPN - Duh
Start_Container ${Container}

Container="plex" # Media System
Start_Container ${Container}

Container="sabnzbd" # NZB Downloader
Start_Container ${Container}

Container="radarr" # Movies
Start_Container ${Container}

Container="sonarr" # TV
Start_Container ${Container}

Container="prowlarr" # Index Manager
Start_Container ${Container}

Container="transmission" # Bittorrent Downloader 
Start_Container ${Container}

Container="ombi" # Get suggestions and requests
Start_Container ${Container}

#Container="certbot" # Certbot
#Start_Container ${Container}

Container="bazarr" # subtitle collector
Start_Container ${Container}

  #
  # Lets run logs for a container when we're up
  #
  #Container="sabnzbd" && docker logs -f $Container
  #Container="npm" && docker logs -f $Container
