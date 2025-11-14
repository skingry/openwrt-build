#!/bin/bash

openssl aes-256-cbc -d -a -pbkdf2 -in configs.tgz.enc -out configs.tgz
tar -xvzf configs.tgz
rm -rf configs.tgz

git clone https://github.com/openwrt/openwrt.git

cd openwrt

git checkout v24.10.4

./scripts/feeds update -a
./scripts/feeds install -a
