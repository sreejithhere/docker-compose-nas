#!/usr/bin/bash

docker volume create -d local \
	-o type=none \
	-o o=bind \
	-o device=/home/sreejith/projects/data/smarttv/downloads \
	common_downloads

docker volume create -d local \
	-o type=none \
	-o o=bind \
	-o device=/home/sreejith/projects/data/smarttv/videos/tv \
	common_videos_tv
docker volume create -d local \
	-o type=none \
	-o o=bind \
	-o device=/home/sreejith/projects/data/smarttv/videos/movies \
	common_videos_movies
docker volume create -d local \
	-o type=none \
	-o o=bind \
	-o device=/home/sreejith/projects/data/smarttv/videos/others \
	common_videos_others
docker volume create -d local \
	-o type=none \
	-o o=bind \
	-o device=/home/sreejith/projects/data/smarttv/qbittorrent/config \
	qb_config
docker volume create -d local \
	-o type=none \
	-o o=bind \
	-o device=/home/sreejith/projects/data/smarttv/sonarr/config \
	sonarr_config
docker volume create -d local \
	-o type=none \
	-o o=bind \
	-o device=/home/sreejith/projects/data/smarttv/radarr/config \
	radarr_config
docker volume create -d local \
	-o type=none \
	-o o=bind \
	-o device=/home/sreejith/projects/data/smarttv/overseerr/config \
	overseerr_config
docker volume create -d local \
	-o type=none \
	-o o=bind \
	-o device=/home/sreejith/projects/data/smarttv/jackett/config \
	jackett_config
docker volume create -d local \
	-o type=none \
	-o o=bind \
	-o device=/home/sreejith/projects/data/smarttv/plex/config \
	plex_config
docker volume create -d local \
	-o type=none \
	-o o=bind \
	-o device=/home/sreejith/projects/data/smarttv/prowlarr/config \
	prowlarr_config

docker volume create -d local \
	-o type=none \
	-o o=bind \
	-o device=/home/sreejith/projects/data/smarttv/flaresolverr/config \
	flaresolverr_config

docker volume create -d local \
	-o type=none \
	-o o=bind \
	-o device=/home/sreejith/projects/data/smarttv/traefik/config \
	traefik_config
docker volume create -d local \
	-o type=none \
	-o o=bind \
	-o device=/home/sreejith/projects/data/smarttv/bazarr/config \
	bazarr_config
