#!/bin/bash

LOG_FILE=/logs/teku_tsan_$(date "+%F-%T").log
exec > >(tee $LOG_FILE) 2>&1
./build/install/teku/bin/teku $@
