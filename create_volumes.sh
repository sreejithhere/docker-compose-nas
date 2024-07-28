#!/usr/bin/bash

# Set the base folder to default value
base_data_folder=/data

# See if the Base data folder is provided as an argument

while getopts :d: options
do
case "$options" in
	d)
		base_data_folder=$OPTARG
		echo "Setting custom base data folder to $base_data_folder"
		;;
esac
done

echo "Data folder is $base_data_folder"

common_downloads=${base_data_folder}/downloads
common_videos_tv=${base_data_folder}/videos/tv
common_videos_movies=${base_data_folder}/videos/movies
common_videos_others=${base_data_folder}/videos/others
qb_config=${base_data_folder}/qbittorrent/config
sonarr_config=${base_data_folder}/sonarr/config
radarr_config=${base_data_folder}/radarr/config
overseerr_config=${base_data_folder}/overseerr/config
jackett_config=${base_data_folder}/jackett/config
plex_config=${base_data_folder}/plex/config
prowlarr_config=${base_data_folder}/prowlarr/config
flaresolverr_config=${base_data_folder}/flaresolverr/config
traefik_config=${base_data_folder}/traefik/config
bazarr_config=${base_data_folder}/bazarr/config
homepage_config=${base_data_folder}/homepage/config


docker volume create -d local \
	-o type=none \
	-o o=bind \
	-o device=${base_data_folder} \
	common_data

echo "Creating $common_downloads"
mkdir -p $common_downloads && \
	docker volume create -d local \
		-o type=none \
		-o o=bind \
		-o device=${base_data_folder}/downloads \
		common_downloads


echo "Creating $common_videos_tv"
mkdir -p $common_videos_tv && \
	docker volume create -d local \
		-o type=none \
		-o o=bind \
		-o device=${base_data_folder}/videos/tv \
		common_videos_tv

echo "Creating $common_videos_movies"
mkdir -p $common_videos_movies && \
	docker volume create -d local \
		-o type=none \
		-o o=bind \
		-o device=${base_data_folder}/videos/movies \
		common_videos_movies

echo "Creating $common_videos_others"
mkdir -p $common_videos_others && \
	docker volume create -d local \
		-o type=none \
		-o o=bind \
		-o device=${base_data_folder}/videos/others \
		common_videos_others

echo "Creating $qb_config"
mkdir -p $qb_config && \
	docker volume create -d local \
		-o type=none \
		-o o=bind \
		-o device=${base_data_folder}/qbittorrent/config \
		qb_config

echo "Creating $sonarr_config"
mkdir -p $sonarr_config && \
	docker volume create -d local \
		-o type=none \
		-o o=bind \
		-o device=${base_data_folder}/sonarr/config \
		sonarr_config

echo "Creating $radarr_config"
mkdir -p $radarr_config &&  \
	docker volume create -d local \
		-o type=none \
		-o o=bind \
		-o device=${base_data_folder}/radarr/config \
		radarr_config

echo "Creating $overseerr_config"
mkdir -p $overseerr_config && \
	docker volume create -d local \
		-o type=none \
		-o o=bind \
		-o device=${base_data_folder}/overseerr/config \
		overseerr_config

echo "Creating $jackett_config"
mkdir -p $jackett_config && \
	docker volume create -d local \
		-o type=none \
		-o o=bind \
		-o device=${base_data_folder}/jackett/config \
		jackett_config

echo "Creating $plex_config"
mkdir -p $plex_config && \
	docker volume create -d local \
		-o type=none \
		-o o=bind \
		-o device=${base_data_folder}/plex/config \
		plex_config

echo "Creating $prowlarr_config"
mkdir -p $prowlarr_config && \
	docker volume create -d local \
		-o type=none \
		-o o=bind \
		-o device=${base_data_folder}/prowlarr/config \
		prowlarr_config

echo "Creating $flaresolverr_config"
mkdir -p $flaresolverr_config && \
	docker volume create -d local \
		-o type=none \
		-o o=bind \
		-o device=${base_data_folder}/flaresolverr/config \
		flaresolverr_config

echo "Creating $traefik_config"
mkdir -p $traefik_config && \
	docker volume create -d local \
		-o type=none \
		-o o=bind \
		-o device=${base_data_folder}/traefik/config \
		traefik_config

echo "Creating $bazarr_config"
mkdir -p $bazarr_config && \
	docker volume create -d local \
		-o type=none \
		-o o=bind \
		-o device=${base_data_folder}/bazarr/config \
		bazarr_config

echo "Creating $homepage_config"
mkdir -p $homepage_config && \
	docker volume create -d local \
		-o type=none \
		-o o=bind \
		-o device=${base_data_folder}/homepage/config \
		homepage_config
