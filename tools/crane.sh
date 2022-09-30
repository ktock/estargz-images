#!/bin/bash

set -eu -o pipefail

repo=ghcr.io/ktock

IMAGES=$(cat <<EOF
ubuntu:20.04
EOF
)

for i in $IMAGES ; do
    crane copy ${i} ${repo}/${i}-test
done
