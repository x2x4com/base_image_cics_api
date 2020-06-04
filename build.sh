#!/bin/bash

t=$1
[[ "${t}x" == "x" ]] && echo "tag not define" && exit 1

cp -a ../../requirements.txt . && \
docker build . -t base_cics_api:${t} && \
docker tag base_cics_api:${t} x2x4com/base_cics_api:${t} && \
docker tag x2x4com/base_cics_api:${t} x2x4com/base_cics_api:latest && \
docker push x2x4com/base_cics_api:${t} && \
docker push x2x4com/base_cics_api:latest

