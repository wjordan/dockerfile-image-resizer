# [Dockerfile](https://registry.hub.docker.com/u/wjordan/image-resizer/) for image-resizer

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
