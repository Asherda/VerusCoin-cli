FROM alpine:latest

RUN addgroup -S veruscoin && adduser -S -G veruscoin veruscoin \
  && mkdir -p /veruscoin/data \
  && chown veruscoin:veruscoin /veruscoin/data

VOLUME /veruscoin/data

RUN set -x \
  && apk add --no-cache \
    autoconf \
    automake \
    boost-dev \
    boost \
    boost-program_options \
    libgomp \
    build-base \
    cargo \
    chrpath \
    curl \
    file \
    git \
    libtool \
    linux-headers \
    m4 \
    musl-dev \
    ncurses-dev \
    openssl \
    openssl-dev \
    pkgconfig \
    tar \
    unzip \
    wget \
    zlib-dev

WORKDIR /veruscoin/data
USER veruscoin

CMD ["--help"]

