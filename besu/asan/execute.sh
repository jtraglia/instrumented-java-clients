#!/bin/bash

LOG_FILE=/logs/besu_asan_$(date "+%F-%T").log
exec > >(tee $LOG_FILE) 2>&1
./build/install/besu/bin/besu $@
