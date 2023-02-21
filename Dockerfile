FROM debian:10

RUN apt-get update && apt-get install -y wget
RUN wget https://downloads.plex.tv/plex-media-server-new/1.31.0.6654-02189b09f/debian/plexmediaserver_1.31.0.6654-02189b09f_amd64.deb
RUN dpkg -i plexmediaserver_1.31.0.6654-02189b09f_amd64.deb
RUN mv /usr/lib/plexmediaserver/Plex\ Media\ Server /usr/lib/plexmediaserver/Plex_Media_Server
RUN mkdir /opt/media-flex
RUN chmod 777 /opt/media-flex

EXPOSE 32400/tcp 3005/tcp 8324/tcp 32469/tcp 1900/udp 32410/udp 32412/udp 32413/udp 32414/udp

ENTRYPOINT ["/usr/lib/plexmediaserver/Plex_Media_Server"]