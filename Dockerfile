FROM alpine:3.6

MAINTAINER me@sirius.io

RUN apk add --update \
    python3 \
    python3-dev \
    build-base \
    bash \
    coreutils \
    && rm -rf /var/cache/apk/*

RUN pip3 install SANIC_NO_UVLOOP=true sanic==0.6.0 aiomysql jinja2
