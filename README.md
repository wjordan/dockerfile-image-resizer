# [Dockerfile](https://registry.hub.docker.com/u/wjordan/image-resizer/) for [image-resizer](https://github.com/wjordan/image-resizer)
[![](https://badge.imagelayers.io/wjordan/image-resizer:latest.svg)](https://imagelayers.io/?images=wjordan/image-resizer:latest 'wjordan/image-resizer:latest')

Runs [image-resizer](https://github.com/wjordan/image-resizer).

## Usage

```bash
$ docker run -d --name image-server \
    -e EXTERNAL_SOURCE_IMAGES=http://example.com/images/ \
    wjordan/image-resizer
```

See the documentation for [image-resizer](https://github.com/wjordan/image-resizer) for additional environment variables.

## License

Licensed under [MIT](http://opensource.org/licenses/mit-license.html)
