FROM golang:1.8.1-alpine

ENV MUSL_VERSION=1.1.16

# https://pkgs.alpinelinux.org/package/main/x86/build-base
RUN apk add --update-cache build-base tar && \
    rm -rf /var/cache/apk/*

RUN wget http://www.musl-libc.org/releases/musl-${MUSL_VERSION}.tar.gz && \
    tar -xvf musl-${MUSL_VERSION}.tar.gz && \
    cd musl-${MUSL_VERSION} && \
    ./configure && \
    make && \
    make install && \
    cd .. && \
    rm musl-${MUSL_VERSION}.tar.gz && \
    rm -Rf musl-${MUSL_VERSION}


CMD go build --ldflags '-linkmode external -extldflags "-static"'
