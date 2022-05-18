#!/bin/bash
set -eo pipefail

docker build -t teku-tsan --progress=plain .
docker run -it --rm --name teku-tsan-instance teku-tsan --version
