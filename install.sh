#!/bin/sh

set -e

apk add \
  --update \
  --repository https://s3.amazonaws.com/wjordan-apk \
  node-sharp

cd /opt/image-resizer/
rm -rf /var/cache/apk/*
npm install --ignore-scripts --production
npm link sharp
rm -rf node_modules/image-resizer-wjordan/node_modules/sharp
npm install --production
npm cache clean
npm rm -g npm
rm -rf node_modules/image-resizer-wjordan/test
