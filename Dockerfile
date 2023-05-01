FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y \
      build-essential \
      ccache \
      curl \
      ecj \
      fastjar \
      file \
      g++ \
      gawk \
      gettext \
      git \
      java-propose-classpath \
      libelf-dev \
      libip4tc-dev \
      libncurses5-dev \
      libncursesw5-dev \
      libssl-dev \
      python2.7-dev \
      python3 \
      python3-distutils \
      python3-setuptools \
      rsync \
      subversion \
      sudo \
      swig \
      time \
      unzip \
      vim \
      wget \
      xsltproc \
      zlib1g-dev && \
    apt-get clean && \
    useradd -m openwrt-build && \
    echo 'openwrt-build ALL=NOPASSWD: ALL' > /etc/sudoers.d/openwrt-build

USER openwrt-build
WORKDIR /home/openwrt-build

