#!/bin/bash
set -eo pipefail

docker build -t besu-tsan --progress=plain .
docker run -it --rm --name besu-tsan-instance besu-tsan --version
