FROM ubuntu:20.04

WORKDIR /mopidy

RUN apt-get update && \
    apt-get install -y gnupg wget python3-pip && \
    wget -q -O - https://apt.mopidy.com/mopidy.gpg | apt-key add - && \
    wget -q -O /etc/apt/sources.list.d/mopidy.list https://apt.mopidy.com/buster.list && \
    apt-get update && \
    apt-get install -y mopidy mopidy-spotify && \
    python3 -m pip install Mopidy-Iris

EXPOSE 6680

VOLUME /etc/mopidy/mopidy.conf

CMD mopidy
