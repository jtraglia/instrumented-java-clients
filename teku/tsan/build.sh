#!/bin/bash
set -eo pipefail

NAME=teku-tsan
docker build -t $NAME --progress=plain .
docker run -v $(readlink -f .):/logs/ -it --rm --name $NAME-instance $NAME --version
