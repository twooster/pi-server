docker pull linuxserver/jellyfin
docker create --name=jellyfin \
  -e PUID=$( id -u plex ) \
  -e PGID=$( id -g plex ) \
  -e TZ=Europe/Berlin \
  -p 8096:8096 \
  -p 8920:8920 `#optional` \
  -v /mnt/media/server/var/jellyfin:/config \
  -v /mnt/media/media:/data \
  --device /dev/vchiq:/dev/vchiq \
  --device /dev/vc-mem:/dev/vc-mem `#optional` \
  --device /dev/vchiq:/dev/vchiq `#optional` \
  --device /dev/video10:/dev/video10 `#optional` \
  --device /dev/video11:/dev/video11 `#optional` \
  --device /dev/video12:/dev/video12 `#optional` \
  --restart unless-stopped \
  linuxserver/jellyfin
