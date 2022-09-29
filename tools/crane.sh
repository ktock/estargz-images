#!/bin/bash

set -eu -o pipefail

repo=ghcr.io/ktock

IMAGES=$(cat <<EOF
tomcat:10.0.0-jdk15-openjdk-buster-zstd
gcc:10.2.0-esgz
ipfs/ipfs-cluster:v0.14.2
postgres:12-alpine-esgz
python:3.9-zstdchunked
pause:3.6
nerdctl-ipfs-registry:bb682bc
rabbitmq:3.9.4-zstdchunked
elasticsearch:7.14.0-zstdchunked
jenkins:2.60.3-esgz
rethinkdb:2.3.6-esgz
ubuntu:20.04-ipfs
golangci-lint:v1.40.1-esgz
argoproj-argoexec:v3.0.3-org
alpine:3.10.2-zstdchunked
stargz-snapshotter:v0.6.4-dev
golang:1.18-buster-prioritized-libs-esgz
gosec:v2.8.0-esgz
argoproj-workflow-controller:v3.0.3-esgz
EOF
)

for i in $IMAGES ; do
    crane digest ${repo}/${i}
done
