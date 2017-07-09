#!/bin/sh

set -e

apk add \
  --update \
  --repository http://dl-4.alpinelinux.org/alpine/edge/testing \
  --repository https://s3.amazonaws.com/wjordan-apk \
  node-sharp \
  nodejs-npm

cd /opt/image-resizer/
rm -rf /var/cache/apk/*
npm install --ignore-scripts --production
npm link sharp
rm -rf node_modules/image-resizer-wjordan/node_modules/sharp
npm install --production
npm cache clean
apk del --purge nodejs-npm
rm -rf node_modules/image-resizer-wjordan/test
