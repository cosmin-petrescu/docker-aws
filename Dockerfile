FROM docker:stable
MAINTAINER Cosmin Petrescu <cosmin.petrescu@innobyte.com>

RUN apt-get update -y && \
    apt-get upgrade -y && \
    apt-get -y autoremove && \
    apt-get clean

RUN \
    apt-get update \
    && apt-get install -y --no-install-recommends \
    python \
    python-dev \
    python-pip \
    python-yaml \
    && apt-get clean

RUN pip install awscli

