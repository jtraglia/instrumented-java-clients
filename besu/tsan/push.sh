#!/bin/bash
set -eo pipefail

docker image tag besu-tsan jtraglia/besu-tsan
docker push jtraglia/besu-tsan
