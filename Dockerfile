FROM cm2network/steamcmd:steam

USER root

RUN dpkg --add-architecture i386
RUN apt update && apt install -y libtcmalloc-minimal4:i386
RUN apt-get update
RUN apt-get install -y software-properties-common
RUN sed -i "/^# deb.*multiverse/ s/^# //" /etc/apt/sources.list
RUN sed -i "/^# deb.*universe/ s/^# //" /etc/apt/sources.list
RUN apt update
RUN apt install lib32gcc1 # steamcmd 

USER steam

