# [Dockerfile](https://registry.hub.docker.com/u/brendanyounger/image-resizer/) for image-resizer

Runs [image-resizer](https://github.com/jimmynicol/image-resizer).

## Usage

```bash
$ docker run -d --name image-server \
    -e AWS_ACCESS_KEY_ID=ABC123 \
    -e AWS_SECRET_ACCESS_KEY=ABCXYZ \
    -e AWS_REGION=us-east-1 \
    -e S3_BUCKET=my-bucket \
    brendanyounger/image-resizer
```

See the documentation for [image-resizer](https://github.com/jimmynicol/image-resizer) for additional environment variables.

## License

Licensed under [MIT](http://opensource.org/licenses/mit-license.html)
