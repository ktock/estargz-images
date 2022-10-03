#!/bin/bash

set -eux -o pipefail

repo=ghcr.io/ktock

# IMAGES=$(cat <<EOF
# ubuntu:20.04
# EOF
# )
# for i in $IMAGES ; do
# done

crane copy --platform=linux/amd64 ubuntu:20.04 ${repo}/ubuntutest:1-test || true
crane copy --platform=linux/amd64 ubuntu:20.04 ${repo}/estargz-images/ubuntutest:1-test || true
