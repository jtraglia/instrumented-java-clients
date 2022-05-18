#!/bin/bash
set -eo pipefail

docker build -t besu-asan --progress=plain .
docker run -it --rm --name besu-asan-instance besu-asan --version
