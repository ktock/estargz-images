#!/bin/bash

set -eu -o pipefail

repo=ghcr.io/stargz-containers

IMAGES=$(cat <<EOF
${repo}/ubuntu:22.04
${repo}/fedora:35-org
${repo}/rethinkdb:2.4.1-org
EOF
)

for i in $IMAGES ; do
    crane digest ${i}
done
