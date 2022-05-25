#!/bin/bash
set -eo pipefail

docker image tag teku-tsan jtraglia/teku-tsan
docker push jtraglia/teku-tsan
