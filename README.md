# [Docker Image](https://registry.hub.docker.com/u/wjordan/image-resizer/) for [image-resizer](https://github.com/wjordan/image-resizer)
[![](https://badge.imagelayers.io/wjordan/image-resizer:latest.svg)](https://imagelayers.io/?images=wjordan/image-resizer:latest 'wjordan/image-resizer:latest')

Runs [image-resizer](https://github.com/wjordan/image-resizer) in Docker.

Depends on [wjordan/sharp](https://github.com/wjordan/docker-sharp).

## Usage

Run the Docker image, publish port 3001 and provide configuration via environment variables:

```bash
$ docker run --rm -ti \
  --name image-server \
  -p 3001:3001 \
  -e DEFAULT_SOURCE=wikipedia
  wjordan/image-resizer
```

You can also run as a daemon (replace `--rm -ti` with `-d`), then use `docker logs -f image-server` to watch the log output on-demand.

Request an image-resizer url from your browser, e.g., [`http://localhost:3001/h200-cfit/commons/c/c4/Louis_Armstrong2.jpg`](http://localhost:3001/h200-cfit/commons/c/c4/Louis_Armstrong2.jpg).

See the documentation for [image-resizer](https://github.com/wjordan/image-resizer) for additional environment variables and API usage.

## How to build

Just run `./image-resizer.docker.sh`.

Uses [dockerize](https://github.com/docker/docker/issues/14080#issuecomment-132841442) script instead of `docker build` to create the Docker image.

## License

Licensed under [MIT](http://opensource.org/licenses/mit-license.html)
