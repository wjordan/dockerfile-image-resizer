FROM alpine:edge
WORKDIR /opt/image-resizer
COPY ./package.json /opt/image-resizer/
RUN apk add \
  --update \
  --repository https://s3.amazonaws.com/wjordan-apk \
  --allow-untrusted \
  node-sharp && \
  rm -rf /var/cache/apk/* && \
  npm install --ignore-scripts --production && \
  npm link sharp && \
  rm -rf node_modules/image-resizer-wjordan/node_modules/sharp && \
  npm install --production && \
  npm cache clean && \
  npm rm -g npm && \
  rm -rf node_modules/image-resizer-wjordan/test

ENV NODE_ENV=production
COPY ./index.js /opt/image-resizer/
EXPOSE 3001
CMD ["node", "index.js"]
