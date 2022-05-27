#!/bin/bash
set -eo pipefail

NAME=besu-asan
docker build -t $NAME --progress=plain .
docker run -v $(readlink -f .):/logs/ -it --rm --name $NAME-instance $NAME --version
