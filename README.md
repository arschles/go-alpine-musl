# go-alpine-musl

[![Docker Repository on Quay](https://quay.io/repository/arschles/go-alpine-musl/status "Docker Repository on Quay")](https://quay.io/repository/arschles/go-alpine-musl)

This is the source for a Docker image that contains [Go](http://golang.org), the [musl](http://www.musl-libc.org) library, and other utilities on Alpine Linux and is configured to build Go programs.

See the image on [https://quay.io/repository/arschles/go-alpine-musl](Quay.io), and run it like so:

```bash
docker run --rm -v $GOPATH:/go -w /go/$YOUR_PROJECT quay.io/arschles/go-alpine-musl:latest
```

The build process laid out in this image is based on http://dominik.honnef.co/posts/2015/06/statically_compiled_go_programs__always__even_with_cgo__using_musl/
