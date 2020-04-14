docker create \
  --name=sync-putio \
  -v /mnt/media/media/downloads:/var/downloads \
  -v "$(pwd)/var/sync-putio:/etc/sync-putio" \
  --restart unless-stopped \
  twooster/sync-putio \
  -config /etc/sync-putio/config
