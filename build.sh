#!/usr/bin/env bash

docker build -t docker-aws .
docker tag docker-aws:latest cosminpetrescu/docker-aws:latest
docker push cosminpetrescu/docker-aws:latest
