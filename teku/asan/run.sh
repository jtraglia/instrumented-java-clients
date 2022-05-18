#!/bin/bash
set -eo pipefail

docker build -t teku-asan --progress=plain .
docker run -it --rm --name teku-asan-instance teku-asan --version
