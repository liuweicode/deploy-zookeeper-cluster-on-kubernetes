#!/bin/bash

set -eux

docker build -t tp-zookeeper:3.7.1 -f Dockerfile .

docker images | grep 'tp-zookeeper'

IMAGETAG=$(docker images | grep 'tp-zookeeper' | head -n 1 | awk '{print $3}')

echo $IMAGETAG

docker tag $IMAGETAG toplist-registry.cn-shanghai.cr.aliyuncs.com/88/tp-zookeeper:3.7.1

docker push toplist-registry.cn-shanghai.cr.aliyuncs.com/88/tp-zookeeper:3.7.1
