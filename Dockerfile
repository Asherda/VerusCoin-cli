FROM alpine:latest

RUN addgroup -S veruscoin && adduser -S -G veruscoin veruscoin \
  && mkdir -p /veruscoin/data \
  && chown veruscoin:veruscoin /veruscoin/data

VOLUME /veruscoin/data

RUN set -x \
  && apk add --no-cache --virtual .build-deps \
    autoconf \
    automake \
    boost-dev \
    bsdmainutils \
    build-base \
    curl \
    git \
    g++-multilib \
    libtool \
    libc6-dev \
    libcurl4-openssl-dev \
    linux-headers \
    m4 \
    ncurses-dev \
    pkg-config \
    python \
    python-zmq \
    tar \
    unzip \
    wget \
    zlib1g-dev

WORKDIR /veruscoin/data
USER veruscoin

CMD ["--help"]

