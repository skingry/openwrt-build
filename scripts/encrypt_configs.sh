#!/bin/bash

tar -cf - configs | gzip -c > configs.tgz
openssl enc -aes-256-cbc -in configs.tgz -out configs.tgz.enc
rm -rf configs.tgz
