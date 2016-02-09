#!./dockerize.sh
FROM=wjordan/sharp
TAG=${TAG:-wjordan/image-resizer}
RUNDIR=/var/cache/dockerize
WORKDIR=/opt/image-resizer
CACHE=/var/cache/docker
EXPOSE=3001
VOLUME="${HOME}/.docker-cache:${CACHE} ${PWD}:${RUNDIR}:ro /tmp"
NODE_ENV=production
CMD="node index.js"
#!/bin/sh
ln -s ${CACHE}/npm /root/.npm

set -e

mkdir -p ${WORKDIR}
cp ./index.js ${WORKDIR}
cp ./package.json ${WORKDIR}
cd ${WORKDIR}

npm install --ignore-scripts
npm link sharp
rm -rf node_modules/image-resizer-wjordan/node_modules/sharp
npm install

# Clean up
# todo: use .npmignore file to remove this from npm package
rm -rf \
  ${WORKDIR}/node_modules/image-resizer-wjordan/test

rm /root/.npm
