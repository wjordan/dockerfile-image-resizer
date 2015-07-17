#!/bin/bash

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
  fftw-dev

apk --update add --virtual run-dependencies \
  glib \
  libpng \
  libwebp \
  libexif \
  libxml2 \
  fftw \
  fftw-libs \
  orc-dev

apk --update add nodejs

npm install -g image-resizer-wjordan && \
  image-resizer new -f && \
  npm install

# Clean up
apk del build-dependencies
apk del dev-dependencies
rm -rf \
  /var/cache/apk/* \
  /usr/lib/node_modules/image-resizer-wjordan/* \
  /usr/local/share/gtk-doc/html/libvips/ \
  /usr/local/include/vips/
