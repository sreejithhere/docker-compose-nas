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
#docker volume create common_video_tv:/home/sreejith/projects/data/smarttv/videos/tv

#docker volume create common_video_movies:/home/sreejith/projects/data/smarttv/videos/movies

#docker volume create common_video_others:/home/sreejith/projects/data/smarttv/videos/others

#docker volume_create qb_config:/home/sreejith/projects/data/smarttv/qbittorrent/config

#docker volume create sonarr_config:/home/sreejith/projects/data/smarttv/sonarr_config

#docker volume create radarr_config:/home/sreejith/projects/data/smarttv/radarr_config

#docker volume create overseerr_config:/home/sreejith/projects/data/smarttv/overseerr_config
