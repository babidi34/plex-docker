mkdir config
mkdir data

docker build -t debian-plex .

docker run -tid --name plex \
-v "$(pwd)"/config:/root/Library/Application\ Support/Plex\ Media\ Server/ \
-v "$(pwd)"/data:/opt/media-flex \
-p 32400:32400/tcp \
-p 3005:3005/tcp \
-p 8324:8324/tcp \
-p 32469:32469/tcp \
-p 1900:1900/udp \
-p 32410:32410/udp \
-p 32412:32412/udp \
-p 32413:32413/udp \
-p 32414:32414/udp \
debian-plex
 