FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update

RUN apt install -y \
    bison \
    build-essential \
    clang \
    expat \
    file \
    flex \
    g++ \
    g++-multilib \
    gawk \
    gcc-multilib \
    gdb \
    gettext \
    git \
    libgmp-dev \
    libmpc-dev \
    libmpfr-dev \
    libncurses5-dev \
    libpython3-dev \
    libssl-dev \
    python3-setuptools \
    rsync \
    sudo \
    swig \
    texinfo \
    unzip \
    wget \
    zlib1g-dev

RUN apt-get clean

RUN chsh -s /bin/bash ubuntu
COPY files/sudoers.d-ubuntu /etc/sudoers.d/ubuntu

USER ubuntu
WORKDIR /home/ubuntu
