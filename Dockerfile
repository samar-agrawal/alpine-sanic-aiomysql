FROM alpine:3.7

MAINTAINER me@sirius.io

RUN apk add --update \
    python3 \
    python3-dev \
    build-base \
    bash \
    coreutils \
    && rm -rf /var/cache/apk/*

RUN pip3 install sanic==0.7.0 aiomysql jinja2
