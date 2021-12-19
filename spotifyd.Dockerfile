FROM arm32v7/ubuntu:latest

RUN apt-get update && \
    apt-get install -y wget alsa-utils && \
    wget https://github.com/Spotifyd/spotifyd/releases/download/v0.3.3/spotifyd-linux-armv6-slim.tar.gz && \
    tar -zxv -C /usr/local/bin -f spotifyd-linux-armv6-slim.tar.gz && \
    rm spotifyd-linux-armv6-slim.tar.gz

CMD spotifyd --no-daemon
