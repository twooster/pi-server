docker pull linuxserver/pyload
docker create \
  --name=pyload \
  -e PUID=$( id -u plex ) \
  -e PGID=$( id -g plex ) \
  -e TZ=Europe/Berlin \
  -p 9000:8000 \
  `#-p 7227:7227 #optional` \
  -v /mnt/media/server/var/pyload:/config \
  -v /mnt/media/media/downloads:/downloads \
  --restart unless-stopped \
  linuxserver/pyload
