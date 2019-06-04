FROM docker:stable
MAINTAINER Cosmin Petrescu <cosmin.petrescu@innobyte.com>

RUN apk update && \
    apk upgrade

RUN apk add --update \
    python \
    python-dev \
    py-pip \
    build-base

RUN pip install awscli

