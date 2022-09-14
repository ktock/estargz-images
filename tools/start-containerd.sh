#!/bin/bash

set -euxo pipefail

containerd -v
containerd &

sleep 5

# we verify that it works
nerdctl run hello-world
