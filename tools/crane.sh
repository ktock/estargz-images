#!/bin/bash

set -eu -o pipefail

repo=ghcr.io/ktock

IMAGES=$(cat <<EOF
tomcat:10.0.0-jdk15-openjdk-buster-zstd
gcc:10.2.0-esgz
postgres:12-alpine-esgz
EOF
)

for i in $IMAGES ; do
    crane digest ${repo}/${i}
done
