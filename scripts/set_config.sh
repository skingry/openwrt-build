#!/bin/bash

DEVICE=$1

if [ -d "configs/$DEVICE" ]; then
  cd openwrt

  rm -rf .config
  ln -s ../configs/$DEVICE/device-config .config

  rm -rf files
  ln -s ../configs/$DEVICE/files files
fi
