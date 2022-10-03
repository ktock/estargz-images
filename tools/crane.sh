#!/bin/bash

set -eu -o pipefail

repo=ghcr.io/ktock

IMAGES=$(cat <<EOF
ubuntu:20.04
EOF
)

for i in $IMAGES ; do
    crane copy --platform=linux/amd64 ${i} ${repo}/${i}-test
    crane copy --platform=linux/amd64 ${i} ${repo}/estargz-images/${i}-test
done
