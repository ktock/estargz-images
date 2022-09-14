#!/bin/bash

set -euo pipefail

version=0.23.0
fname=nerdctl-full-${version=}-linux-amd64.tar.gz
digest=2097ffb95c6ce3d847ca4882867297b5ab80e3daea6f967e96ce00cc636981b6
wget https://github.com/containerd/nerdctl/releases/download/v${version}/${fname=}  -O ${fname}
echo "${digest}  ${fname}" | sha256sum -c

tar Cxzvvf /usr/local ${fname}
