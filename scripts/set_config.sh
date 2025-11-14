#!/bin/bash

DEVICE=$1

if [ -d "configs/$DEVICE" ]; then
  cd openwrt

  if [ -L ".config" ]; then
    rm -rf .config
    ln -s ../configs/$DEVICE/device-config .config
  fi

  if [ -L "files" ]; then
    rm -rf files
    ln -s ../configs/$DEVICE/files files
  fi
fi
