#!/bin/bash

set -e

# Install dependencies
apk --update add --virtual build-dependencies \
  gcc g++ make libc-dev \
  python

apk --update add --virtual dev-dependencies \
  glib-dev \
  libpng-dev \
  libwebp-dev \
  libexif-dev \
  libxml2-dev \
  orc-dev

apk --update add --virtual run-dependencies \
  glib \
  libpng \
  libwebp \
  libexif \
  libxml2 \
  orc

apk --update add nodejs

npm install -g image-resizer-wjordan && \
  image-resizer new -f && \
  npm install --production

# Clean up
npm cache clean
npm rm -g image-resizer-wjordan npm
apk del build-dependencies
apk del dev-dependencies
rm -rf \
  /var/cache/apk/* \
  ${HOME}/.node-gyp/* \
  /tmp/*
