# go-alpine-musl

[![Docker Repository on Quay](https://quay.io/repository/arschles/go-alpine-musl/status "Docker Repository on Quay")](https://quay.io/repository/arschles/go-alpine-musl)

This is the source for a Docker image that contains [Go](http://golang.org), the [musl](http://www.musl-libc.org) library, and other utilities on Alpine Linux and is configured to build Go programs.

See the image on [https://quay.io/repository/arschles/go-alpine-musl](Quay.io), and run it like so:

```bash
docker run --rm -v $GOPATH:/go -w /go/$YOUR_PROJECT go-alpine-musl:latest
```
