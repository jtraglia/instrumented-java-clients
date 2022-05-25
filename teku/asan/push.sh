#!/bin/bash
set -eo pipefail

docker image tag teku-asan jtraglia/teku-asan
docker push jtraglia/teku-asan
