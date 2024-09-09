FROM ghcr.io/linuxserver/baseimage-ubuntu:noble

RUN \
  echo "**** install runtime packages ****" && \
  apt-get update && \
  apt-get install -y \
    udev \
    wget \
    xfonts-utils fontconfig wget openssh-server \
    && \
  echo "**** install gwn ****" && \
  curl -o /tmp/gwn.tar.gz -L https://firmware.grandstream.com/GWN_Manager-1.1.28.27-Ubuntu.tar.gz \
  tar -xf /tmp/gwn.tar.gz -C /tmp/gwn \
  /tmp/gwn/install \
  apt-get clean && \
  rm -rf \
    /tmp/*

EXPOSE 8443/tcp 10014/tcp
