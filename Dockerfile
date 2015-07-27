FROM wjordan/libvips
MAINTAINER Will Jordan <will.jordan@gmail.com>

WORKDIR /image-server

ADD image-resizer.sh /image-server/
RUN ./image-resizer.sh && rm image-resizer.sh

ENV NODE_ENV=production

EXPOSE 3001

CMD ["node", "index.js"]
