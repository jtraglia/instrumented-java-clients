#!/bin/bash
set -eo pipefail

docker image tag besu-asan jtraglia/besu-asan
docker push jtraglia/besu-asan
