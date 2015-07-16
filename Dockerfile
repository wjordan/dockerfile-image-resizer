FROM wjordan/libvips
MAINTAINER Will Jordan <will.jordan@gmail.com>

WORKDIR /image-server

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y curl build-essential && \
    curl -sL https://deb.nodesource.com/setup_iojs_2.x | bash - && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y iojs && \
    npm install -g image-resizer-wjordan && \
    image-resizer new && \
    npm install

RUN apt-get remove -y curl build-essential && \
    apt-get autoremove -y && \
    apt-get autoclean && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV NODE_ENV=production

EXPOSE 3001

ENTRYPOINT nodejs index.js
