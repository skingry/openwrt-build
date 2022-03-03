#!/bin/bash

DEVICE=$1

cd openwrt

if [ -L ".config" ]; then
  rm -rf .config
fi

ln -s ../configs/$DEVICE/device-config .config

if [ -L "files" ]; then
  rm -rf files
fi

ln -s ../configs/$DEVICE/files files
