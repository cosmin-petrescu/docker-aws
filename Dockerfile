FROM docker:stable
MAINTAINER Cosmin Petrescu <cosmin.petrescu@innobyte.com>

RUN apk update && apk --update upgrade
RUN apk add --update bash python3 python3-dev py3-pip unzip build-base ca-certificates wget nodejs
RUN pip3 install --upgrade pip
RUN pip3 install awscli
RUN wget -O /kubectl https://storage.googleapis.com/kubernetes-release/release/v1.14.0/bin/linux/amd64/kubectl && chmod +x /kubectl
