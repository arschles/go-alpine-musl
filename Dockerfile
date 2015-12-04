FROM golang:1.5.1-alpine


# https://pkgs.alpinelinux.org/package/main/x86/build-base
RUN apk add --update-cache build-base musl-dev musl-utils tar sudo

RUN wget http://www.musl-libc.org/releases/musl-1.1.10.tar.gz && tar -xvf musl-1.1.10.tar.gz && cd musl-1.1.10 && ./configure && make && sudo make install && cd .. && rm musl-1.1.10.tar.gz && rm -Rf musl-1.1.10 && rm -Rf musl.1.1.10 && rm -Rf musl.1.1.10

RUN rm -rf /var/cache/apk/*

ENV GO15VENDOREXPERIMENT=1

CMD go build --ldflags '-linkmode external -extldflags "-static"'
