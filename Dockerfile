FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y \
      bison \
      build-essential \
      clang \
      curl \
      file \
      flex \
      g++ \
      g++-multilib \
      gawk \
      gcc-multilib \
      gettext \
      git \
      libpcre3 \
      libpcre3-dev \
      libncurses5-dev \
      libssl-dev \
      python3-click \
      python3-click-log \
      python3-setuptools \
      rsync \
      subversion \
      sudo \
      swig \
      time \
      unzip \
      vim \
      wget \
      zlib1g-dev && \
    apt-get clean && \
    useradd -m openwrt-build && \
    echo 'openwrt-build ALL=NOPASSWD: ALL' > /etc/sudoers.d/openwrt-build

USER openwrt-build
WORKDIR /home/openwrt-build

