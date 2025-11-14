#!/bin/bash

openssl enc -d -aes-256-cbc -in configs.tgz.enc -out configs.tgz
tar -xzf configs.tgz
rm -rf configs.tgz

git clone https://github.com/openwrt/openwrt.git

cd openwrt

git checkout v24.10.4

./scripts/feeds update -a
./scripts/feeds install -a
