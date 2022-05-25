#!/bin/bash
set -eo pipefail

NAME=besu-asan
docker build --no-cache -t $NAME --progress=plain .
docker run -it --rm --name $NAME-instance $NAME --version
